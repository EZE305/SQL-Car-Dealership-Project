select * from car_sale_invoice 

-- Include Taxes as an extra charge to the total cost of the car in the car sale invoice 

create or replace procedure taxes ( 
	customer integer, 
	tax_amount decimal 
)
language plpgsql
as $$
begin 
 -- add a percentage of tax to the total cost of a car 
	update car_sale_invoice 
	set total_cost_sale = total_cost_sale * tax_amount
	where customer_id = customer; 
	
	commit;
end;
$$

call taxes(2, 1.25);
call taxes(1, 1.25);

select * from car_sale_invoice

--Stored function to insert data into the car_sale_invoice table 



create or replace function __add_car_sale(_sale_invoice_id integer, _sale_date timestamp without time zone, _total_cost_sale integer)
returns void
as $MAIN$
begin 
	insert into car_sale_invoice(sale_invoice_id, sale_date, total_cost_sale)
	values (_sale_invoice_id, _sale_date, _total_cost_sale);
end; 
$MAIN$
language plpgsql;


select __add_car_sale(3, NOW()::timestamp, 6500);


create or replace procedure tip ( 
	customer integer, 
	tip_amount decimal 
)
language plpgsql
as $$
begin 
	
	
 -- add a specified tip amount to the cost of servicing the car 
	update car_service_invoice 
	set total_cost_service = total_cost_service + tip_amount
	where customer_id = customer; 
	commit;
end;
$$

call tip(2, 5.00);
call tip(1, 20.00);

select * from car_service_invoice




