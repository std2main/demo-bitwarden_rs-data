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
CREATE TABLE organizations (
  uuid          TEXT NOT NULL PRIMARY KEY,
  name          TEXT NOT NULL,
  billing_email TEXT NOT NULL
);
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
CREATE TABLE attachments (
  id          TEXT    NOT NULL PRIMARY KEY,
  cipher_uuid TEXT    NOT NULL REFERENCES ciphers (uuid),
  file_name   TEXT    NOT NULL,
  file_size   INTEGER NOT NULL

, akey TEXT);
INSERT INTO attachments VALUES('4ca195976ab9fdd8e8a0','9ccab3b2-af39-4720-9245-1069b1c2aa96','2.mFSiXGHDRsR2bTRgRA0exw==|p60I8/Im8AyI0ZDWlcN84YEOw+2sN4D/4Z/yMJgq9X0=|9bYG+OZMDpgux91Sfh/koZPY+jvFP9ozBsjPDWHqW4w=',1333377,'2.3npGkgJhosfilYcLcCLQ/w==|l+TRkCbkHLD2cp/0q2WYmBSgT2vAgmkUXE0MiRrfzC1OeoSVigeIT3e0eMxwF+5vxkK11OGOdSkHWDkACu1/XQWFU8Avsw8tUiYekliB62U=|SVivy8PKEKB9EokeHj9JFsvDWIJnIMSzbOxIT47exqQ=');
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
COMMIT;
