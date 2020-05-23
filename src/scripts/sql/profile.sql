/*
 * Copyright (c) 2020 Jonathan Paz
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

drop table if exists profile cascade;

create table profile (
	profile_id bigserial primary key,
	user_subject varchar(255) not null,
	full_name text,
	given_name text,
	family_name text,
	middle_name text,
	nickname text,
	username text not null,
	encoded_password text not null,
	picture bytea,
	website text,
	email text,
	email_verified boolean not null default false,
	gender text,
	birthdate date,
	zoneinfo text,
	locale text,
	phone_number text,
	phone_number_verified boolean not null default false,
	street_address text,
	locality text,
	region text,
	postal_code text,
	country text,
	created_at timestamp not null default current_timestamp,
	updated_at timestamp not null default current_timestamp,
	enabled boolean not null default true
);
