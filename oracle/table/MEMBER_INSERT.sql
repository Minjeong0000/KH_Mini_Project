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
