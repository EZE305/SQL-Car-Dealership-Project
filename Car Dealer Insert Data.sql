insert into customer(
	customer_id, 
	first_name, 
	last_name, 
	billing_info
) values (
	1, 
	'Eman', 
	'Duarte', 
	'4400-1235-2423-2342 04/20'
);

insert into customer(
	customer_id, 
	first_name, 
	last_name, 
	billing_info
) values (
	2, 
	'Jay', 
	'Dominguez', 
	'4400-1235-2423-2332 02/20'
);

insert into salesperson(
	salesperson_id, 
	first_name, 
	last_name
) values (
	101, 
	'Ayone', 
	'Salesguy'
);

insert into salesperson(
	salesperson_id, 
	first_name, 
	last_name
) values (
	102, 
	'Guytwo', 
	'Sellyewsum'
);

insert into Car_details(
	car_VIN
) values (
	'12324'
);

insert into Car_details(
	car_VIN
) values (
	'48437'
);


insert into car_sale_invoice (
	sale_invoice_id, 
	total_cost_sale, 
	car_VIN, 
	customer_id, 
	salesperson_id
) values (
	1,
	'4500.00',
	'12324',
	1,
	101
);


insert into car_sale_invoice (
	sale_invoice_id, 
	total_cost_sale, 
	car_VIN, 
	customer_id, 
	salesperson_id
) values (
	2,
	'12500.00',
	'48437',
	2,
	102
);


insert into car_service_invoice (
	service_invoice_id, 
	total_cost_service, 
	car_VIN, 
	customer_id, 
	salesperson_id
) values (
	1,
	'12.50',
	'48437',
	1,
	102
);

insert into car_service_invoice (
	service_invoice_id, 
	total_cost_service, 
	car_VIN, 
	customer_id, 
	salesperson_id
) values (
	2,
	'134.50',
	'12324',
	2,
	101
);





select * from car_service_invoice






select * from customer 
