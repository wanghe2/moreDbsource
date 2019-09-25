--mysql 数据库


CREATE TABLE seckill
(
   seckill_id   BIGINT         NOT NULL ,
   name         VARCHAR(120)   NOT NULL ,
   number       INT            NOT NULL ,
   create_time  TIMESTAMP      DEFAULT CURRENT_TIMESTAMP NOT NULL ,
   start_time   TIMESTAMP      DEFAULT 0000-00-00 00:00:00 NOT NULL ,
   end_time     TIMESTAMP      DEFAULT 0000-00-00 00:00:00 NOT NULL 
);
ALTER TABLE seckill
   ADD CONSTRAINT pk_seckill PRIMARY KEY (seckill_id);
;



INSERT INTO seckill
(
    seckill_id
  , name
  , number
  , create_time
  , start_time
  , end_time
)
VALUES
(
    1008
  , '1000元秒杀iphone6'
  , 0
  , '2019-09-23 13:42:28'
  , '2019-09-01 00:00:00'
  , '2019-10-07 00:00:00'
);

INSERT INTO seckill
(
    seckill_id
  , name
  , number
  , create_time
  , start_time
  , end_time
)
VALUES
(
    1009
  , '800元秒杀ipad'
  , 198
  , '2019-09-23 13:42:28'
  , '2019-09-01 00:00:00'
  , '2019-10-07 00:00:00'
);

INSERT INTO seckill
(
    seckill_id
  , name
  , number
  , create_time
  , start_time
  , end_time
)
VALUES
(
    1010
  , '6600元秒杀mac book pro'
  , 298
  , '2019-09-23 13:42:28'
  , '2019-09-01 00:00:00'
  , '2019-10-07 00:00:00'
);

INSERT INTO seckill
(
    seckill_id
  , name
  , number
  , create_time
  , start_time
  , end_time
)
VALUES
(
    1011
  , '7000元秒杀iMac'
  , 398
  , '2019-09-23 13:42:28'
  , '2019-09-01 00:00:00'
  , '2019-10-07 00:00:00'
);


-------oracle数据库


CREATE TABLE T_USER_INFO
(
   ID           NUMBER(19)           NOT NULL,
   PERSON_NAME  VARCHAR2(20 Char),
   GENDER       VARCHAR2(20 Char),
   EMAIL        VARCHAR2(50 Char),
   PHONE        VARCHAR2(30 Char),
   USER_UNIT    VARCHAR2(200 Char),
   ADMIN_UNIT   VARCHAR2(200 Char),
   REMARK       VARCHAR2(500 Char)
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    215
  , '邓招义'
  , NULL
  , 'zhaoyi.deng@supwisdom.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    216
  , '郑柱石(已离职)'
  , NULL
  , 'zhengzhushi@ekingstar.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    217
  , '赵丽丽(已离职)'
  , NULL
  , 'zhaolili@ekingstar.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    219
  , '朱栋'
  , NULL
  , 'dong.zhu@supwisdom.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    222
  , '张明'
  , NULL
  , 'ming.zhang@supwisdom.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    223
  , '柯贤君'
  , NULL
  , 'xianjun.ke@supwisdom.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    225
  , '刘姗姗(已离职)'
  , NULL
  , 'shanshan.liu@supwisdom.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    226
  , '毛丹辉'
  , NULL
  , 'maodanhui@supwisdom.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    228
  , '王荣'
  , NULL
  , 'wangrong@ekingstar.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    229
  , '张志海(已离职)'
  , NULL
  , 'zhihai.zhang@supwisdom.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    230
  , '王剑(已离职)'
  , NULL
  , 'wangjian@ekingstar.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    232
  , '马楠'
  , NULL
  , 'nan.ma@supwisdom.com'
  , '15821414550'
  , '1'
  , NULL
  , NULL
);

INSERT INTO T_USER_INFO
(
    ID
  , PERSON_NAME
  , GENDER
  , EMAIL
  , PHONE
  , USER_UNIT
  , ADMIN_UNIT
  , REMARK
)
VALUES
(
    233
  , '黄昀'
  , NULL
  , 'yun.huang@supwisdom.com'
  , '15821414550'
  , NULL
  , NULL
  , NULL
);




