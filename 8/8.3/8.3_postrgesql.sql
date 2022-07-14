create type gender_request as enum('male', 'female');
CREATE TABLE users (
                       id serial                    NOT NULL UNIQUE PRIMARY KEY ,
                       lastname char (64)           NOT NULL ,
                       firstname char (32)          NOT NULL ,
                       birthdate bytea              NOT NULL ,
                       email char(255)              NOT NULL UNIQUE ,
                       phone char(13)               NOT NULL UNIQUE  CHECK ( phone = 13),
                       gender gender_request        NOT NULL ,
                       timezone char(37)            NOT NULL ,
                       registration_time timestamp  NOT NULL ,
                       registration_ip char(15)     NOT NULL
)