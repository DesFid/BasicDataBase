--CREATE THE TABLE IN ORDER 
CREATE TABLE persons (id VARCHAR PRIMARY KEY,
                      name VARCHAR(50) NOT NULL,
                      lastname VARCHAR(50) NOT NULL,
                      address VARCHAR(50),
                      phone VARCHAR(50),
                      email VARCHAR(50) NOT NULL,
                      created_at TIMESTAMP NOT NULL);
CREATE TABLE categories (id VARCHAR PRIMARY KEY,
                       name VARCHAR(50) NOT NULL,
                       description TEXT NOT NULL,
                       create_at TIMESTAMP NOT NULL);
CREATE TABLE users (id VARCHAR PRIMARY KEY,
                   name VARCHAR(50) NOT NULL,
                   lastname VARCHAR(50) NOT NULL,
                   username VARCHAR(50),
                   email VARCHAR(50) NOT NULL,
                   password VARCHAR(50) NOT NULL,
                   is_active BOOLEAN NOT NULL,
                   is_admin BOOLEAN NOT NULL,
                   created_at TIMESTAMP NOT NULL);
CREATE TABLE operation_type (id VARCHAR PRIMARY KEY,
                             name VARCHAR NOT NULL);
CREATE TABLE box (id VARCHAR PRIMARY KEY,
                  created_at TIMESTAMP NOT NULL);
CREATE TABLE article (id VARCHAR PRIMARY KEY,
                      barcode VARCHAR(50) NOT NULL,
                      name VARCHAR(50) NOT NULL,
                      description TEXT NOT NULL,
                      inventory_min NUMERIC,
                      price_in REAL NOT NULL,
                      price_out REAL NOT NULL,
                      unit VARCHAR(50),
                      categories_id VARCHAR REFERENCES categories(id),
                      is_active BOOLEAN NOT NULL,
                      created_at TIMESTAMP NOT NULL);
CREATE TABLE cellar (id VARCHAR PRIMARY KEY,
                     name VARCHAR(50) NOT NULL,
                     id_article VARCHAR REFERENCES article(id));
CREATE TABLE articlexcellar (id VARCHAR PRIMARY KEY,
                             id_cellar VARCHAR REFERENCES cellar(id) NOT NULL,
                             id_article VARCHAR REFERENCES article(id) NOT NULL,
                             q NUMERIC NOT NULL);
CREATE TABLE details (id VARCHAR PRIMARY KEY,
                      id_article VARCHAR REFERENCES article(id) NOT NULL,
                      price REAL NOT NULL,
                      q NUMERIC NOT NULL);
CREATE TABLE bill (id VARCHAR PRIMARY KEY,
                   person_id VARCHAR REFERENCES persons(id) NOT NULL,
                   user_id VARCHAR REFERENCES users(id) NOT NULL,
                   operation_type_id VARCHAR REFERENCES operation_type(id) NOT NULL,
                   box_id VARCHAR REFERENCES box(id) NOT NULL,
                   details_id VARCHAR REFERENCES details(id),
                   total REAL,
                   discount REAL,
                   created_at TIMESTAMP NOT NULL);
CREATE TABLE operation (id VARCHAR PRIMARY KEY,
                        article_id VARCHAR REFERENCES article(id) NOT NULL,
                        q NUMERIC NOT NULL,
                        operation_type_id VARCHAR REFERENCES operation_type NOT NULL,
                        bill_id VARCHAR REFERENCES bill(id),
                        created_at TIMESTAMP NOT NULL);
-- INSERT THE VALUES
INSERT INTO persons VALUES ('per_001', 'Juan', 'De La Torre', 'Rumichaca', '07895475840', 'juan_rimi@noma.com', '2018-05-05 21:14:22');
INSERT INTO categories VALUES ('cat_001', 'Office', 'Office suplies', '2018-05-05 21:14:22');
INSERT INTO box VALUES ('box_001', '2018-04-05 22:14:22');
INSERT INTO operation_type VALUES ('opt_001', 'Sell');
INSERT INTO users VALUES ('use_001', 'Enrique', 'Pabon', 'enripab', 'enripab@en.com', '123456', True, True, '2018-05-05 21:14:22');
INSERT INTO article VALUES ('art_001', '0212313122', 'Scissors', 'Cut', 20, 20.5, 20, 'unit', 'cat_001', True, '2018-05-05 21:14:22');
INSERT INTO cellar VALUES ('cell_001', 'First Cellar', 'art_001');
INSERT INTO articlexcellar VALUES ('axc_001', 'cel_001', 'art_001', 20);
INSERT INTO details VALUES ('det_001', 'art_001', 25.5, 20);
INSERT INTO bill VALUES ('bil_001', 'per_001', 'use_001', 'opt_001', 'box_001', 'det_001', 0, 0, '2018-05-05 21:14:22');
INSERT INTO operation VALUES ('ope_001', 'art_001', 50, 'opt_001', 'bil_001', '2018-05-05 21:14:22');


