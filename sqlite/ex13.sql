drop table if exists person;



create table person (
  id integer primary key,
  first_name text,
  last_name text,
  age integer
);

alter table person rename to peoples;

.schema peoples

alter table peoples add column hatred integer;

alter table peoples rename to person;
alter table person add column weight integer;
alter table person add column height integer;
.schema person


