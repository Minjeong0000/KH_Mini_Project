----- MEMBER -----
INSERT INTO MEMBER (
    MEMBER_NO
    , ID
    , PWD
    , NICK
    , PHONE
    , MEMBER_ADDRESS
    , MEMBER_DEL_YN 
)
VALUES (
    SEQ_MEMBER_NO.NEXTVAL
    , 'system'
    , '1234'
    , '������'
    , '01000000000'
    , '�������ּ�'
    , 'N'
);

INSERT INTO MEMBER (
    MEMBER_NO
    , ID
    , PWD
    , NICK
    , PHONE
    , MEMBER_ADDRESS
    , MEMBER_DEL_YN
)
VALUES (
    SEQ_MEMBER_NO.NEXTVAL
    , 'user02'
    , '1234'
    , 'ȥ����'
    , '01010106060'
    , '����Ư���� ������ �б�����79�� 88'
    , 'N'
);

INSERT INTO MEMBER (
    MEMBER_NO
    , ID
    , PWD
    , NICK
    , PHONE
    , MEMBER_ADDRESS
    , MEMBER_DEL_YN
)
VALUES (
    SEQ_MEMBER_NO.NEXTVAL
    , 'user03'
    , '1234'
    , '������'
    , '01010107070'
    , '��⵵ ������ �д籸 ���̵�'
    , 'N'
);

INSERT INTO MEMBER (
    MEMBER_NO
    , ID
    , PWD
    , NICK
    , PHONE
    , MEMBER_ADDRESS
    , MEMBER_DEL_YN
)
VALUES (
    SEQ_MEMBER_NO.NEXTVAL
    , 'user04'
    , '1234'
    , 'Ȳ����'
    , '01010108080'
    , '����� ������ ������'
    , 'N'
);

INSERT INTO MEMBER (
    MEMBER_NO
    , ID 
    , PWD
    , NICK
    , PHONE
    , MEMBER_ADDRESS
    , MEMBER_DEL_YN
)
VALUES (
    SEQ_MEMBER_NO.NEXTVAL
    , 'user05'
    , '1234'
    , '�̰���'
    , '01010109090'
    , '����� ���۱� ��浿'
    , 'N'
);



----- LOCATION -----
INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES 
(
    SEQ_LOCATION_NO.NEXTVAL
    , '������������'
    , '����Ư���� ������ �������134'
    , '70'
    , '01045681687'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '�������Ÿ���'
    , '����Ư���� ������ �������  125'
    , '133'
    , '01059591234'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , 'û����'
    , '����Ư���� ������ ������532, ������� 1��'
    , '3300'
    , '01087556121'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '����ȣ����'
    , '����Ư���� ���ı� ����ȣ����262'
    , '6300'
    , '01078315465'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '�սʸ���9���ⱸ��'
    , '����Ư���� ������ ������� 234'
    , '6900'
    , '01054565445'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '��õ���б���'
    , '��⵵ ������ ������ ������� 1342'
    , '9800'
    , '01075007800'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '����������'
    , '��⵵ ������ ���ż�ȯ�� 148'
    , '1670'
    , '01025327480'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '��Ÿ�ʵ�������'
    , '��Ÿ�ʵ� ���� ��Ƽ 1��'
    , '10100'
    , '01098862935'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '������̾�Ÿ����'
    , '����� ������ ����� 62 ���̾�Ÿ�� 1��'
    , '18300'
    , '01045685545'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '���ھƺ�õ��'
    , '��⵵ ��õ�� �۳���� 239'
    , '23600'
    , '01078764354'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '�������տ����'
    , '��⵵ ������ ��ȱ� �ۿ��� 71'
    , '22200'
    , '01056544451'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '���Ǳ���'
    , '��⵵ ������ �д籸 ���߷� 132'
    , '12700'
    , '01044638242'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '��õ���̿���'
    , '���ϵ� ��õ�� ����3�� 26'
    , '182400'
    , '01065448884'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '����ȣ����'
    , '��û���� ����� ȣ������2�� 33'
    , '94600'
    , '01012887445'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- �ڹٿ��� M������ ǥ���ϸ� ������
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , 'õȣ����'
    , '����Ư���� ������ õȣ��� 1012'
    , '9000'
    , '01073553564'
    ,'N'
    ,'Y'
);


--md_code 301:�ӱ� 302:�Һ�
----- MD_CATEGORY -----
INSERT INTO MD_CATEGORY (
    MD_CODE
    , MD_CATEGORY
)
VALUES (
    301
    , '�ӱ���'
);

INSERT INTO MD_CATEGORY (
    MD_CODE
    , MD_CATEGORY
)
VALUES (
    302
    , '�Һ�'
);



----- MERCHANDISE -----
INSERT INTO MERCHANDISE (
    MD_NO
    , MD_CODE
    , MD_NAME
    , MD_PRICE
    , CAPACITY
    , MD_DEL_YN
    , MD_EXPO_YN
    , MD_STOCK
)
VALUES (
    SEQ_MERCHANDISE_NO.NEXTVAL
    , 301
    , '���� ������ �ӱ�'
    , 44000
    , '355'
    , 'N'
    , 'Y'
    , 1
);

INSERT INTO MERCHANDISE (
    MD_NO
    , MD_CODE
    , MD_NAME
    , MD_PRICE
    , CAPACITY
    , MD_DEL_YN
    , MD_EXPO_YN
    , MD_STOCK
)
VALUES (
    SEQ_MERCHANDISE_NO.NEXTVAL
    , 301
    , 'SS ���� ��ũ�� ���� ���� �ӱ�'
    , 20000
    , '414'
    , 'N'
    , 'Y'
    , 5
);

INSERT INTO MERCHANDISE (
    MD_NO
    , MD_CODE
    , MD_NAME
    , MD_PRICE
    , CAPACITY
    , MD_DEL_YN
    , MD_EXPO_YN
    , MD_STOCK
)
VALUES (
    SEQ_MERCHANDISE_NO.NEXTVAL
    , 302
    , '�׸� ���ĸ� ���̽���Ʈ �Һ�'
    , 39000
    , '473'
    , 'N'
    , 'Y'
    , 3
);

INSERT INTO MERCHANDISE (
    MD_NO
    , MD_CODE
    , MD_NAME
    , MD_PRICE
    , CAPACITY
    , MD_DEL_YN
    , MD_EXPO_YN
    , MD_STOCK
)
VALUES (
    SEQ_MERCHANDISE_NO.NEXTVAL
    , 302
    , 'SS ���� ��ũ��� Ʈ����'
    , 44000
    , '591'
    , 'N'
    , 'Y'
    , 7
);


--FOOD_CODE 201:CAKE 202:SANDWICH 203:SNACK
----- FOOD_CATEGORY -----
INSERT INTO FOOD_CATEGORY (
    FOOD_CODE
    , FOOD_CATEGORY
)
VALUES (
    201
    , 'CAKE'
);

INSERT INTO FOOD_CATEGORY (
    FOOD_CODE
    , FOOD_CATEGORY
)
VALUES (
    202
    , 'SANDWICH'
);

INSERT INTO FOOD_CATEGORY (
    FOOD_CODE
    , FOOD_CATEGORY
)
VALUES (
    203
    , 'SNACK'
);

----- FOOD -----
INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , '��ũ��ī���ڶ�'
    , 4500
    , 'N'
    , 'N'
    , 'Y'
    , 201
    , 5
);

INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , '�ٽ�ũġ������ũ'
    , 7900
    , 'N'
    , 'N'
    , 'Y'
    , 201
    , 5
);

INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , 'Ƽ��̼�����ũ'
    , 5900
    , 'N'
    , 'N'
    , 'Y'
    , 201
    , 5
);

INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , '����������ũ'
    , 5700
    , 'N'
    , 'N'
    , 'Y'
    , 201
    , 5
);

INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , '��ȣ�ڿ��׻�����ġ'
    , 5500
    , 'N'
    , 'N'
    , 'Y'
    , 202
    , 5
);

INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , '����Ÿ�ұݻ�������ġ'
    , 5500
    , 'N'
    , 'N'
    , 'Y'
    , 202
    , 5
);

INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , '��ũĿƲ��������ġ'
    , 5500
    , 'Y'
    , 'N'
    , 'Y'
    , 202
    , 5
);

INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , '�Ƹ�����ǳ�ĵ��'
    , 3500
    , 'N'
    , 'N'
    , 'Y'
    , 203
    , 5
);

INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , 'ġ��̱�Ĩ'
    , 2700
    , 'N'
    , 'N'
    , 'Y'
    , 203
    , 5
);

INSERT INTO FOOD (
    FOOD_NO
    , FOOD_NAME
    , FOOD_PRICE
    , HEAT_YN
    , FOOD_DEL_YN
    , FOOD_EXPO_YN
    , FOOD_CODE
    , FOOD_STOCK
)
VALUES (
    SEQ_FOOD_NO.NEXTVAL
    , 'ȭ��Ʈ���ݸ���Ű'
    , 2800
    , 'N'
    , 'N'
    , 'Y'
    , 203
    , 5
);


--BEV_CODE 101:COFFEE 102 :SMOOTHIE 103:TEA 104:ETC
----- BEV_CATEGORY -----
INSERT INTO BEV_CATEGORY (
    BEV_CODE
    , BEV_CATEGORY
)
VALUES (
    101
    , 'COFFEE'
);


INSERT INTO BEV_CATEGORY (
    BEV_CODE
    , BEV_CATEGORY
)
VALUES (
    102
    , 'SMOOTHIE'
);


INSERT INTO BEV_CATEGORY (
    BEV_CODE
    , BEV_CATEGORY
)
VALUES (
    103
    , 'TEA'
);


INSERT INTO BEV_CATEGORY (
    BEV_CODE
    , BEV_CATEGORY
)
VALUES (
    104
    , 'ETC'
);

----- BEVERAGE -----
INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '�Ƹ޸�ī��'
    , 4500
    , 'I'
    , 'N'
    , 'Y'
    , 101
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , 'ī���'
    , 5000
    , 'I'
    , 'N'
    , 'Y'
    , 101
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '��ü��'
    , 5900
    , 'I'
    , 'N'
    , 'Y'
    , 101
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , 'ī���ī'
    , 5900
    , 'I'
    , 'N'
    , 'Y'
    , 101
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '����������'
    , 4000
    , 'H'
    , 'N'
    , 'Y'
    , 101
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '�ڹ�ħ����Ǫġ��'
    , 6300
    , 'I'
    , 'N'
    , 'Y'
    , 102
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '����ٳ��������'
    , 6300
    , 'I'
    , 'N'
    , 'Y'
    , 102
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '����ũ������Ǫġ��'
    , 6900
    , 'I'
    , 'N'
    , 'Y'
    , 102
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '����Ƽ'
    , 5100
    , 'H'
    , 'N'
    , 'Y'
    , 103
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '���۹�Ʈ Ƽ'
    , 5100
    , 'H'
    , 'N'
    , 'Y'
    , 103
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '����Ŀ�� Ƽ'
    , 5100
    , 'H'
    , 'N'
    , 'Y'
    , 103
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '�ñ״�ó ���ݸ�'
    , 5700
    , 'I'
    , 'N'
    , 'Y'
    , 104
    , 10
);

INSERT INTO BEVERAGE (
    BEV_NO
    , BEV_NAME
    , BEV_PRICE
    , ICED_HOT
    , BEV_DEL_YN
    , BEV_EXPO_YN
    , BEV_CODE
    , BEV_STOCK
)
VALUES (
    SEQ_BEVERAGE_NO.NEXTVAL
    , '���� ��� ��'
    , 7500
    , 'I'
    , 'N'
    , 'Y'
    , 104
    , 10
);

COMMIT;
