INSERT INTO MEMBER(MEMBER_NO,ID,PWD,NICK,PHONE,MEMBER_ADDRESS) VALUES(SEQ_MEMBER_NO.NEXTVAL,?,?,?,?,?);

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
