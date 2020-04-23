CREATE TABLE Categories(
id_category INT UNSIGNED AUTO_INCREMENT,
NAME VARCHAR(100) NOT NULL DEFAULT 'No Asignado',
PRIMARY KEY(id_category)
);

CREATE TABLE Locations(
id_location INT UNSIGNED AUTO_INCREMENT,
city VARCHAR(100) NOT NULL DEFAULT 'No Asignado',
state VARCHAR(100) NOT NULL DEFAULT 'No Asignado',
PRIMARY KEY(id_location)
);


CREATE TABLE Users(
id_user INT UNSIGNED AUTO_INCREMENT,
NAME VARCHAR(100) NOT NULL DEFAULT 'No Asignado',
USER VARCHAR(100) NOT NULL DEFAULT 'No Asignado',
PASSWORD VARCHAR(100) NOT NULL DEFAULT 'No Asignado',
photo VARCHAR(500) NULL DEFAULT 'notphoto.png',
PRIMARY KEY(id_user)
);

CREATE TABLE Photos(
id_photo INT UNSIGNED AUTO_INCREMENT,
photo VARCHAR(500) NOT NULL DEFAULT 'notphoto.png',
PRIMARY KEY(id_photo)
);

CREATE TABLE Products(
id_product INT UNSIGNED AUTO_INCREMENT,
NAME VARCHAR(100) NOT NULL ,
description VARCHAR(500) NULL DEFAULT 'No Asignado',
contact VARCHAR(100) NOT NULL ,
price DOUBLE NOT NULL DEFAULT 0.0,
DATE DATETIME DEFAULT NOW(),
id_user INT UNSIGNED NOT NULL,
id_category INT UNSIGNED NOT NULL,
id_location INT UNSIGNED NOT NULL,
PRIMARY KEY(id_product),
CONSTRAINT FK_ProductUser FOREIGN KEY(id_user) REFERENCES Users(id_user),
CONSTRAINT FK_ProductCategory FOREIGN KEY(id_category) REFERENCES Categories(id_category),
CONSTRAINT FK_ProductLocation FOREIGN KEY(id_location) REFERENCES Locations(id_location)
);


CREATE TABLE Messages(
id_message INT UNSIGNED AUTO_INCREMENT,
id_product INT UNSIGNED NOT NULL,
PRIMARY KEY(id_message),
CONSTRAINT FK_MessageProduct FOREIGN KEY(id_product) REFERENCES Products(id_product)
);

CREATE TABLE DTUsersMessages(
id_dtusermessage INT UNSIGNED AUTO_INCREMENT,
message VARCHAR(500) NOT NULL,
id_user INT UNSIGNED NOT NULL,
id_message INT UNSIGNED NOT NULL,
PRIMARY KEY(id_dtusermessage),
CONSTRAINT FK_DTUserMessage_User FOREIGN KEY(id_user) REFERENCES Users(id_user),
CONSTRAINT FK_DTUserMessage_Message FOREIGN KEY(id_message) REFERENCES Messages(id_message)
);






