INSERT ALL
  INTO MEMBERS VALUES ('1', 'user1', '12341234', '사용자1', '닉네임1','user1@naver.com', '01012341234', SYSDATE, 0)
  INTO MEMBERS VALUES ('2', 'user2', '12341234', '사용자2', '닉네임2','user2@naver.com', '01043214321', SYSDATE, 0)
  INTO MEMBERS VALUES ('3', 'user3', '12341234', '사용자3', '닉네임3','user3@naver.com', '01056785678', SYSDATE, 0)
SELECT * FROM DUAL;

INSERT ALL
  INTO ADMINS VALUES ('1', 'admin1', '12341234', '관리자1')
  INTO ADMINS VALUES ('2', 'admin2', '12341234', '관리자2')
SELECT * FROM DUAL;

INSERT ALL
  INTO BRAND VALUES ('1', '맥도날드', 'images/brand/맥도날드.png','미국 일리노이주 시카고에서 탄생한 대표적인 다국적 패스트푸드 프랜차이즈. 패스트푸드 햄버거의 대명사', 'https://www.mcdonalds.co.kr')
  INTO BRAND VALUES ('2', '롯데리아', 'images/brand/롯데리아.png','대한민국 최초의 햄버거 프랜차이즈. 롯데GRS에서 운영하고 있으며 업무는 햄버거사업부가 맡는다.', 'https://www.lotteria.com')
  INTO BRAND VALUES ('3', 'KFC', 'images/brand/KFC.png','KFC는 프라이드 치킨을 주력으로 하는 미국의 패스트푸드 음식점으로, 이름은 켄터키 프라이드 치킨(Kentucky Fried Chicken의 약자이다. 본사는 이름에서 알 수 있듯 미국 켄터키 주의 루이빌에 있다.', 'https://www.kfckorea.com/')
  INTO BRAND VALUES ('4', '버거킹', 'images/brand/버거킹.png','버거킹(Burger King)은 미국에서 탄생한 세계적인 패스트푸드 프랜차이즈 가운데 하나로, 햄버거를 중심 메뉴로 하는 음식점', 'https://www.burgerking.co.kr/#/home')
  INTO BRAND VALUES ('5', '맘스터치', 'images/brand/맘스터치.png','대한민국의 버거 및 치킨 브랜드.', 'https://www.momstouch.co.kr/')
  INTO BRAND VALUES ('6', '노브랜드버거', 'images/brand/노브랜드버거.png','신세계푸드 계열의 햄버거 브랜드이며 약칭은 NBB다. 이름의 어원은 이마트 PB상품군 중 가격 중시형 브랜드인 노브랜드이다.', 'https://www.shinsegaefood.com/nobrandburger/index.sf')
SELECT *
FROM DUAL;


INSERT ALL
    INTO MENU VALUES ('1', '1', '빅맥', 'images/menu/빅맥.png', 4600, 
    '100% 순 쇠고기 패티 두 장에 빅맥®만의 특별한 소스.
    입안에서 살살 녹는 치즈와 신선한 양상추, 양파, 그리고 피클까지.
    50년 넘게 전 세계인의 입맛을 사로 잡은 버거의 대명사.', '쇠고기')
    INTO MENU VALUES ('1', '2', '1955버거', 'images/menu/1955버거.png', 5700, 
    '113g 두툼한 순 쇠고기 패티,
    특별한 1955 소스에 깊은 풍미의 그릴드 어니언까지!
    맥도날드가 처음 생긴 1955년의 맛을 담은
    영원한 오리지널 1955 버거', '쇠고기')
    INTO MENU VALUES ('1', '3', '맥스파이시상하이버거', 'images/menu/맥스파이시상하이버거.png', 4600, 
    '매콤한 시즈닝을 입힌 100% 닭가슴 통살 위에
    아삭아삭한 양상추와 신선한 토마토~
    겉은 바삭, 속은 부드러운 치킨 패티의 매콤함으로
    입맛도 기분도 화끈하게!', '치킨')
    INTO MENU VALUES ('1', '4', '베이컨토마토디럭스', 'images/menu/베이컨토마토디럭스.png', 5500, 
    '두 장의 100% 순 쇠고기 패티에 그릴에 구워
    더욱 고소한 1장의 베이컨을 얹고,
    신선한 토마토와 양상추,
    매콤달콤한 스위트 칠리 소스, 치즈, 마요네즈를 더해
    더욱 풍부하고 신선한 맛의 프리미엄 버거.', '쇠고기')
    INTO MENU VALUES ('1', '5', '불고기버거', 'images/menu/맥도날드 불고기버거.png', 2200, 
    '진한 불고기 소스의 패티가 두 장!
    여기에 고소한 치즈와 마요네즈,
    신선한 양상추를 곁들인 깊고 풍부한 맛.', '돼지고기')
    INTO MENU VALUES ('1', '6', '슈슈버거', 'images/menu/슈슈버거.png', 4500, '탱~글한 통새우살 가득~ 슈슈 버거!', '새우')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('2', '1', '불고기버거', 'images/menu/롯데리아 불고기버거.png', 4100, 
    '볼륨 가득한 패티와 불고기 소스가 잘 조화된 영양만점의 햄버거', '쇠고기')
    INTO MENU VALUES ('2', '2', '한우불고기', 'images/menu/한우불고기.png', 7500, 
    '100% 우리 한우로 만든 두툼한 패티와 부드럽고 촉촉한 포테이토번이 만나 더 맛있어진 NEW 한우불고기', '쇠고기')
    INTO MENU VALUES ('2', '3', '원조빅불', 'images/menu/원조빅불.png', 6200, 
    '불고기 특유의 소스와 쇠고기의 진함을 배로 느끼는 제품', '쇠고기')
    INTO MENU VALUES ('2', '4', '새우버거', 'images/menu/롯데리아 새우버거.png', 4100, 
    '더 커지고, 더 맛있어진 새우 패티로 고유의 맛을 강화한 오리지널 새우버거', '새우')
    INTO MENU VALUES ('2', '5', '사각새우더블버거', 'images/menu/사각새우더블버거.png', 4800, 
    '새우패티 2장으로 더욱 푸짐한 새우버거', '새우')
    INTO MENU VALUES ('2', '6', 'T-REX버거', 'images/menu/T-REX버거.png', 4500, '번스보다 큰 통다리살 치킨패티를 활용한 버거제품', '치킨')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('3', '1', '불고기버거', 'images/menu/KFC 불고기버거.png', 3900, 
    '달콤한 불고기 소스와 부드러운 패티로 더 맛있어진 불고기버거', '돼지고기')
    INTO MENU VALUES ('3', '2', '캡새버거', 'images/menu/캡새버거.png', 3900, 
    '탱글탱글한 새우살이 콕콕 그 새우버거가 KFC에서 더 맛있게 나왔새우', '새우')
    INTO MENU VALUES ('3', '3', '징거더블다운맥스', 'images/menu/징거더블다운맥스.png', 6800, 
    'Only meat 치킨 통살로만 구성된 Real 치킨통살버거', '치킨')
    INTO MENU VALUES ('3', '4', '블랙라벨폴인치즈버거', 'images/menu/블랙라벨폴인치즈버거.png', 7400, 
    '부드러운 통닭다리살과 크림치즈, 고다치즈, 블루치즈의 완벽한 조화의 버거', '치킨')
    INTO MENU VALUES ('3', '5', '핫통삼겹베이컨버거', 'images/menu/핫통삼겹베이컨버거.png', 7000, 
    '육즙 가득 리얼 통삼겹베이컨에 매콤한 캐롤라이나크림 소스가 스며들다', '치킨')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('4', '1', '불고기와퍼', 'images/menu/불고기와퍼.png', 6400, 
    '불에 직접 구운 순 쇠고기 패티가 들어간 와퍼에 달콤한 불고기 소스까지!', '쇠고기')
    INTO MENU VALUES ('4', '2', '베이컨치즈와퍼', 'images/menu/베이컨치즈와퍼.png', 3900, 
    '풍미 가득한 아메리칸 클래식의 완벽한 조화!', '쇠고기')
    INTO MENU VALUES ('4', '3', '와퍼주니어', 'images/menu/와퍼주니어.png', 4400, 
    '불에 직접 구운 순 쇠고기 패티가 들어간 와퍼의 주니어 버전~ 작지만 꽉 찼다', '쇠고기')
    INTO MENU VALUES ('4', '5', '아빠상어새우버거', 'images/menu/아빠상어새우버거.png', 6200, 
    '불맛 가득 비프로 푸짐하게!', '새우')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('5', '1', '싸이버거', 'images/menu/싸이버거.png', 4100, 
    '바삭하고 매콤한 치킨 패티와 신선한 양상추가 조화를 이루는 맘스터치 시그니처 버거.', '치킨')
    INTO MENU VALUES ('5', '2', '불싸이버거', 'images/menu/불싸이버거.png', 4200, 
    '화끈한 불맛이 살아있는 버거, 싸이버거의 매운맛 버전.', '치킨')
    INTO MENU VALUES ('5', '3', '새우불고기버거', 'images/menu/새우불고기버거.png', 4800, 
    '새우살이 씹히는 통새우살 패티와 불맛 가득 불고기패티의 환상적인 버거', '새우')
    INTO MENU VALUES ('5', '4', '통새우버거', 'images/menu/통새우버거.png', 2900, 
    '고소하고 탱글한 코코넛 통새우 패티에 신선한 양상추가 조화로운 버거.', '새우')
    INTO MENU VALUES ('5', '6', '인크레더블버거', 'images/menu/인크레더블버거.png', 5200, 
    '프리미엄 더블햄, 에그프라이, 롱다리살 패티에 아삭아삭한 양상추와 양파까지, 풍성한 버거.', '치킨')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('6', '1', 'NBB오리지널', 'images/menu/NBB오리지널.png', 2900, 
    '직화로 구워낸 두툼한 미트 패티에 신선한 양상추와 토마토, NBB 특제 버거 소스를 더한 오리지널 버거', '쇠고기')
    INTO MENU VALUES ('6', '2', '그릴드불고기', 'images/menu/그릴드불고기.png', 2200, 
    '직화 미트 패티에 한국인이 가장 좋아하는 불고기 소스를 더한 NBB 최고 가성비 버거', '쇠고기')
    INTO MENU VALUES ('6', '3', '데리마요버거', 'images/menu/데리마요버거.png', 2900, 
    '두툼한 직화 미트 패티에 달콤한 데리소스가 더해진 버거', '쇠고기')
    INTO MENU VALUES ('6', '4', '스리라차치킨', 'images/menu/스리라차치킨.png', 3900, 
    '매콤한 태국식 스리라차에 달콤함을 더한 스페셜 소스와 바삭하게 튀긴 통가슴살 치킨 패티가 어우러진 버거', '치킨')
    INTO MENU VALUES ('6', '5', '스모키살사', 'images/menu/스모키살사.png', 3700, 
    '두툼한 직화 미트 패티에 매콤한 살사소스가 더해져 느끼함을 잡은 버거', '쇠고기')
    INTO MENU VALUES ('6', '6', '페퍼로니버거', 'images/menu/페퍼로니버거.png', 4000, 
    '두툼한 패티 위에 풍미 가득 페퍼로니와 진한 치즈가 더해진 버거', '쇠고기')
SELECT * FROM DUAL;


commit;


