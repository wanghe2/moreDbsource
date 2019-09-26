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


CREATE TABLE T_USER_INFO_COPY
(
   ID           NUMBER(19)           primary key,
   PERSON_NAME  VARCHAR2(20 Char),
   EMAIL        VARCHAR2(50 Char),
   PHONE        VARCHAR2(30 Char),
);

INSERT INTO T_USER_INFO_COPY
(ID, PERSON_NAME, EMAIL, PHONE)
VALUES
(308, '周林忠', 'zhoulinzhong@ekingstar.com', '15821414550');

INSERT INTO T_USER_INFO_COPY
(ID, PERSON_NAME, EMAIL, PHONE)
VALUES
(309, '颜华贇', 'huayun.yan@supwisdom.com', '15821414550');

INSERT INTO T_USER_INFO_COPY
(ID, PERSON_NAME, EMAIL, PHONE)
VALUES
(310, '陈金涛', 'jintao.chen@supwisdom.com', '15821414550');

INSERT INTO T_USER_INFO_COPY
(ID, PERSON_NAME, EMAIL, PHONE)
VALUES
(313, '范露玫', 'lumei.fan@supwisdom.com', '15821414550');




