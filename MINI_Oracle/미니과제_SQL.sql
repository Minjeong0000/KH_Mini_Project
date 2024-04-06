----- 3. 주문 -----
-- 매장 선택
SELECT
    LOCATION_NO
    , BRANCH_NAME
    , DISTANCE
FROM LOCATION
;



-- 상품 선택 (BEVERAGE)
SELECT
    B.BEV_NO
    , B.BEV_NAME
    , B.BEV_PRICE
    , C.BEV_CATEGORY
    , B.BEV_STOCK
FROM BEVERAGE B
JOIN BEV_CATEGORY C ON B.BEV_CODE = C.BEV_CODE
;

-- 상품 선택 (FOOD)
SELECT
    F.FOOD_NO
    , F.FOOD_NAME
    , F.FOOD_PRICE
    , C.FOOD_CATEGORY
    , F.FOOD_STOCK
FROM FOOD F
JOIN FOOD_CATEGORY C ON F.FOOD_CODE = C.FOOD_CODE
;

-- 상품 선택 (MERCHANDISE)
SELECT
    M.MD_NO
    , M.MD_NAME
    , M.MD_PRICE
    , C.MD_CATEGORY
    , M.MD_STOCK
FROM MERCHANDISE M
JOIN MD_CATEGORY C ON M.MD_CODE = C.MD_CODE
;



-- 장바구니 담기 (BEVERAGE)
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
    , ?
    , ?
    , ?
    , ?
    , ?
    , ?
);

-- 장바구니 담기 (FOOD)
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

-- 장바구니 담기 (MERCHANDISE)
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

INSERT INTO ORDER_SHOW (ORDER_NO, MEMBER_NO, LOCATION_NO) VALUES (SEQ_ORDER_SHOW_NO.NEXTVAL, 2, 11);



----- 장바구니 출력 -----
SELECT
    B.BEV_NAME "메뉴명"
    , C.BEV_NO "상품번호"
    , C.BEV_COUNT "개수"
    , C.BEV_SUM "합계"
    , C.BEV_REQUEST "요청사항"
FROM BEVERAGE_CART C
JOIN BEVERAGE B ON (C.BEV_NO = B.BEV_NO)

UNION

SELECT
    F.FOOD_NAME "메뉴명"
    , C.FOOD_NO "상품번호"
    , C.FOOD_COUNT "개수"
    , C.FOOD_SUM "합계"
    , C.FOOD_REQUEST "요청사항"
FROM FOOD_CART C
JOIN FOOD F ON (C.FOOD_NO = F.FOOD_NO)

UNION

SELECT
    M.MD_NAME "메뉴명"
    , C.MD_NO "상품번호"
    , C.MD_COUNT "개수"
    , C.MD_SUM "합계"
    , C.MD_REQUEST "요청사항"
FROM MERCHANDISE_CART C
JOIN MERCHANDISE M ON (C.MD_NO = M.MD_NO)
;



-- 주문하기 (ORDER_SHOW)
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

-- 영수증 출력
SELECT
    O.ORDER_NO "주문번호"
    , B.BEV_NAME "상품명"
    , C.BEV_COUNT "수량"
    , C.BEV_SUM "가격"
    , C.BEV_REQUEST "요청사항"
FROM BEVERAGE_CART C
JOIN BEVERAGE B ON (C.BEV_NO = B.BEV_NO)
JOIN ORDER_SHOW O ON (C.MEMBER_NO = O.MEMBER_NO)

UNION

SELECT
    O.ORDER_NO "주문번호"
    , F.FOOD_NAME "상품명"
    , C.FOOD_COUNT "수량"
    , C.FOOD_SUM "가격"
    , C.FOOD_REQUEST "요청사항"
FROM FOOD_CART C
JOIN FOOD F ON (C.FOOD_NO = F.FOOD_NO)
JOIN ORDER_SHOW O ON (C.MEMBER_NO = O.MEMBER_NO)

UNION

SELECT
    O.ORDER_NO "주문번호"
    , M.MD_NAME "상품명"
    , C.MD_COUNT "수량"
    , C.MD_SUM "가격"
    , C.MD_REQUEST "요청사항"
FROM MERCHANDISE_CART C
JOIN MERCHANDISE M ON (C.MD_NO = M.MD_NO)
JOIN ORDER_SHOW O ON (C.MEMBER_NO = O.MEMBER_NO)
;
