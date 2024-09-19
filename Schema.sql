drop table customers;
drop table orders;
drop table shippings;

CREATE TABLE Tricycles (
    tricycle_id INT PRIMARY KEY,
    model VARCHAR,
    manufacturer VARCHAR,
    association VARCHAR,
    color VARCHAR,
    engine_number VARCHAR,
    plate_number VARCHAR
);

CREATE TABLE Owners (
    owner_id INT PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    address VARCHAR,
    phone_number VARCHAR,
    email VARCHAR
);

CREATE TABLE Registrations (
    registration_id INT PRIMARY KEY,
    tricycle_id INT,
    owner_id INT,
    registration_date DATE,
    expiry_date DATE
);

CREATE TABLE MaintenanceRecords (
    maintenance_id INT PRIMARY KEY,
    tricycle_id INT,
    service_date DATE,
    service_type VARCHAR,
    cost DECIMAL(10, 2),
    service_center VARCHAR
);

CREATE TABLE Accidents (
    accident_id INT PRIMARY KEY,
    tricycle_id INT,
    date DATE,
    city VARCHAR,
    description TEXT,
    damage_cost DECIMAL(10, 2)
);
