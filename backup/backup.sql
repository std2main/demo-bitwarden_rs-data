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
INSERT INTO users VALUES('aee251b5-417d-409a-a90d-6b5efabb3631','2021-03-15 19:49:14.904254006','2021-03-15 20:00:55.943738261','a@d.m','admin',X'4e76d8006a19758a5c1e66a73bbdc0425328c5c46a75daaa13dcdde99573bad0',X'18a209e652a5e6f86b0e0dd858116ccec94cc625f464d03182f52071e8ce152cbe03f9b770f9943f92e2f8db99d24479bcec026ff36307e867b0332c20ca67e5',100000,NULL,'2.OdypxUOfz2ASYlHUUaehwQ==|Jhw1Bfx+VJ0JZo+81JDHJiCAtuNTckfksep6/vEUjOvZy7hMnbhgVKzqxhZeiTY/J3Jr6irfz50EYHnzjn53KiQFf9vBY7oe1rK/DWwW7ug=|Su0K2OxWHQE+qJfBtlqJa62wKanfdsE2ACOtJi5yxoI=','2.vuGbgOyjDHrrMBu9SfUQoA==|BXSSOxWsEsuBem6e6w1Y8V5jSsxKuF002mnHG7jRIM6xXzv8eJFjcDowLI9KhZXQCP3YKCMkTSFXLZNKdnt0fpbamL8RKHuBR6j4ZC4VZJdvz06kDbqmHrSMkW+Czk3UFj0NE4lBll1eiuRLH/EYtcsmc+w2rgdGzOSP7VJETWMu4SR8YJN88MnKUkQwyb4bn7ktOAhNECmWepEsNjjdLDGMKqWv/K1thQJF7Tc7p6iDjDujlGi/OoDAcYBFzPKEecXIMXU9XDy73wj6kKR2FU2eZg6k1a78PTw4NOXgDhXtcHP3cG+jcgJQDPSiAJKpUC878cpvVqqX72BcDhQo9zS6xicOAy53+mAZtDdldunJsMbkfac5KhaavSd7DDcsOTu5cl0ESZR5wqZ/Hk1I53WY0qun8zHQm6cw6mLz99kJgzN7xADFmILhFOpng0gftFvmupjJW2Jmne2bzvBSZ1no3V7cwoO2xzXf0T7TLVXFFI5/iJNIdo9iMuG+7oVNPt/imPowp/jlRvktXPOJBn2MdvZpJQwIUTXxyFGtlc5UsIXIRlCbj7bzarWJ4nZAvZGI3KHnoCV1EH1IVzQVfsAo9qo2pIoYlIdzZY8J/nVPKky/t5zqsJSv5iOOwrVfM4R01QnZWRCQZMG0sywFs+P47I52v6vdMBVq3yaknGEWgv+v9bxOISXbPtlMQ6Bph1QsdATstjrN7qF2eQ8QeIuARmZ4xlKgdpEG18NdXxNU6uUAwbsaLKCKKSWl+BfCnfW4o3HDeO6UsoEVLd8jajLunMLT0gwtF62sbwrvYqQ72NdKI2/3vKFVK2WeEWxLvv8jnWsjUevK1vYwW1IAKxx4Gssr1bOvZe6x3bleGYQb+g+E8zVhGMbNkaOI9GSTH11T3UZ7VxhHiNctB/MgtBU7mWQJbCQTXwgBKtE0g+ODqYjw3qrE57MvoHBsmnJajnju5bAEa273hSa974oelj9WQGFqYmnXhvcNFd4CVnVWQhHTd1UbPvBuck/WImodVZrnCyQyot1b9HqbONcb7Xer+S08Ke/DdjILcF1IUOAb2WTuaWnicqOlX41nLWVz5hnY2qnNUxZB5ka1AOmRXo9Y7BgoRHP+kB8GWGfkMV9QEoR7t0r4Qh9NsEvcTMP31A96JVpvoBlV+cBlhEoFJtzL/32MPtp9W6W4S+t/Papj23VlR2KVr4IbR3bG/Yw5HX7T2Ygg803FIT1SBCuW6pUPBrTR5bzcXa98+2FW/nre1lcM7R7L3AoIl6quUWTuYRXluKJeRGgSGWCTmx7CXIc049lm3BCAOTsfbtObqhUj4H9+4yQjv0PglJcKJzl7lFIQNEbmcnJFW1ARtqgBNWcfHqNdVanueqHybtMQW/YUMIpekrKRQDfV0dovbmw+WXhz2+IUG9pSppGBVbJNzWGIBugaRm7rDHdJUc51R2FnqGGu/9srLuuXvuc96trLjzSbsbfRvdMqtAXy+5mzAbBhfx8GPoOa9Qo6t/+oPgGPuwMmsE864GLgzL3Cla/W7lIDsZeOyz2+LhWJSU5r18qHp0gcGO5/oinGJYf7rR9hTJNTcBD1T36DHN1EaUq1bvUJU/jJ8hsTOg4Z/+k5ph9FgPZBewQcmM+whU+wJRg=|5u9Bb0HF2wcQ23DwSf22gmwvyL51xLYO0yrPQU0iWeQ=','MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqCrwu5Hz/qLpiCie1Ilr5VdxY4JX7wp/XX33bT3zDwikuR+l3/JxnfMyq2ZUuaZYpHSNrQTS1WmdHSDBf19A625nyPB9U7YEUli7U3SY6XEnZpw4fcAMyhJ+MqpvGSzSGYsXIYF06QunlFbFLYTxnlhlVdt5ySZ98vVPyYMzOt1y3j/KrBg7fU12f9e6S4f8ykCzEMH8O+vrOqiz6zYJEPPqE4Rn6dPa7KjFgDUBf0Xf38IR4NJO/5L6EbvhJLn7CwBxVQILs2QFKifw8kuiwUPFEkPxOgJm1rKwxeKzLFU+jKvjkGLUvAX39owZGMP/VifIT/B4L2qBHAuHZ8J5kwIDAQAB',NULL,NULL,'0d056f16-22a9-48fb-9a4e-1962c2639873','[]','[]',0,100000,NULL,NULL,0,NULL,NULL,1,NULL);
INSERT INTO users VALUES('22a0187c-8994-4fe6-8836-d5ce81d59cfd','2021-03-15 20:42:47.166749056','2021-03-18 16:56:22.679619713','a@b.c','abc',X'16b622d75fd490884d6b94c24d0da170a5a38d570980121d3a94d5fdea3da542',X'952795c76afab924f1627e06ecca14dd6afe06dd990b4728e5e5647313abcd74390e731fc1ba547b61881e8c6d89061fc34eb40792e4db50a44d8584c447db6f',100000,NULL,'2.Z64yo+roCN6pmDZvzYgKlg==|yVnimBu0zpbwAA1//KlDezwEZdtcv7oH7o96eqEqt3Dm17psJ471addZfiYckkDQeFP+IFpYTtrCmN3gi9knfDQUdFcBSXMPiYpG0X4rDIo=|abyOagb4TLRhOWTmZua3vZZeBaxxUNxgIQMxaW4sJYU=','2.8BqMgOg8BbOO1CbOcPfKpg==|2rFztu1jgoVel/dWCWvwTBe17kUfUFbTkeakQpgQ7gpFi1hiuxLiF8poUHsSmxLdMQZX9moSsERHbr8WjVs9l2H2GvrExnPTv0hVUhLEHPGNLzbGBaYlLp985qhWeCSAz3mjp5S5R6dqSEZ9gFgViQj2PcWH+tXbBOcwK0rIGIaZiG/yx7+X+TVZFCxN+dL5zdxL3o9944Bkj99NUIQikxnhwXyNH9GC11u5PQhoP6gxrqYEmSNgP+F4TfIoNOuYvxUen13vNNJzP/4geol8l54c1UBVFZ4NJh9KUm61BrHx4z/C0EHWYPCF8Y0zyEy/MK0AKOaElSsu6Ixq7IvTVQhSy/xbI1bLnjvcCPUjk5FwWCx4MMiaCZO6M9mekEyn4aHMOoLSbEPPjaXYBmSiNEVJzGYBvD/5zd44nLazc37R3pHuHaH0Wjx+Uf8cyYncwq3Uo8zbc9F+n6956aAuPcXWk8MGPM5EESfBg9/DBCvmlVUMmwtCV6nj+RbFzIBkdgChpxpWEMP/IGaGZR3h+vsqwPZ7GrRgIPUWCdUekJbNKCs8pJVt6hDPpCs6ssPVAzwJPlqelapc/VPw2x4IBOucddt/YwzQp/NF/STVRjwToPgWl1uae/wXeZWJfQSy9tMQujP3gPVDw9GGto9df9iURiT3Fb9M7hru+FDz+GeOhQPSU2FzOrANVO0phkqGOPuV2lqpGRqwDbTNo7+4m+kzYds9ImB9Fh1zuHDrZasoaeqxCDzuBYoLPr78oRrb02HivwM6dhAzGe8AICBHKyUr0TQ9wK3iGVB3mTW8y3k+uXLA9AL6dH1siBWP7EY7bspCR6DPo65Wu84mUOdD46Prz3L5MYMNMFUJWYOpcnFfwPt1SeQxW4daoRt9fD9wn7SJEV50fr8DC2VtJWRwqAMsozVWzqh3aEEuBcmguhDS5GHrmAJml+zJfPvilz6xzJeKsozocQDAgBC321fBVauwozAxLX9jBKxXHGT7vO9QkrOGPBfDFjm4bCWoqRVU1KbBhfSvFR89UI6j01sZMRmzrWqtw9fHaySD2zSwCDXC8XTHuuvjRSA+FaauouD6RBKU7ZPV1zY61XHkiEN0Bel0i0bPqClrp5mNf5IJjLj9VP7RWne+zfbVp3r2dO3aLnuIfUO5E25oBphNVlqY/AkTpiW3qPdBigARJm+ydTwtqUXV2o7Xg8pqExpI0eQcVnel/bprTwYFdAAYuUOHcdrMt90hqjdvUiYFkxiGDwm6Cnsv6k79W3O+ZErxUiDLVvJncIHl870v+b6csIzRj/G8PQINuZ/lCxggairCeUtNX3z0wFILibX3/CTxjoq2v4cIdBGKTIKo8/Q3ofHgBwuVS8h0Y2iIu39MMUrP+2WJCHhocB2Q1S567hGxgF9sn5wSaTdVX+Re16PtV7PJUHAk+mZEhMA4BvflIxub7XjehrO9GL2Iv+8U6NgyF9ZwCUNBjvUSmqmx6WTbrPKSRmW/gMPhz6iXQKKBRPM06twUzlxkIrsM8+03ClvHBCnOyhnbhvRQW/JjcFuz+YVKn3BoVlQMbnd5LrjFeeAxS1XKBZU1kENP0mFAiJ+2QQx4QqPpjgaqxBnKRvuSOyfgpdM1S2hmn7nm6SRDk7lmYS4=|5Gm/cFBFgORo/4H+dPYrzbIPFFj8Z06SbdQLkc7LNEY=','MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyTSUoj6aDrSw9Uqy9PC9raTo61fd0uq36S32cx0ORETq1kvcuxxpwMXeKChS7B5tljkemJfapzXzN1N48+p6LhboGJ5FTodStl8RlJR2t74zsWSiXkwSWUTKOtWXEKHufaItNiv2u+5b6i++Rfls4wU9AeEp5c1+6DpNGvUVphUu8FX+HIR9WVVoNP9lQYp0mmmAm6EOE+hKoombw09wEq+lCPSkyKt4CfbmdVy9nhb+yOvhkctvnR/Y+PmhmSo+OLAiK0Q8X+AsuHfnTbeLSTlMGQNCRzanA+IGhniLolldrU1XnI/svOnZQO/4N4xSdETFZl+LO77Cy+2/e8blmwIDAQAB',NULL,NULL,'93a787a8-9ee2-46bc-a891-a262b983b124','[]','[]',0,100000,NULL,NULL,0,NULL,NULL,1,NULL);
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
INSERT INTO devices VALUES('ea1eeb62-9565-4e79-adf1-06aeed55a069','2021-03-16 03:15:01.794134491','2021-04-07 04:13:20.955903524','22a0187c-8994-4fe6-8836-d5ce81d59cfd','chrome',2,NULL,'YMc8ntdY3hdE4xbw-g7S2NWi5Wr-4AkjbndqH1MZlLy8Zo_ztvn5Cd1h986npUggPryvsZ9ADQQVf0fXBZGAog==',NULL);
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
COMMIT;
