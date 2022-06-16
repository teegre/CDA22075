CREATE USER 'util1'@'localhost';
GRANT ALL PRIVILEGES ON papyrus.* TO 'util1'@'localhost';

CREATE USER 'util2'@'localhost';
GRANT SELECT ON papyrus.* TO 'util2'@'localhost';

CREATE USER 'util3'@'localhost';
GRANT SELECT ON papyrus.fournis TO 'util3'@'localhost';
