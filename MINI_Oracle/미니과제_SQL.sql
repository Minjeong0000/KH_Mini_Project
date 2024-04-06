-- 매장 선택 (SELECT)
----- 매장 선택 -----
-- 1. 뭐시기
-- 2. 뭐시기
-- 3. 뭐시기
SELECT
    LOCATION_NO
    , BRANCH_NAME
    , DISTANCE
FROM LOCATION
;

-- LOCATION_NO로 선택

-- 상품 조회 (SELECT)
----- 상품 조회 -----
-- 1. 음료
-- 2. 음식
-- 3. 상품
-- 번호로 고르기 (자바에서 처리)

----- 음료 -----
-- 1. 뭐시기
-- 2. 뭐시기
-- 3. 뭐시기
SELECT
    B.BEV_NO
    , B.BEV_NAME
    , B.BEV_PRICE
    , C.BEV_CATEGORY
    , B.BEV_STOCK
FROM BEVERAGE B
JOIN BEV_CATEGORY C ON B.BEV_CODE = C.BEV_CODE
;

----- 음식 -----
-- 1. 뭐시기
-- 2. 뭐시기
-- 3. 뭐시기
SELECT
    F.FOOD_NO
    , F.FOOD_NAME
    , F.FOOD_PRICE
    , C.FOOD_CATEGORY
    , F.FOOD_STOCK
FROM FOOD F
JOIN FOOD_CATEGORY C ON F.FOOD_CODE = C.FOOD_CODE
;

----- 상품 -----
-- 1. 뭐시기
-- 2. 뭐시기
-- 3. 뭐시기
SELECT
    M.MD_NO
    , M.MD_NAME
    , M.MD_PRICE
    , C.MD_CATEGORY
    , M.MD_STOCK
FROM MERCHANDISE M
JOIN MD_CATEGORY C ON M.MD_CODE = C.MD_CODE
;



-- 장바구니 담기 (INSERT) -> 각자 CART에 담기
----- 장바구니 담기 -----
-- BEVERAGE
INSERT INTO BEVERAGE_CART (
    BEVERAGE_CART_NO
    , MEMBER_NO
    , BEV_NO
    , BEV_COUNT
    , BEV_SUM
    , BEV_REQUEST
)
VALUES (
    SEQ_MEMBER_NO.NEXTVAL
    , 1 -- 
    , 1 -- 
    , 1 -- 
    , ? -- 사용자 입력 (bevCount)
    , ? -- PRICE * 
    , ? -- 사용자 입력 (bevRequest)
);

INSERT INTO FOOD_CART
(
    FOOD_CART_NO
    , MEMBER_NO
    , FOOD_NO
    , FOOD_COUNT
    , FOOD_SUM
    , FOOD_REQUEST
)
VALUES
(
    SEQ_FOOD_CART_NO.NEXTVAL
    , ?
    , ?
    , ?
    , ?
    , ?
);

SELECT *
FROM BEVERAGE_CART
;

INSERT INTO MERCHANDISE_CART
(
    MERCHANDISE_CART_NO
    , MEMBER_NO
    , MD_NO
    , MD_COUNT
    , MD_SUM
    , MD_REQUEST
)
VALUES
(
    SEQ_MERCHANDISE_CART_NO.NEXTVAL
    , ?
    , ?
    , ?
    , ?
    , ?
);

INSERT INTO BEVERAGE_CART
(
    BEVERAGE_CART_NO
    , MEMBER_NO
    , BEV_NO
    , BEV_COUNT
    , BEV_SUM
    , BEV_REQUEST
)
VALUES
(
    SEQ_BEVERAGE_CART_NO.NEXTVAL
    , ?
    , ?
    , ?
    , ?
    , ?
);






-- 주문 내역 값 넘기기


-- 카트 담기
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

----- 오더하기 -----
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

----- 오더리스트 넘기기 -----
INSERT INTO ORDER_LIST (
    ORDER_LIST_NO
    , ORDER_NO
)
VALUES (
    SEQ_ORDER_LIST_NO.NEXTVAL
    , ?
);



----- 장바구니 출력 -----
SELECT
    B.BEV_NAME NAME
    , C.BEV_COUNT COUNT
    , C.BEV_SUM SUM
    , C.BEV_REQUEST REQUEST
FROM BEVERAGE_CART C
JOIN BEVERAGE B ON (C.BEV_NO = B.BEV_NO)

UNION

SELECT
    F.FOOD_NAME NAME
    , C.FOOD_COUNT COUNT
    , C.FOOD_SUM SUM
    , C.FOOD_REQUEST REQUEST
FROM FOOD_CART C
JOIN FOOD F ON (C.FOOD_NO = F.FOOD_NO)

UNION

SELECT
    M.MD_NAME NAME
    , C.MD_COUNT COUNT
    , C.MD_SUM SUM
    , C.MD_REQUEST REQUEST
FROM MERCHANDISE_CART C
JOIN MERCHANDISE M ON (C.MD_NO = M.MD_NO)
;



----- ORDER -----
-- 주문 조회 (SELECT)


-- 주문 상세 조회 (SELECT)
SELECT * FROM BOARD ORDER BY NO DESC;
SELECT * FROM BOARD B JOIN MEMBER M ON M.NO = B.WRITER_NO ORDER BY B.NO DESC;
