DROP DATABASE IF EXISTS gescom;

CREATE DATABASE gescom;

USE gescom;

CREATE TABLE suppliers (
  sup_id INT NOT NULL,
  sup_name VARCHAR(50) NOT NULL,
  sup_city VARCHAR(50) NOT NULL,
  sup_address VARCHAR(150) NOT NULL,
  sup_mail VARCHAR(75) DEFAULT NULL,
  sup_phone VARCHAR(12) DEFAULT NULL,
  PRIMARY KEY (sup_id)
);

CREATE TABLE customers(
  cus_id INT NOT NULL,
  cus_lastname VARCHAR(50) NOT NULL,
  cus_firstname VARCHAR(50) NOT NULL,
  cus_address VARCHAR(150) NOT NULL,
  cus_zipcode CHAR(5) NOT NULL,
  cus_city VARCHAR(50) NOT NULL,
  cus_mail VARCHAR(75) DEFAULT NULL,
  cus_phone VARCHAR(12) DEFAULT NULL,
  PRIMARY KEY (cus_id)
);

CREATE TABLE categories (
  cat_id INT NOT NULL,
  cat_name VARCHAR(50) NOT NULL,
  cat_parent_id INT NOT NULL,
  PRIMARY KEY (cat_id),
  FOREIGN KEY (cat_parent_id) REFERENCES categories(cat_id)
);

CREATE TABLE products (
  pro_id INT NOT NULL AUTO_INCREMENT,
  pro_ref VARCHAR(10) NOT NULL,
  pro_name VARCHAR(200) NOT NULL,
  pro_desc TEXT(1000) NOT NULL,
  pro_price DECIMAL(6,2) NOT NULL,
  pro_stock SMALLINT(4) DEFAULT NULL,
  pro_color VARCHAR(30) DEFAULT NULL,
  pro_picture VARCHAR(50) DEFAULT NULL,
  pro_add_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  pro_update_date TIMESTAMP,
  pro_publish TINYINT(1) NOT NULL,
  pro_cat_id INT NOT NULL,
  pro_sup_id INT NOT NULL,
  PRIMARY KEY (pro_id),
  FOREIGN KEY (pro_cat_id) REFERENCES categories(cat_id),
  FOREIGN KEY (pro_sup_id) REFERENCES suppliers(sup_id)
);

CREATE UNIQUE INDEX product_reference ON products(pro_ref);

CREATE TABLE orders (
  ord_id INT NOT NULL,
  ord_order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  ord_ship_date DATETIME DEFAULT NULL,
  ord_bill_date DATETIME DEFAULT NULL,
  ord_reception_date DATETIME DEFAULT NULL,
  ord_status VARCHAR(25) NOT NULL,
  cus_id INT NOT NULL,
  PRIMARY KEY (ord_id),
  FOREIGN KEY (cus_id) REFERENCES customers(cus_id)
);

CREATE TABLE details (
  det_id INT NOT NULL,
  det_price DECIMAL(6,2) NOT NULL,
  det_quantity INT(5) NOT NULL,
  CHECK (det_quantity > 0 AND det_quantity < 101 ),
  pro_id INT NOT NULL,
  ord_id INT NOT NULL,
  PRIMARY KEY (det_id),
  FOREIGN KEY (pro_id) REFERENCES products(pro_id),
  FOREIGN KEY (ord_id) REFERENCES orders(ord_id)
);
