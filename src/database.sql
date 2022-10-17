
CREATE TABLE "users" (
  "id_user" integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
  "name_user" character varying(50) COLLATE pg_catalog."default",
  "email_user"character varying(50) COLLATE pg_catalog."default",
  "password_user" character varying(100) COLLATE pg_catalog."default",
  "status_user" integer NOT NULL DEFAULT 0,
    CONSTRAINT users_pkey PRIMARY KEY (id_user),
    CONSTRAINT users_email_user_key UNIQUE (email_user)
);


CREATE TABLE "channel" (
  "id_channel" integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
  "namechanel" varchar(50) UNIQUE,
  "id_creator" int,
  PRIMARY KEY ("id_channel")
);

CREATE TABLE "channelUser" (
  "id_user" int,
  "id_channel" int,
    -- CONSTRAINT "FK_users"
    -- FOREIGN KEY ("id_user")
    --   REFERENCES "users"("id_user"),
    -- CONSTRAINT "FK_channel"
    -- FOREIGN KEY ("id_channel")
    --   REFERENCES "channel"("id_channel")
);


CREATE TABLE "message" (
  "id_mensaje" integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
  "textmessage" varchar(255),
  "id_user" int,
  "date_time" TIMESTAMP,
  "nameuser" varchar(255),
  "id_channel" int,
  -- PRIMARY KEY ("id_mensaje"),
  --  CONSTRAINT "FK_users"
  --   FOREIGN KEY ("id_user")
  --     REFERENCES "users"("id_user"),
  --   CONSTRAINT "FK_channel"
  --   FOREIGN KEY ("id_channel")
  --     REFERENCES "channel"("id_channel")
);

