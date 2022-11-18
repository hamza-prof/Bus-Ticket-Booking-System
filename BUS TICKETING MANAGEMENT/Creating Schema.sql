USE bus_ticketing_management;
CREATE TABLE Bus_INFO(
	Bus_number VARCHAR(30),
	Available_seats int(10),
	Booked_seats int(10),
	Departure_time VARCHAR(30),
	Arrival_time VARCHAR(30),
	Bus_type VARCHAR(30),
	pickup_point VARCHAR(30),
	Destination VARCHAR(30),
	Total_seats int(10),
    seat_price int(10),
    conductor_id VARCHAR(30),
    driver_id VARCHAR(30),
	primary key (Bus_number)
);


CREATE TABLE Driver(
	driver_id VARCHAR(30),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    contact INT(30),
    Bus_number VARCHAR(30),
    primary key (driver_id),
    foreign key (Bus_number) references Bus_INFO(Bus_number)
);

CREATE TABLE Conductor(
	conductor_id VARCHAR(30),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    contact INT(30),
    Bus_number VARCHAR(30),
    primary key (conductor_id),
    foreign key (Bus_number) references Bus_INFO(Bus_number)
);

CREATE TABLE Route_Info(
	Route_id VARCHAR(30),
	Pickup_point VARCHAR(30),
	Destination VARCHAR(30),
    Bus_number VARCHAR(30),
	primary key (Route_id),
	foreign key(Bus_number) references Bus_INFO(Bus_number)
);

CREATE TABLE Passenger_Info(
	Passenger_id INT(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	cnic VARCHAR(10),
	contact VARCHAR(30),
	address VARCHAR(30),
	gender VARCHAR(30),
	age int(10),
	Bus_number VARCHAR(30),
	primary key (Passenger_id),
	foreign key(Bus_number) references Bus_INFO (Bus_number)
);

CREATE TABLE TICKET_INFO(
	ticket_id INT(30),
	destination VARCHAR(30),
    seat_id INT(10),
	total_tickets INT(30),
	ticket_price INT(30),
	final_price INT(30),
	Bus_number VARCHAR(30),
	Passenger_id INT(30),
    Date VARCHAR(30),
	primary key (ticket_id),
	foreign key(Bus_number) references Bus_INFO (Bus_number),
	foreign key(Passenger_id) references Passenger_Info (Passenger_id)
);

CREATE TABLE payment_info(
	payment_id VARCHAR(30),
	Passenger_id INT(30),
    payment INT(10),
	DATE VARCHAR(30),
	primary key (payment_id),
	foreign key (Passenger_id) references Passenger_INFO(Passenger_id)
);