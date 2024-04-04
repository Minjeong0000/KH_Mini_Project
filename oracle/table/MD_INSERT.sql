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
    , '제주 조랑말 머그'
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
    , 'SS 블라썸 시크릿 가든 데비 머그'
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
    , '그린 스탠리 아이슬란트 텀블러'
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
    , 'SS 스웰 오크우드 트래블러'
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
    , '머그컵'
);

INSERT INTO MD_CATEGORY (
    MD_CODE
    , MD_CATEGORY
)
VALUES (
    2
    , '텀블러'
);
