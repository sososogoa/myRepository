# 헝픽
## 프로젝트 소개
* 작업일자 : 2021.12.27 ~ 2022.02.25
* 시작 기획은 패스트푸드를 '다나와' 사이트와 같이 제품을 비교하며 구매를 중개할 수 있는 사이트를 기획했으나 배달 앱의 연동과 실시간 결제 등 구현에 어려움이 있어 기획을 변경하였습니다. 해당 사이트에는 각종 브랜드의 제품들이 나열되어있고 인증이 완료된 사용자가 해당 제품에 대한 리뷰를 남기면 관리자는 승인 및 거절을 할 수 있습니다. 리뷰가 승인되면 사용자에게 포인트가 지급됩니다. 지급된 포인트로 사이트에서 기프티콘(실제로 발행하는 기프티콘이 아님)을 교환할 수 있습니다. 이외에 관리자의 공지사항, 관리자와 사용자의 Q&A 게시판 등이 있습니다.
## 빌드 전 테이블 생성과 임시 데이터 생성
* Table.sql과 TemporaryData.sql을 통해 테이블과 초기에 필요한 임시 데이터를 생성할 수 있습니다
# 오픈 소스
* 해당 기능들은 오픈 소스를 이용하였습니다.

* 이메일 인증
  * email-context.xml
	<bean id="mailSender" class="org.springframework.mail.javamail.JavaMailSenderImpl">
        <property name="port" value="587" />
        <property name="username" value="" />
        <property name="password" value="" />
        <property name="defaultEncoding" value="UTF-8" />
        <property name="javaMailProperties">
            <props>
            	<prop key="mail.smtp.host">smtp.gmail.com</prop>
                <prop key="mail.smtp.starttls.enable">true</prop>
                <prop key="mail.smtp.auth">true</prop>
                <prop key="mail.smtp.debug">true</prop>
            </props>
        </property>
    </bean>
AjaxController.java
	@RequestMapping("sendEmail.do")
	@ResponseBody
	public String sendEmail(@ModelAttribute("mail") String mail) throws Exception {
		JSONObject jsonObj = new JSONObject();
		Random random = new Random();
		String key = "";

		SimpleMailMessage message = new SimpleMailMessage();

		message.setTo(mail);
		
		int numIndex = random.nextInt(899999) + 100000;
		key += numIndex;

		message.setSubject("인증번호 입력을 위한 메일 전송");
		message.setText("인증 번호 : " + key);

		mailSender.send(message);

		jsonObj.put("key", key);
		String jsonOut = jsonObj.toString();
		return jsonOut;
	}
* 문자메시지 인증
  * UserServiceImpl.java
	public void certifiedPhoneNumber(String userPhoneNumber, String key) { 
		String api_key = ""; 
		String api_secret = "";
		Message coolsms = new Message(api_key, api_secret); 
		HashMap<String, String> params = new HashMap<String, String>(); 
		params.put("to", userPhoneNumber); // 수신전화번호 
		params.put("from", ""); // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨 
		params.put("type", "SMS"); 
		params.put("text", "인증번호는" + "["+key+"]" + "입니다."); 
		//문자 내용 입력 
		params.put("app_version", "test app 1.2"); 
		// application name and version 
		try { 
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString()); 
		} catch (CoolsmsException e) { 
			System.out.println(e.getMessage()); 
			System.out.println(e.getCode()); 
		} 
	}
	
* 파일업로드
  * AjaxController.java
	@RequestMapping("fileUpload.do")
	public void fileUpload(@RequestParam("uploadFile") MultipartFile uploadFile, @RequestParam("filePath") String filePath, HttpServletResponse response) throws IOException {
		
		// 서버상의 경로 설정
		String realPath = sc.getRealPath("/resources/images/" + filePath);
		
		// 원본 파일명
		String fileName = uploadFile.getOriginalFilename();
		
		// 파일의 크기
		byte bytes[] = uploadFile.getBytes();
		
        if ( ! new File(realPath).exists()) {
            new File(realPath).mkdirs();
        }
		
		// UUID 설정
		final String uuid = UUID.randomUUID().toString().replace("-", "");
		fileName = uuid + "_" + fileName;
		
		// 파일 생성
		File file = new File(realPath, fileName);
		FileCopyUtils.copy(bytes, file);

		// ajax 데이터 수신용
		response.getWriter().print(fileName);
	}
