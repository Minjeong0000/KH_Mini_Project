----- 3. �ֹ� -----
-- ���� ����
SELECT
    LOCATION_NO
    , BRANCH_NAME
    , DISTANCE
FROM LOCATION
;



-- ��ǰ ���� (BEVERAGE)
SELECT
    B.BEV_NO
    , B.BEV_NAME
    , B.BEV_PRICE
    , C.BEV_CATEGORY
    , B.BEV_STOCK
FROM BEVERAGE B
JOIN BEV_CATEGORY C ON B.BEV_CODE = C.BEV_CODE
;

-- ��ǰ ���� (FOOD)
SELECT
    F.FOOD_NO
    , F.FOOD_NAME
    , F.FOOD_PRICE
    , C.FOOD_CATEGORY
    , F.FOOD_STOCK
FROM FOOD F
JOIN FOOD_CATEGORY C ON F.FOOD_CODE = C.FOOD_CODE
;

-- ��ǰ ���� (MERCHANDISE)
SELECT
    M.MD_NO
    , M.MD_NAME
    , M.MD_PRICE
    , C.MD_CATEGORY
    , M.MD_STOCK
FROM MERCHANDISE M
JOIN MD_CATEGORY C ON M.MD_CODE = C.MD_CODE
;



-- ��ٱ��� ��� (BEVERAGE)
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

-- ��ٱ��� ��� (FOOD)
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

-- ��ٱ��� ��� (MERCHANDISE)
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



----- ��ٱ��� ��� -----
SELECT
    B.BEV_NAME "�޴���"
    , C.BEV_NO "��ǰ��ȣ"
    , C.BEV_COUNT "����"
    , C.BEV_SUM "�հ�"
    , C.BEV_REQUEST "��û����"
FROM BEVERAGE_CART C
JOIN BEVERAGE B ON (C.BEV_NO = B.BEV_NO)

UNION

SELECT
    F.FOOD_NAME "�޴���"
    , C.FOOD_NO "��ǰ��ȣ"
    , C.FOOD_COUNT "����"
    , C.FOOD_SUM "�հ�"
    , C.FOOD_REQUEST "��û����"
FROM FOOD_CART C
JOIN FOOD F ON (C.FOOD_NO = F.FOOD_NO)

UNION

SELECT
    M.MD_NAME "�޴���"
    , C.MD_NO "��ǰ��ȣ"
    , C.MD_COUNT "����"
    , C.MD_SUM "�հ�"
    , C.MD_REQUEST "��û����"
FROM MERCHANDISE_CART C
JOIN MERCHANDISE M ON (C.MD_NO = M.MD_NO)
;



-- �ֹ��ϱ� (ORDER_SHOW)
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

-- ������ ���
SELECT
    O.ORDER_NO "�ֹ���ȣ"
    , B.BEV_NAME "��ǰ��"
    , C.BEV_COUNT "����"
    , C.BEV_SUM "����"
    , C.BEV_REQUEST "��û����"
FROM BEVERAGE_CART C
JOIN BEVERAGE B ON (C.BEV_NO = B.BEV_NO)
JOIN ORDER_SHOW O ON (C.MEMBER_NO = O.MEMBER_NO)

UNION

SELECT
    O.ORDER_NO "�ֹ���ȣ"
    , F.FOOD_NAME "��ǰ��"
    , C.FOOD_COUNT "����"
    , C.FOOD_SUM "����"
    , C.FOOD_REQUEST "��û����"
FROM FOOD_CART C
JOIN FOOD F ON (C.FOOD_NO = F.FOOD_NO)
JOIN ORDER_SHOW O ON (C.MEMBER_NO = O.MEMBER_NO)

UNION

SELECT
    O.ORDER_NO "�ֹ���ȣ"
    , M.MD_NAME "��ǰ��"
    , C.MD_COUNT "����"
    , C.MD_SUM "����"
    , C.MD_REQUEST "��û����"
FROM MERCHANDISE_CART C
JOIN MERCHANDISE M ON (C.MD_NO = M.MD_NO)
JOIN ORDER_SHOW O ON (C.MEMBER_NO = O.MEMBER_NO)
;
