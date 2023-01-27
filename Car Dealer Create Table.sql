create table customer (
	customer_id SERIAL primary key, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(100)
);

create table salesperson (
	salesperson_id SERIAL primary key, 
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);


create table Car_details ( 
	car_VIN SERIAL primary key
);


create table car_sale_invoice (
	sale_invoice_id SERIAL primary key, 
	sale_date DATE default CURRENT_DATE, 
	total_cost_sale numeric (8,2), 
	car_VIN integer not null, 
	customer_id integer not null, 
	salesperson_id integer not null, 
	foreign key (car_VIN) references Car_details (car_VIN), 
	foreign key (customer_id) references customer (customer_id),
	foreign key (salesperson_id) references salesperson(salesperson_id)
);

create table car_service_invoice (
	service_invoice_id SERIAL primary key, 
	service_date DATE default CURRENT_DATE, 
	total_cost_service numeric (8,2), 
	car_VIN integer not null, 
	customer_id integer not null, 
	salesperson_id integer not null, 
	foreign key (car_VIN) references Car_details (car_VIN), 
	foreign key (customer_id) references customer (customer_id),
	foreign key (salesperson_id) references salesperson(salesperson_id)
);




