PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE __diesel_schema_migrations (version VARCHAR(50) PRIMARY KEY NOT NULL,run_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);
INSERT INTO __diesel_schema_migrations VALUES('20180114171611','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20180217205753','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20180427155151','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20180508161616','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20180525232323','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20180601112529','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20180711181453','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20180827172114','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20180910111213','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20180919144557','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20181127152651','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20190526216651','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20191010083032','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20191117011009','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20200313205045','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20200409235005','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20200701214531','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20200802025025','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20201130224000','2021-03-15 19:48:14');
INSERT INTO __diesel_schema_migrations VALUES('20201209173101','2021-03-15 19:48:14');
CREATE TABLE users (
  uuid                TEXT     NOT NULL PRIMARY KEY,
  created_at          DATETIME NOT NULL,
  updated_at          DATETIME NOT NULL,
  email               TEXT     NOT NULL UNIQUE,
  name                TEXT     NOT NULL,
  password_hash       BLOB     NOT NULL,
  salt                BLOB     NOT NULL,
  password_iterations INTEGER  NOT NULL,
  password_hint       TEXT,
  akey                 TEXT     NOT NULL,
  private_key         TEXT,
  public_key          TEXT,
  totp_secret         TEXT,
  totp_recover        TEXT,
  security_stamp      TEXT     NOT NULL,
  equivalent_domains  TEXT     NOT NULL,
  excluded_globals    TEXT     NOT NULL
, client_kdf_type INTEGER NOT NULL DEFAULT 0, client_kdf_iter INTEGER NOT NULL DEFAULT 100000, verified_at DATETIME DEFAULT NULL, last_verifying_at DATETIME DEFAULT NULL, login_verify_count INTEGER NOT NULL DEFAULT 0, email_new TEXT DEFAULT NULL, email_new_token TEXT DEFAULT NULL, enabled BOOLEAN NOT NULL DEFAULT 1, stamp_exception TEXT DEFAULT NULL);
INSERT INTO users VALUES('aee251b5-417d-409a-a90d-6b5efabb3631','2021-03-15 19:49:14.904254006','2021-03-15 20:00:55.943738261','a@d.m','admin',X'4e76d8006a19758a5c1e66a73bbdc0425328c5c46a75daaa13dcdde99573bad0',X'18a209e652a5e6f86b0e0dd858116ccec94cc625f464d03182f52071e8ce152cbe03f9b770f9943f92e2f8db99d24479bcec026ff36307e867b0332c20ca67e5',100000,NULL,'2.OdypxUOfz2ASYlHUUaehwQ==|Jhw1Bfx+VJ0JZo+81JDHJiCAtuNTckfksep6/vEUjOvZy7hMnbhgVKzqxhZeiTY/J3Jr6irfz50EYHnzjn53KiQFf9vBY7oe1rK/DWwW7ug=|Su0K2OxWHQE+qJfBtlqJa62wKanfdsE2ACOtJi5yxoI=','2.vuGbgOyjDHrrMBu9SfUQoA==|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',NULL,NULL,'0d056f16-22a9-48fb-9a4e-1962c2639873','[]','[]',0,100000,NULL,NULL,0,NULL,NULL,1,NULL);
INSERT INTO users VALUES('22a0187c-8994-4fe6-8836-d5ce81d59cfd','2021-03-15 20:42:47.166749056','2021-03-18 16:56:22.679619713','a@b.c','abc',X'16b622d75fd490884d6b94c24d0da170a5a38d570980121d3a94d5fdea3da542',X'952795c76afab924f1627e06ecca14dd6afe06dd990b4728e5e5647313abcd74390e731fc1ba547b61881e8c6d89061fc34eb40792e4db50a44d8584c447db6f',100000,NULL,'2.Z64yo+roCN6pmDZvzYgKlg==|yVnimBu0zpbwAA1//KlDezwEZdtcv7oH7o96eqEqt3Dm17psJ471addZfiYckkDQeFP+IFpYTtrCmN3gi9knfDQUdFcBSXMPiYpG0X4rDIo=|abyOagb4TLRhOWTmZua3vZZeBaxxUNxgIQMxaW4sJYU=','2.8BqMgOg8BbOO1CbOcPfKpg==|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',NULL,NULL,'93a787a8-9ee2-46bc-a891-a262b983b124','[]','[]',0,100000,NULL,NULL,0,NULL,NULL,1,NULL);
INSERT INTO users VALUES('30f778bc-8bfc-4e49-8453-26b98b9c1da3','2021-08-28 04:29:32.038059947','2021-08-29 04:39:09.068209456','shrinikethkana@gmail.com','SK',X'15bd641f940527ef886bfd72e8cd80ffaca2569bb5e61c0a6e43b8c8a305b526',X'8b7f1870c32d4bea67813805fd82554dea1bf886beb2f83f883d47fafbf07fbb9ec54f5644bab104cb7f52bfc8da2c945c2ce8bef54acaf3b380c033ec23cf65',100000,NULL,'2.974Y9KSQjnIpL5BjNcJ1WQ==|UbghA7fUVeHserN9L13SwEDSVs+hKDFvBMTrtfFw3KjnTIjkPDOJCanKj1WDXNzLal1PUJsBniEBA9embfUjCbHOzVTt/B2hmp9qwd0u83Y=|0L+HbBIDDmnWj6YDRLbqU3oH5HSqDJvCcjiuB/UdxLg=','2.ODLD80S1XIhS9xnihi4qnw==|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',NULL,NULL,'fab9a324-8cd2-4b1a-a581-0a1c1056e029','[]','[]',0,100000,NULL,NULL,0,NULL,NULL,1,NULL);
INSERT INTO users VALUES('ed69efb4-ad03-4dd8-ad2d-915d4c06b8e7','2021-09-12 07:36:02.344692245','2021-09-12 07:36:02.414539291','646www361@qskl.com','s',X'5fe7e7df1b33470b9ee4f61a5da86e6c0095b1f30239d0ac9f78fa181432e927',X'2c6a45637bd69ed8fc35d820be7613fa1842c3746c80538a3392437d58e2fcd8d230e9c7d3473c3c0ab71cf5868897d32a5d8b0ad5cfc96ed77eaf24864480c6',100000,NULL,'2.Uo7uf1WLFSOMk3cR1vXJcQ==|WVjwwF5XQNZVV+aSOrGINhkSJHoaxIqNX1gLpXDIdxS+r77mLTzON6BGApLMJmgZgQCk5oL+48wKJxTRZ+Dv+IXdP/jccUxWBAu1B+dMGRM=|L/9VjpUQ2SplNLaIJqPefXZmmTIWfXMDvaEI/Mc/L3A=','2.P/ufht5lAWXKuZVMT6an7Q==|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',NULL,NULL,'bd933471-7804-4531-b1e0-16d88d9b3c81','[]','[]',0,100000,NULL,NULL,0,NULL,NULL,1,NULL);
INSERT INTO users VALUES('8afbe61a-af6a-4af7-9d7b-bc32e21a44ca','2021-09-12 07:37:15.529804669','2021-09-12 07:37:40.531687938','646www36s1@qskl.com','646www361@qskl.com',X'a21ca6fbe464561b23b14bbea636310a49340856e94ea4c59380598d5ccedd1b',X'275ca3851546dec6add7de9a1969b0580e8b4805566b8c4571e8cc68853c4ab28db1aeec0f88edca8fc328a4e19aaeb51f4f4abebdbc804cef865ecdfe7b3579',100000,NULL,'2.RY2BWlbFMOkwOppt6eZWcA==|/q61oc9d1VHEMf28r3+6OQtLBkUbT8eubX4UnzLua1SI9TrPknrrbPCBbJ+GqGo23Sbq5dX7OhaP9WkoYXKwHwpm7Oc6Am/qygfHcnE/CMg=|SeiZnVlP0rb0XUbzq703tQJxMZJZtkRTkMXNIn5eGAg=','2.WvAFup5uhRBAQQAwhdQ1Cw==|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',NULL,NULL,'98ad2f9e-f87c-4cd1-b2f5-c94b76bfeb79','[]','[]',0,100000,NULL,NULL,0,NULL,NULL,1,NULL);
INSERT INTO users VALUES('44498aa1-8213-4b5a-8c0e-49f99b5d9633','2021-09-13 09:19:40.719918951','2021-09-13 09:19:40.817021055','ggg@sk.com','我',X'2e35d9a7a2309da211176ec102db9d1fefe61033a669af3f72d7a0d6db3154ab',X'b333edec1354058c9e3eb8c380f799f9c608c154ee813741b0f8df19e622f9c20dbc0ded55b391886fbdf52f73d6f1d7f42d4b94e8af87469c2dfc59d968d292',100000,NULL,'2.0vwT0MYPUCUTb/z4w8ybsw==|f66v2d3Vl2byFu3URbS4XNGKUHdQVZR/0CknwZsVYTrW37rnmb/N8pwOuSSeRmAMXs8XjSusmrwhxNSpGgCLsQc29QA0Dgag1JoNkc4AjJI=|MHZP70BQ7wwJ4Ikp7TugafygY3mfS1ADPJ19rb5d6mE=','2.BtPnk8OU/GQyumxWjZvxHw==|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',NULL,NULL,'2a044b36-31be-4013-92b7-bb67c1c2b5fb','[]','[]',0,100000,NULL,NULL,0,NULL,NULL,1,NULL);
CREATE TABLE devices (
  uuid          TEXT     NOT NULL PRIMARY KEY,
  created_at    DATETIME NOT NULL,
  updated_at    DATETIME NOT NULL,
  user_uuid     TEXT     NOT NULL REFERENCES users (uuid),
  name          TEXT     NOT NULL,
  atype          INTEGER  NOT NULL,
  push_token    TEXT,
  refresh_token TEXT     NOT NULL
, twofactor_remember TEXT);
INSERT INTO devices VALUES('eb2c618c-4e19-41b9-97a2-6858ea8b956b','2021-03-15 19:49:19.260283908','2021-03-15 19:49:19.263249211','aee251b5-417d-409a-a90d-6b5efabb3631','chrome',9,NULL,'dPwFbTMNY4ihSCOqSDvbp3bRRPguzscwQZb8Dy1c-fc4l2ckNUSf27b3Nh_n1Nfd4vxwzPIpR2JctkfoO-wKNw==',NULL);
INSERT INTO devices VALUES('0526f7c8-f032-4bcd-92b6-ef8a5dafc768','2021-03-15 20:42:54.907004267','2021-03-15 20:42:54.909492281','22a0187c-8994-4fe6-8836-d5ce81d59cfd','safari',17,NULL,'ijDvt4EK9RzsCkJTOSMrtNwWvq7twORlUSCQ7gpAgrimSvJ6XbFDE_RcGw81DpjU9cYiRiMwT78cQlfIbyvCUA==',NULL);
INSERT INTO devices VALUES('fc8cc107-b216-43ff-a03e-3ff632fee730','2021-03-16 03:05:37.043538637','2021-03-16 03:07:38.552665902','22a0187c-8994-4fe6-8836-d5ce81d59cfd','chrome',9,NULL,'4MsxmnzBCvLc7dsUwdNx6_38ekUWq1DDTlPee4lnmB5jP2fxVSOuld2ndR7ZjuA_MBf2R78dL9ibh9MYeeF1EA==',NULL);
INSERT INTO devices VALUES('451fbe0f-8a44-4abc-ab92-01d35d0e9af2','2021-08-28 04:29:43.574323355','2021-09-05 03:29:13.344422433','30f778bc-8bfc-4e49-8453-26b98b9c1da3','chrome',9,NULL,'yXhZv5bQBbn9hQdzAgLdLfJj9yrZg9NjLeo-Kk_Hx1JasILvFPD0YlnKkKEinFbv7hmA0rGGPOjkDzE6P64pUQ==',NULL);
INSERT INTO devices VALUES('3b673444-d5a7-4e4c-b31b-6bdf4daceaec','2021-09-12 07:37:18.167848926','2021-09-12 07:37:18.171330427','8afbe61a-af6a-4af7-9d7b-bc32e21a44ca','chrome',9,NULL,'kwgqF4jHmcd6KiyQqBo4_Y0kTrRsd93oPbZd-hEy_dIuLbyAWHFaNopKpl2_Sz9VnwIktFJ9E2Wo4ofkZ_CGlw==',NULL);
INSERT INTO devices VALUES('ea1eeb62-9565-4e79-adf1-06aeed55a069','2021-03-16 03:15:01.794134491','2021-11-05 01:27:53.311356840','22a0187c-8994-4fe6-8836-d5ce81d59cfd','chrome',2,NULL,'YMc8ntdY3hdE4xbw-g7S2NWi5Wr-4AkjbndqH1MZlLy8Zo_ztvn5Cd1h986npUggPryvsZ9ADQQVf0fXBZGAog==',NULL);
CREATE TABLE folders (
  uuid       TEXT     NOT NULL PRIMARY KEY,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  user_uuid  TEXT     NOT NULL REFERENCES users (uuid),
  name       TEXT     NOT NULL
);
CREATE TABLE collections (
  uuid     TEXT NOT NULL PRIMARY KEY,
  org_uuid TEXT NOT NULL REFERENCES organizations (uuid),
  name     TEXT NOT NULL
);
INSERT INTO collections VALUES('0300eccd-3b9a-4aee-a342-c939d06b5ac3','0ce747d6-4fd4-43e5-adc7-e45d72bcd3a4','2.QOqkjzKkQ/dVKbEIpxDv+w==|omsbbpVFSyk8ICLkFVjyYsuB7MR/GSznG2knBSSTSMU=|vC1XNLikXu6duH/jg5pQ0fluqWbxslpJGeAReg1oF2E=');
CREATE TABLE organizations (
  uuid          TEXT NOT NULL PRIMARY KEY,
  name          TEXT NOT NULL,
  billing_email TEXT NOT NULL
);
INSERT INTO organizations VALUES('0ce747d6-4fd4-43e5-adc7-e45d72bcd3a4','admin','a@d.m');
CREATE TABLE users_collections (
  user_uuid       TEXT NOT NULL REFERENCES users (uuid),
  collection_uuid TEXT NOT NULL REFERENCES collections (uuid), read_only BOOLEAN NOT NULL DEFAULT 0, hide_passwords BOOLEAN NOT NULL DEFAULT 0,
  PRIMARY KEY (user_uuid, collection_uuid)
);
CREATE TABLE users_organizations (
  uuid       TEXT    NOT NULL PRIMARY KEY,
  user_uuid  TEXT    NOT NULL REFERENCES users (uuid),
  org_uuid   TEXT    NOT NULL REFERENCES organizations (uuid),

  access_all BOOLEAN NOT NULL,
  akey        TEXT    NOT NULL,
  status     INTEGER NOT NULL,
  atype       INTEGER NOT NULL,

  UNIQUE (user_uuid, org_uuid)
);
INSERT INTO users_organizations VALUES('b489978b-e56a-4d09-92a9-aca78093e589','22a0187c-8994-4fe6-8836-d5ce81d59cfd','0ce747d6-4fd4-43e5-adc7-e45d72bcd3a4',1,'4.uTYmKJLy6HEJmoLb7Wea4GkfCHO8osxI47wvzGPn558CF9nDFjCrqORHtJCkoYKTq+yrfgdR+L145uopa5fiu7xVPLf1VOoTKoFME7s+zq4UWH+QwqSCtt+USe6EeUQG/Z0R9i+oFCMtvURAgtfjYx4d9IKlXeLQQE85aYQ3o62bXKliEnOjdH9fuetGPTYCjQNwy5dqpLgr8J0UYeIPzasFMYYp6oaWDJfA6lGqjya+OwgoJUcaM2UVbrQgNQw/T6X/hjFyb7tY8F4UH5Eu3P+kw4vVLbg4Gg3Gm3p6UUzu5ljl2oGyNyyXbMVN/Juohky9X2BfuSmzfJ+ZG4zxXw==',2,0);
CREATE TABLE folders_ciphers (
  cipher_uuid TEXT NOT NULL REFERENCES ciphers (uuid),
  folder_uuid TEXT NOT NULL REFERENCES folders (uuid),

  PRIMARY KEY (cipher_uuid, folder_uuid)
);
CREATE TABLE ciphers_collections (
  cipher_uuid       TEXT NOT NULL REFERENCES ciphers (uuid),
  collection_uuid TEXT NOT NULL REFERENCES collections (uuid),
  PRIMARY KEY (cipher_uuid, collection_uuid)
);
INSERT INTO ciphers_collections VALUES('c253075e-f393-4d08-a6ba-34bcab875133','0300eccd-3b9a-4aee-a342-c939d06b5ac3');
CREATE TABLE attachments (
  id          TEXT    NOT NULL PRIMARY KEY,
  cipher_uuid TEXT    NOT NULL REFERENCES ciphers (uuid),
  file_name   TEXT    NOT NULL,
  file_size   INTEGER NOT NULL

, akey TEXT);
INSERT INTO attachments VALUES('4ca195976ab9fdd8e8a0','9ccab3b2-af39-4720-9245-1069b1c2aa96','2.mFSiXGHDRsR2bTRgRA0exw==|p60I8/Im8AyI0ZDWlcN84YEOw+2sN4D/4Z/yMJgq9X0=|9bYG+OZMDpgux91Sfh/koZPY+jvFP9ozBsjPDWHqW4w=',1333377,'2.3npGkgJhosfilYcLcCLQ/w==|l+TRkCbkHLD2cp/0q2WYmBSgT2vAgmkUXE0MiRrfzC1OeoSVigeIT3e0eMxwF+5vxkK11OGOdSkHWDkACu1/XQWFU8Avsw8tUiYekliB62U=|SVivy8PKEKB9EokeHj9JFsvDWIJnIMSzbOxIT47exqQ=');
INSERT INTO attachments VALUES('a2cfab5cfa24849b6da2','11c4e187-5914-40fb-85d0-fad600d8971d','2.rSJyC9wgXp3LPA4GBD6ftw==|NSfCy4FkRfGgsUy/OQ6ZrA==|alfAaQJ4G8Je1aUtk8SaZvvszUp1tiXanD3z9cIo+2U=',6305313,'2.w6LnvWnavlFsmxqYfHXvuw==|NJIBIrA0NIiOcIGzt9JzwYq0VI+WzQrbTpBhoHIaZa/XyBG6xn220aSjZGRk5qHvyBtAAaxa1PHTVe/YWxjYzpbvC69qsdS/JG7UOY5Zlwg=|VzqiEu6LO+qUIkvh3oluM75vyti7cktk8fmFptDwcFY=');
CREATE TABLE twofactor (
  uuid      TEXT     NOT NULL PRIMARY KEY,
  user_uuid TEXT     NOT NULL REFERENCES users (uuid),
  atype      INTEGER  NOT NULL,
  enabled   BOOLEAN  NOT NULL,
  data      TEXT     NOT NULL, last_used INTEGER NOT NULL DEFAULT 0,

  UNIQUE (user_uuid, atype)
);
CREATE TABLE invitations (
    email   TEXT NOT NULL PRIMARY KEY
);
CREATE TABLE org_policies (
  uuid      TEXT     NOT NULL PRIMARY KEY,
  org_uuid  TEXT     NOT NULL REFERENCES organizations (uuid),
  atype     INTEGER  NOT NULL,
  enabled   BOOLEAN  NOT NULL,
  data      TEXT     NOT NULL,

  UNIQUE (org_uuid, atype)
);
CREATE TABLE favorites (
  user_uuid   TEXT NOT NULL REFERENCES users(uuid),
  cipher_uuid TEXT NOT NULL REFERENCES ciphers(uuid),

  PRIMARY KEY (user_uuid, cipher_uuid)
);
CREATE TABLE IF NOT EXISTS "ciphers"(
  uuid              TEXT     NOT NULL PRIMARY KEY,
  created_at        DATETIME NOT NULL,
  updated_at        DATETIME NOT NULL,
  user_uuid         TEXT     REFERENCES users(uuid),
  organization_uuid TEXT     REFERENCES organizations(uuid),
  atype             INTEGER  NOT NULL,
  name              TEXT     NOT NULL,
  notes             TEXT,
  fields            TEXT,
  data              TEXT     NOT NULL,
  password_history  TEXT,
  deleted_at        DATETIME
);
INSERT INTO ciphers VALUES('9ccab3b2-af39-4720-9245-1069b1c2aa96','2021-03-15 20:00:26.042504415','2021-03-15 20:00:26.493158657','aee251b5-417d-409a-a90d-6b5efabb3631',NULL,1,'2.xnQhMUhltjmvA7UBPDzT+w==|hvLhbV3Lhr/PKwuZDcO8Dw==|0K0PIBa3H7xpseX+Zm7ksWHaZnofy5O60p7oMVOcUow=',NULL,NULL,'{"Password":"2.5WcJIe0qquxIXJoEOvNR7w==|fbZ8DWYIyOLwkd510mclsw==|bTD8/LUQalu+Mvp4XWlk8qECnjrrdpKgiwopmI+kCNs=","PasswordRevisionDate":null,"Totp":null,"Uris":[{"Match":null,"Uri":"2.RdT3NYyHQ9KDE2bsQKhXMg==|1gIz3ktYg9J1jY6Kyq9WQA==|kkjRJ9R5Fg11LPeLs26yOevA2wZLsXSQmUA5Uwf/V1w="}],"Username":"2.IyohczYDlqZNP5VTeE7r8g==|si2G3FaTsAUVwZdwRp8x0w==|tJFhAy9d4Q3jM51DP8lkmDf8SZDHjAclBysplK3gGuk="}',NULL,NULL);
INSERT INTO ciphers VALUES('11c4e187-5914-40fb-85d0-fad600d8971d','2021-03-15 20:43:12.728899797','2021-03-15 20:43:12.737020712','22a0187c-8994-4fe6-8836-d5ce81d59cfd',NULL,1,'2.6kbJeIoovWtcunw9y1FhHQ==|7lFMAIhVNzYQ9DSO3rTAng==|XAJI20FVIm7RytrmEVgzCt+UkhEHSJwvM73CWet79Ps=',NULL,NULL,'{"Password":"2.M32i5jAA6paQO2nYDcTctA==|24w2yks6aAQfhkiTFtLNyA==|mA6VMb0xr1MMB1eypRUb+R+vZJ8JrnEl2RfvsoWnNqs=","PasswordRevisionDate":null,"Totp":null,"Uris":[{"Match":null,"Uri":"2.Xf73XIz4FoF4X6Zh+QcVhA==|S2pORLOmEOylXWfLo2Wrew==|hzGjHUjBJwUhd53KnQBMIq/2rrzJsJ9M/OQef3s+ARo="}],"Username":"2.W31ps/RoPKewlcXxCW16dQ==|qEhwZFglKgZ+UNaw5LOpbQ==|bUy0VfFnPxoR/S56o6pEiEdcP1g6PUai8X5ZeRCwkDw="}',NULL,NULL);
INSERT INTO ciphers VALUES('c253075e-f393-4d08-a6ba-34bcab875133','2021-03-16 03:08:47.305691764','2021-03-18 16:56:22.644773293',NULL,'0ce747d6-4fd4-43e5-adc7-e45d72bcd3a4',1,'2.yXkND7k0IylhNCO7I/3bmw==|M9ADu+51UomiNHGXkm1mcg==|8zR2+XYGrIrLYySfnCF2J3f5gO7cRbvphNB2nZKqLsI=',NULL,NULL,'{"Password":"2.qH+2czR5m61XZy3ugLrMVw==|9KDEl84BJHBXUPAb/sWXUw==|jvwtzTJNvijcPUeP7oBbYWs9fePpeqs30c0CM3vJ1Ag=","PasswordRevisionDate":null,"Totp":null,"Uris":[{"Match":null,"Uri":"2.n9Zvf/Hf4Nnl46zhAShM0w==|FFJzyqyDVHQLG2UhJ+Dp+A==|hP/vFnE9VhwoVGVcoXhf9q1tw0fsGgz2HmXoFazcvNY="}],"Username":"2.5XQu8fQUE35S1IrvYeNvhQ==|0rCsn4ZcExaC7d0M5d1cwg==|4ghorrWIXXUa40iOtKrRwHr53YKs7FCfjrzNgi/M0NM="}',NULL,NULL);
INSERT INTO ciphers VALUES('3fe80fa5-e55a-4cde-8f93-21c2dcfc4712','2021-08-28 05:27:40.961926212','2021-08-29 04:39:09.060854373','30f778bc-8bfc-4e49-8453-26b98b9c1da3',NULL,1,'2.utu3BGZDvBc/jUmgb+8UJw==|zI8kh88WhzoQqg4sadjt+Q==|8GP0MrjG/mjpaqyc5cySvmD8Gd3ZsfWbt7dBOE92aPw=',NULL,NULL,'{"Password":"2.DN8kAt0Oa8GJszkuyWsGBA==|qzUfsaJq3VldAW7chZv0dg==|X+dQy4d4hLwTGr+IbhLEQ4ilTwsj4EV+jrrKZ0p4C/w=","PasswordRevisionDate":null,"Totp":null,"Uris":null,"Username":"2.TUxae9bzmvNeotW1FM3FTw==|JOLpRaz6cTrgQw/7CDFaAQ==|bQHyi6swTF4dSv3SEAkyVp1gUfGiOwfIWoaV1+mENxA="}',NULL,'2021-08-29 04:39:09.054663078');
INSERT INTO ciphers VALUES('fc206e4c-8da5-4466-b0a6-aa7c79a202bb','2021-09-12 07:37:36.318878511','2021-09-12 07:37:36.368658651','8afbe61a-af6a-4af7-9d7b-bc32e21a44ca',NULL,1,'2.wli0aWMtMJWz2fnvcoJq4A==|IoOk2bLk6iEe6BRuNksw9w==|ouIz9HEVgZ5HYsydMkhvc97A9TUV5kHGPRtCbnCViZk=',NULL,NULL,'{"Password":null,"PasswordRevisionDate":null,"Totp":null,"Uris":null,"Username":null}',NULL,NULL);
INSERT INTO ciphers VALUES('f77fc483-440e-43e2-8fe0-498ab6444852','2021-09-12 07:37:40.519261052','2021-09-12 07:37:40.527701480','8afbe61a-af6a-4af7-9d7b-bc32e21a44ca',NULL,1,'2.MBgW76ymEBprKzEyjOskwQ==|r/mhIK1EHY1fNv7Q4DU+ag==|NarVzbhA3esjckxZYbETf3Klxg1POfbp08DHGqQj60E=',NULL,NULL,'{"Password":null,"PasswordRevisionDate":null,"Totp":null,"Uris":null,"Username":null}',NULL,NULL);
COMMIT;
