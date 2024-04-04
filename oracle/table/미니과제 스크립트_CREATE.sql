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
    , ?
    , ?
    , ?
    , ?
    , ?
    , ?
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
VALUES (
    SEQ_LOCATION_NO.NEXTVAL
    , ?
    , ?
    , ?
    , ?
    , ?
);

----- ORDER -----
INSERT INTO ORDER_SHOW (
    ORDER_NO
    , MEMBER_NO
    , LOCATION_NO
)
VALUES (
    SEQ_ORDER_SHOW_NO.NEXTVAL
    , ?
    , ?
);

INSERT INTO ORDER_LIST (
    ORDER_LIST_NO
    , ORDER_NO
)
VALUES (
    ?
    , ?
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
    , ?
    , ?
    , ?
    , ?
    , ?
    , ?
    , ?
);

INSERT INTO MD_CATEGORY (
    MD_CODE
    , MD_CATEGORY
)
VALUES (
    ?
    , ?
);

INSERT INTO MERCHANDISE_CART (
    MERCHANDISE_CART_NO
    , MEMBER_NO
    , MD_NO
    , MD_COUNT
    , MD_SUM
    , MD_REQUEST
)
VALUES (
    SEQ_MERCHANDISE_CART_NO.NEXTVAL
    , ?
    , ?
    , ?
    , ?
    , ?
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
    , ?
    , ?
    , ?
    , ?
    , ?
    , ?
    , ?
);

INSERT INTO FOOD_CATEGORY (
    FOOD_CODE
    , FOOD_CATEGORY
)
VALUES (
    ?
    , ?
);

INSERT INTO FOOD_CART (
    FOOD_CART_NO
    , MEMBER_NO
    , FOOD_NO
    , FOOD_COUNT
    , FOOD_SUM
    , FOOD_REQUEST
)
VALUES (
    SEQ_FOOD_CART_NO.NEXTVAL
    , ?
    , ?
    , ?
    , ?
    , ?
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
    , ?
    , ?
    , ?
    , ?
    , ?
    , ?
    , ?
);

INSERT INTO BEV_CATEGORY (
    BEV_CODE
    , BEV_CATEGORY
)
VALUES (
    ?
    , ?
);

INSERT INTO BEVERAGE_CART (
    BEVERAGE_CART_NO
    , MEMBER_NO
    , BEV_NO
    , BEV_COUNT
    , BEV_SUM
    , BEV_REQUEST
)
VALUES (
    SEQ_BEVERAGE_CART_NO.NEXTVAL
    , ?
    , ?
    , ?
    , ?
    , ?
);
