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
    , 1
    , '���� ������ �ӱ�'
    , 12000
    , '355ml'
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
    , 1
    , 'SS ���� ��ũ�� ���� ���� �ӱ�'
    , 20000
    , '414ml'
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
    , 2
    , '�׸� ���ĸ� ���̽���Ʈ �Һ�'
    , 39000
    , '473ml'
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
    , 2
    , 'SS ���� ��ũ��� Ʈ����'
    , 44000
    , '591ml'
    , 'N'
    , 'Y'
    , 7
);

INSERT INTO MD_CATEGORY (
    MD_CODE
    , MD_CATEGORY
)
VALUES (
    1
    , '�ӱ���'
);

INSERT INTO MD_CATEGORY (
    MD_CODE
    , MD_CATEGORY
)
VALUES (
    2
    , '�Һ�'
);
