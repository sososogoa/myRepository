INSERT ALL
  INTO MEMBERS VALUES ('1', 'user1', '12341234', '�����1', '�г���1','user1@naver.com', '01012341234', SYSDATE, 0)
  INTO MEMBERS VALUES ('2', 'user2', '12341234', '�����2', '�г���2','user2@naver.com', '01043214321', SYSDATE, 0)
  INTO MEMBERS VALUES ('3', 'user3', '12341234', '�����3', '�г���3','user3@naver.com', '01056785678', SYSDATE, 0)
SELECT * FROM DUAL;

INSERT ALL
  INTO ADMINS VALUES ('1', 'admin1', '12341234', '������1')
  INTO ADMINS VALUES ('2', 'admin2', '12341234', '������2')
SELECT * FROM DUAL;

INSERT ALL
  INTO BRAND VALUES ('1', '�Ƶ�����', 'images/brand/�Ƶ�����.png','�̱� �ϸ������� ��ī������ ź���� ��ǥ���� �ٱ��� �н�ƮǪ�� ����������. �н�ƮǪ�� �ܹ����� �����', 'https://www.mcdonalds.co.kr')
  INTO BRAND VALUES ('2', '�Ե�����', 'images/brand/�Ե�����.png','���ѹα� ������ �ܹ��� ����������. �Ե�GRS���� ��ϰ� ������ ������ �ܹ��Ż���ΰ� �ô´�.', 'https://www.lotteria.com')
  INTO BRAND VALUES ('3', 'KFC', 'images/brand/KFC.png','KFC�� �����̵� ġŲ�� �ַ����� �ϴ� �̱��� �н�ƮǪ�� ����������, �̸��� ����Ű �����̵� ġŲ(Kentucky Fried Chicken�� �����̴�. ����� �̸����� �� �� �ֵ� �̱� ����Ű ���� ���̺��� �ִ�.', 'https://www.kfckorea.com/')
  INTO BRAND VALUES ('4', '����ŷ', 'images/brand/����ŷ.png','����ŷ(Burger King)�� �̱����� ź���� �������� �н�ƮǪ�� ���������� ��� �ϳ���, �ܹ��Ÿ� �߽� �޴��� �ϴ� ������', 'https://www.burgerking.co.kr/#/home')
  INTO BRAND VALUES ('5', '������ġ', 'images/brand/������ġ.png','���ѹα��� ���� �� ġŲ �귣��.', 'https://www.momstouch.co.kr/')
  INTO BRAND VALUES ('6', '��귣�����', 'images/brand/��귣�����.png','�ż���Ǫ�� �迭�� �ܹ��� �귣���̸� ��Ī�� NBB��. �̸��� ����� �̸�Ʈ PB��ǰ�� �� ���� �߽��� �귣���� ��귣���̴�.', 'https://www.shinsegaefood.com/nobrandburger/index.sf')
SELECT *
FROM DUAL;


INSERT ALL
    INTO MENU VALUES ('1', '1', '���', 'images/menu/���.png', 4600, 
    '100% �� ����� ��Ƽ �� �忡 ��Ƣ縸�� Ư���� �ҽ�.
    �Ծȿ��� ��� ��� ġ��� �ż��� �����, ����, �׸��� ��Ŭ����.
    50�� �Ѱ� �� �������� �Ը��� ��� ���� ������ �����.', '�����')
    INTO MENU VALUES ('1', '2', '1955����', 'images/menu/1955����.png', 5700, 
    '113g ������ �� ����� ��Ƽ,
    Ư���� 1955 �ҽ��� ���� ǳ���� �׸��� ��Ͼ����!
    �Ƶ����尡 ó�� ���� 1955���� ���� ����
    ������ �������� 1955 ����', '�����')
    INTO MENU VALUES ('1', '3', '�ƽ����̽û����̹���', 'images/menu/�ƽ����̽û����̹���.png', 4600, 
    '������ ������� ���� 100% �߰��� ��� ����
    �ƻ�ƻ��� ����߿� �ż��� �丶��~
    ���� �ٻ�, ���� �ε巯�� ġŲ ��Ƽ�� ����������
    �Ը��� ��е� ȭ���ϰ�!', 'ġŲ')
    INTO MENU VALUES ('1', '4', '�������丶��𷰽�', 'images/menu/�������丶��𷰽�.png', 5500, 
    '�� ���� 100% �� ����� ��Ƽ�� �׸��� ����
    ���� ������ 1���� �������� ���,
    �ż��� �丶��� �����,
    ���޴����� ����Ʈ ĥ�� �ҽ�, ġ��, ������ ����
    ���� ǳ���ϰ� �ż��� ���� �����̾� ����.', '�����')
    INTO MENU VALUES ('1', '5', '�Ұ������', 'images/menu/�Ƶ����� �Ұ������.png', 2200, 
    '���� �Ұ��� �ҽ��� ��Ƽ�� �� ��!
    ���⿡ ������ ġ��� �������,
    �ż��� ����߸� ����� ���� ǳ���� ��.', '��������')
    INTO MENU VALUES ('1', '6', '��������', 'images/menu/��������.png', 4500, '��~���� ������ ����~ ���� ����!', '����')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('2', '1', '�Ұ������', 'images/menu/�Ե����� �Ұ������.png', 4100, 
    '���� ������ ��Ƽ�� �Ұ��� �ҽ��� �� ��ȭ�� ���縸���� �ܹ���', '�����')
    INTO MENU VALUES ('2', '2', '�ѿ�Ұ���', 'images/menu/�ѿ�Ұ���.png', 7500, 
    '100% �츮 �ѿ�� ���� ������ ��Ƽ�� �ε巴�� ������ ����������� ���� �� ���־��� NEW �ѿ�Ұ���', '�����')
    INTO MENU VALUES ('2', '3', '�������', 'images/menu/�������.png', 6200, 
    '�Ұ��� Ư���� �ҽ��� ������� ������ ��� ������ ��ǰ', '�����')
    INTO MENU VALUES ('2', '4', '�������', 'images/menu/�Ե����� �������.png', 4100, 
    '�� Ŀ����, �� ���־��� ���� ��Ƽ�� ������ ���� ��ȭ�� �������� �������', '����')
    INTO MENU VALUES ('2', '5', '�簢�����������', 'images/menu/�簢�����������.png', 4800, 
    '������Ƽ 2������ ���� Ǫ���� �������', '����')
    INTO MENU VALUES ('2', '6', 'T-REX����', 'images/menu/T-REX����.png', 4500, '�������� ū ��ٸ��� ġŲ��Ƽ�� Ȱ���� ������ǰ', 'ġŲ')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('3', '1', '�Ұ������', 'images/menu/KFC �Ұ������.png', 3900, 
    '������ �Ұ��� �ҽ��� �ε巯�� ��Ƽ�� �� ���־��� �Ұ������', '��������')
    INTO MENU VALUES ('3', '2', 'ĸ������', 'images/menu/ĸ������.png', 3900, 
    '�ʱ��ʱ��� ������� ���� �� ������Ű� KFC���� �� ���ְ� ���Ի���', '����')
    INTO MENU VALUES ('3', '3', '¡�Ŵ����ٿ�ƽ�', 'images/menu/¡�Ŵ����ٿ�ƽ�.png', 6800, 
    'Only meat ġŲ ���θ� ������ Real ġŲ������', 'ġŲ')
    INTO MENU VALUES ('3', '4', '����������ġ�����', 'images/menu/����������ġ�����.png', 7400, 
    '�ε巯�� ��ߴٸ���� ũ��ġ��, ����ġ��, ����ġ���� �Ϻ��� ��ȭ�� ����', 'ġŲ')
    INTO MENU VALUES ('3', '5', '�����㺣��������', 'images/menu/�����㺣��������.png', 7000, 
    '���� ���� ���� ���㺣������ ������ ĳ�Ѷ��̳�ũ�� �ҽ��� ������', 'ġŲ')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('4', '1', '�Ұ������', 'images/menu/�Ұ������.png', 6400, 
    '�ҿ� ���� ���� �� ����� ��Ƽ�� �� ���ۿ� ������ �Ұ��� �ҽ�����!', '�����')
    INTO MENU VALUES ('4', '2', '������ġ�����', 'images/menu/������ġ�����.png', 3900, 
    'ǳ�� ������ �Ƹ޸�ĭ Ŭ������ �Ϻ��� ��ȭ!', '�����')
    INTO MENU VALUES ('4', '3', '�����ִϾ�', 'images/menu/�����ִϾ�.png', 4400, 
    '�ҿ� ���� ���� �� ����� ��Ƽ�� �� ������ �ִϾ� ����~ ������ �� á��', '�����')
    INTO MENU VALUES ('4', '5', '�ƺ����������', 'images/menu/�ƺ����������.png', 6200, 
    '�Ҹ� ���� ������ Ǫ���ϰ�!', '����')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('5', '1', '���̹���', 'images/menu/���̹���.png', 4100, 
    '�ٻ��ϰ� ������ ġŲ ��Ƽ�� �ż��� ����߰� ��ȭ�� �̷�� ������ġ �ñ״�ó ����.', 'ġŲ')
    INTO MENU VALUES ('5', '2', '�ҽ��̹���', 'images/menu/�ҽ��̹���.png', 4200, 
    'ȭ���� �Ҹ��� ����ִ� ����, ���̹����� �ſ�� ����.', 'ġŲ')
    INTO MENU VALUES ('5', '3', '����Ұ������', 'images/menu/����Ұ������.png', 4800, 
    '������� ������ ������ ��Ƽ�� �Ҹ� ���� �Ұ�����Ƽ�� ȯ������ ����', '����')
    INTO MENU VALUES ('5', '4', '��������', 'images/menu/��������.png', 2900, 
    '�����ϰ� �ʱ��� ���ڳ� ����� ��Ƽ�� �ż��� ����߰� ��ȭ�ο� ����.', '����')
    INTO MENU VALUES ('5', '6', '��ũ����������', 'images/menu/��ũ����������.png', 5200, 
    '�����̾� ������, ����������, �մٸ��� ��Ƽ�� �ƻ�ƻ��� ����߿� ���ı���, ǳ���� ����.', 'ġŲ')
SELECT * FROM DUAL;

INSERT ALL
    INTO MENU VALUES ('6', '1', 'NBB��������', 'images/menu/NBB��������.png', 2900, 
    '��ȭ�� ������ ������ ��Ʈ ��Ƽ�� �ż��� ����߿� �丶��, NBB Ư�� ���� �ҽ��� ���� �������� ����', '�����')
    INTO MENU VALUES ('6', '2', '�׸���Ұ���', 'images/menu/�׸���Ұ���.png', 2200, 
    '��ȭ ��Ʈ ��Ƽ�� �ѱ����� ���� �����ϴ� �Ұ��� �ҽ��� ���� NBB �ְ� ������ ����', '�����')
    INTO MENU VALUES ('6', '3', '�����������', 'images/menu/�����������.png', 2900, 
    '������ ��ȭ ��Ʈ ��Ƽ�� ������ �����ҽ��� ������ ����', '�����')
    INTO MENU VALUES ('6', '4', '��������ġŲ', 'images/menu/��������ġŲ.png', 3900, 
    '������ �±��� ���������� �������� ���� ����� �ҽ��� �ٻ��ϰ� Ƣ�� �밡���� ġŲ ��Ƽ�� ��췯�� ����', 'ġŲ')
    INTO MENU VALUES ('6', '5', '����Ű���', 'images/menu/����Ű���.png', 3700, 
    '������ ��ȭ ��Ʈ ��Ƽ�� ������ ���ҽ��� ������ �������� ���� ����', '�����')
    INTO MENU VALUES ('6', '6', '���۷δϹ���', 'images/menu/���۷δϹ���.png', 4000, 
    '������ ��Ƽ ���� ǳ�� ���� ���۷δϿ� ���� ġ� ������ ����', '�����')
SELECT * FROM DUAL;


commit;

