--음료 카테고리
INSERT INTO BEV_CATEGORY (
    BEV_CODE
    , BEV_CATEGORY
)
VALUES (
    1
    , 'COFFEE'
);


INSERT INTO BEV_CATEGORY (
    BEV_CODE
    , BEV_CATEGORY
)
VALUES (
    2
    , 'SMOOTHIE'
);


INSERT INTO BEV_CATEGORY (
    BEV_CODE
    , BEV_CATEGORY
)
VALUES (
    3
    , 'TEA'
);


INSERT INTO BEV_CATEGORY (
    BEV_CODE
    , BEV_CATEGORY
)
VALUES (
    4
    , 'ETC'
);

--음료
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
    , 1
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
    , 1
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
    , 1
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
    , 1
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
    , 1
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
    , 2
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
    , 2
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
    , 2
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
    , 3
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
    , 3
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
    , 3
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
    , 4
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
    , 4
    , 10
);

--푸드 카테고리
INSERT INTO FOOD_CATEGORY (
    FOOD_CODE
    , FOOD_CATEGORY
)
VALUES (
    1
    , 'CAKE'
);

INSERT INTO FOOD_CATEGORY (
    FOOD_CODE
    , FOOD_CATEGORY
)
VALUES (
    2
    , 'SANDWICH'
);

INSERT INTO FOOD_CATEGORY (
    FOOD_CODE
    , FOOD_CATEGORY
)
VALUES (
    3
    , 'SNACK'
);

--푸드
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
    , 1
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
    , 1
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
    , 1
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
    , 1
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
    , 2
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
    , 2
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
    , 2
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
    , 3
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
    , 3
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
    , 3
    , 5
);

