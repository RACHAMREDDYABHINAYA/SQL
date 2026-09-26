
USE cdg_hyd_jfs_058;

CREATE TABLE vehicles (
    vehicle_id INT NOT NULL AUTO_INCREMENT,
    registration_number VARCHAR(20) NOT NULL,
    owner_name VARCHAR(120) NOT NULL,
    manufacturer VARCHAR(80) NOT NULL,
    model VARCHAR(80) NOT NULL,
    vehicle_type VARCHAR(20) NOT NULL,
    fuel_type VARCHAR(20) NOT NULL,
    manufacture_year YEAR NOT NULL,
    purchase_date DATE,
    color VARCHAR(40) NOT NULL,
    odometer_km INT NOT NULL DEFAULT 0,
    insurance_expiry DATE,
    vehicle_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pk_vehicles_vehicle_id` PRIMARY KEY (vehicle_id),
    CONSTRAINT `uq_registration_number` UNIQUE (registration_number),
    CONSTRAINT `chk_odometer_km_non_negative` CHECK (odometer_km >= 0)

);
INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('KLM7821', 'Suresh', 'Honda', 'CB Shine', 'MOTORCYCLE', 'PETROL', 2020, '2020-08-20', 'Red', 18500, '2027-08-20', 'IN_SERVICE');
INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry, vehicle_status)
VALUES ('BHG4567', 'Priya', 'Hyundai', 'Creta', 'CAR', 'PETROL', 2023, '2023-03-10', 'White', 9200, '2027-03-10', 'IN_SERVICE');
SELECT * FROM vehicles;
