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
    , '관리자'
    , '01000000000'
    , '관리자주소'
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
    , '혼날둣'
    , '01010106060'
    , '서울특별시 강남구 압구정로79길 88'
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
    , '린갈듯'
    , '01010107070'
    , '경기도 성남시 분당구 구미동'
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
    , '황히찬'
    , '01010108080'
    , '서울시 마포구 공덕동'
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
    , '이강잇'
    , '01010109090'
    , '서울시 동작구 대방동'
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
    , '역삼포스코점'
    , '서울특별시 강남구 테헤란로134'
    , '70'
    , '01045681687'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '국기원사거리점'
    , '서울특별시 강남구 테헤란로  125'
    , '133'
    , '01059591234'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '청담점'
    , '서울특별시 강남구 도산대로532, 인희빌딩 1층'
    , '3300'
    , '01087556121'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '석촌호수점'
    , '서울특별시 송파구 석촌호수로262'
    , '6300'
    , '01078315465'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '왕십리역9번출구점'
    , '서울특별시 성동구 고산지로 234'
    , '6900'
    , '01054565445'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '가천대학교점'
    , '경기도 성남시 수정구 성남대로 1342'
    , '9800'
    , '01075007800'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '구리갈매점'
    , '경기도 구리시 갈매순환로 148'
    , '1670'
    , '01025327480'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '스타필드위례점'
    , '스타필드 위례 시티 1층'
    , '10100'
    , '01098862935'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '마곡사이언스타워점'
    , '서울시 강서구 마곡동로 62 사이언스타워 1층'
    , '18300'
    , '01045685545'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '뉴코아부천점'
    , '경기도 부천시 송내대로 239'
    , '23600'
    , '01078764354'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '수원종합운동장점'
    , '경기도 수원시 장안구 송원로 71'
    , '22200'
    , '01056544451'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '서판교점'
    , '경기도 성남시 분당구 운중로 132'
    , '12700'
    , '01044638242'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '김천구미역점'
    , '경상북도 김천시 혁신3로 26'
    , '182400'
    , '01065448884'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '서산호수점'
    , '충청남도 서산시 호수공원2로 33'
    , '94600'
    , '01012887445'
    ,'N'
    ,'Y'
);

INSERT INTO LOCATION (
    LOCATION_NO
    , BRANCH_NAME
    , LOCATION_ADDRESS
    , DISTANCE -- 자바에서 M단위로 표현하면 좋을듯
    , TELEPHONE
    , LOCATION_DEL_YN
    , LOCATION_EXPO_YN
)
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , '천호역점'
    , '서울특별시 강동구 천호대로 1012'
    , '9000'
    , '01073553564'
    ,'N'
    ,'Y'
);


--md_code 301:머그 302:텀블러
----- MD_CATEGORY -----
INSERT INTO MD_CATEGORY (
    MD_CODE
    , MD_CATEGORY
)
VALUES (
    301
    , '머그컵'
);

INSERT INTO MD_CATEGORY (
    MD_CODE
    , MD_CATEGORY
)
VALUES (
    302
    , '텀블러'
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
    , '제주 조랑말 머그'
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
    , 'SS 블라썸 시크릿 가든 데비 머그'
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
    , '그린 스탠리 아이슬란트 텀블러'
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
    , 'SS 스웰 오크우드 트래블러'
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
    , '생크림카스텔라'
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
    , '바스크치즈케이크'
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
    , '티라미수케이크'
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
    , '가나슈케이크'
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
    , '단호박에그샌드위치'
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
    , '리코타소금빵샌드위치'
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
    , '포크커틀릿샌드위치'
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
    , '아몬드토피넛캔디'
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
    , '치즈베이글칩'
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
    , '화이트초콜릿쿠키'
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
    , '아메리카노'
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
    , '카페라떼'
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
    , '돌체라떼'
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
    , '카페모카'
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
    , '에스프레소'
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
    , '자바침프라푸치노'
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
    , '망고바나나블렌디드'
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
    , '딸기크림프라푸치노'
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
    , '레몬티'
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
    , '페퍼민트 티'
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
    , '히비스커스 티'
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
    , '시그니처 초콜릿'
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
    , '제주 까망 라떼'
    , 7500
    , 'I'
    , 'N'
    , 'Y'
    , 104
    , 10
);

COMMIT;
