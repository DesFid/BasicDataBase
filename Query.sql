CREATE TABLE new (ID serial PRIMARY KEY, Name varchar(20) NOT NULL);
CREATE FUNCTION dataget()
  RETURNS integer AS $$
$BODY$
DECLARE
counter INTEGER := 0;
n integer := 10;
BEGIN
LOOP
EXIT WHEN counter = n;
counter := counter + 1;
INSERT INTO new (Name) VALUES ('ss');
END LOOP;
return 1;
END;
$$ LANGUAGE plpgsql;
