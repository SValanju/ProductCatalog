-- Creating DataBase
CREATE DATABASE DEMOAPP;

-- Select database
USE DEMOAPP;

-- Creating user table for login
CREATE TABLE USERS(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
USERNAME VARCHAR(20) NOT NULL,
PASSWORD VARCHAR(200) NOT NULL
);

INSERT INTO USERS VALUES('admin', 'welcome123');

SELECT * FROM USERS;

-- Creating products table
CREATE TABLE PRODUCTS(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
NAME VARCHAR(50) NOT NULL,
DESCRIPTION VARCHAR(200),
PRICE DECIMAL DEFAULT 10.99,
BRAND VARCHAR(100)
);

INSERT INTO PRODUCTS (NAME, DESCRIPTION, PRICE, BRAND) VALUES
('Laptop', '15-inch gaming laptop with high performance', 999.99, 'Dell'),
('Smartphone', 'Latest model with 5G support', 799.99, 'Samsung'),
('Headphones', 'Wireless noise-canceling headphones', 199.99, 'Sony'),
('Smartwatch', 'Fitness tracking smartwatch with GPS', 249.99, 'Apple'),
('Bluetooth Speaker', 'Portable waterproof Bluetooth speaker', 129.99, 'JBL'),
('Gaming Mouse', 'High DPI gaming mouse with RGB lighting', 59.99, 'Logitech'),
('Mechanical Keyboard', 'RGB mechanical keyboard with blue switches', 89.99, 'Razer'),
('Monitor', '27-inch 4K Ultra HD monitor', 349.99, 'LG'),
('External SSD', '1TB portable solid-state drive', 149.99, 'Samsung'),
('Tablet', '10-inch tablet with stylus support', 499.99, 'Apple'),
('Wireless Earbuds', 'True wireless earbuds with noise cancellation', 179.99, 'Bose'),
('VR Headset', 'Virtual reality headset with motion controllers', 399.99, 'Oculus'),
('Gaming Console', 'Next-gen gaming console with 4K support', 499.99, 'Sony'),
('Smart TV', '55-inch 4K smart TV with HDR', 699.99, 'Samsung'),
('Router', 'High-speed Wi-Fi 6 router', 199.99, 'TP-Link'),
('Portable Charger', '10,000mAh power bank', 29.99, 'Anker'),
('Drone', '4K camera drone with GPS stabilization', 799.99, 'DJI'),
('Action Camera', 'Waterproof 4K action camera', 299.99, 'GoPro'),
('Coffee Maker', 'Automatic coffee machine with grinder', 199.99, 'Nespresso'),
('Smart Bulb', 'Wi-Fi enabled smart LED bulb', 19.99, 'Philips Hue'),
('Electric Scooter', 'Foldable electric scooter with 20-mile range', 599.99, 'Xiaomi'),
('Portable Projector', 'Mini HD projector with built-in speakers', 349.99, 'Anker'),
('E-Reader', '6-inch e-reader with adjustable lighting', 129.99, 'Kindle'),
('Wireless Charger', 'Fast wireless charging pad', 39.99, 'Belkin'),
('Dash Cam', '1080p dash camera with night vision', 129.99, 'Garmin'),
('Graphic Tablet', 'Drawing tablet with pen', 249.99, 'Wacom'),
('Fitness Tracker', 'Health and fitness tracker with heart rate monitor', 99.99, 'Fitbit'),
('Digital Camera', 'Mirrorless digital camera with 24MP sensor', 899.99, 'Canon'),
('Microwave Oven', 'Countertop microwave with smart sensors', 149.99, 'Panasonic'),
('Air Fryer', 'Oil-free air fryer with digital controls', 129.99, 'Ninja'),
('Home Security Camera', 'Wi-Fi security camera with motion detection', 99.99, 'Ring'),
('Streaming Stick', 'HD streaming device with voice control', 49.99, 'Roku'),
('Smart Lock', 'Keyless entry smart lock with app control', 199.99, 'August'),
('Cordless Vacuum', 'Lightweight cordless vacuum cleaner', 249.99, 'Dyson'),
('3D Printer', 'High-resolution 3D printer', 499.99, 'Creality'),
('Portable Air Conditioner', '12,000 BTU portable AC unit', 449.99, 'Honeywell'),
('Smart Thermostat', 'Wi-Fi enabled thermostat with energy-saving features', 199.99, 'Nest'),
('Noise Machine', 'White noise sound machine for sleep', 39.99, 'Homedics'),
('Standing Desk', 'Adjustable standing desk with motorized height adjustment', 299.99, 'FlexiSpot'),
('Electric Toothbrush', 'Rechargeable electric toothbrush with multiple modes', 79.99, 'Oral-B'),
('Hair Dryer', 'Ionic hair dryer with fast drying technology', 59.99, 'Dyson'),
('Car Jump Starter', 'Portable car battery jump starter with flashlight', 99.99, 'NOCO'),
('Luggage Set', '3-piece hardshell luggage set', 199.99, 'Samsonite'),
('Robot Vacuum', 'Self-charging robotic vacuum cleaner', 349.99, 'iRobot'),
('Electric Kettle', 'Stainless steel electric kettle with temperature control', 49.99, 'Breville'),
('Smart Mirror', 'Touchscreen smart mirror with built-in lighting', 299.99, 'HiMirror'),
('Induction Cooktop', 'Portable induction cooktop with touch controls', 99.99, 'Duxtop'),
('Massage Gun', 'Percussion massage gun for muscle recovery', 149.99, 'Hyperice');

SELECT * FROM PRODUCTS;