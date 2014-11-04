--
-- CREATE_FUNCTION_2
--
CREATE FUNCTION hobbies(person)
   RETURNS setof hobbies_r 
   AS 'select * from hobbies_r where person = $1.name'
   LANGUAGE 'sql';


CREATE FUNCTION hobby_construct(text, text)
   RETURNS hobbies_r
   AS 'select $1 as name, $2 as hobby'
   LANGUAGE 'sql';


CREATE FUNCTION hobbies_by_name(hobbies_r.name%TYPE)
   RETURNS hobbies_r.person%TYPE
   AS 'select person from hobbies_r where name = $1'
   LANGUAGE 'sql';


CREATE FUNCTION equipment(hobbies_r)
   RETURNS setof equipment_r
   AS 'select * from equipment_r where hobby = $1.name'
   LANGUAGE 'sql';


CREATE FUNCTION user_relns()
   RETURNS setof name
   AS 'select relname 
       from pg_class c, pg_namespace n
       where relnamespace = n.oid and
             (nspname !~ ''pg_.*'' and nspname <> ''information_schema'') and
             relkind <> ''i'' '
   LANGUAGE 'sql';

CREATE FUNCTION pt_in_widget(point, widget)
   RETURNS bool
   AS '/.automount/genh/h/i2/pidur072/postgresql-8.1.4/src/test/regress/regress.so'
   LANGUAGE 'C';

CREATE FUNCTION overpaid(emp)
   RETURNS bool
   AS '/.automount/genh/h/i2/pidur072/postgresql-8.1.4/src/test/regress/regress.so'
   LANGUAGE 'C';

CREATE FUNCTION boxarea(box)
   RETURNS float8
   AS '/.automount/genh/h/i2/pidur072/postgresql-8.1.4/src/test/regress/regress.so'
   LANGUAGE 'C';

CREATE FUNCTION interpt_pp(path, path)
   RETURNS point
   AS '/.automount/genh/h/i2/pidur072/postgresql-8.1.4/src/test/regress/regress.so'
   LANGUAGE 'C';

CREATE FUNCTION reverse_name(name)
   RETURNS name
   AS '/.automount/genh/h/i2/pidur072/postgresql-8.1.4/src/test/regress/regress.so'
   LANGUAGE 'c';

CREATE FUNCTION oldstyle_length(int4, text)
   RETURNS int4
   AS '/.automount/genh/h/i2/pidur072/postgresql-8.1.4/src/test/regress/regress.so'
   LANGUAGE 'c';

--
-- Function dynamic loading
--
LOAD '/.automount/genh/h/i2/pidur072/postgresql-8.1.4/src/test/regress/regress.so';
