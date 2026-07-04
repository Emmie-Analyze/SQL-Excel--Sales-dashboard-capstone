create database Starbucks_Analytics_DB;

use Starbucks_Analytics_DB;

create table customers(
	customer_id varchar(50) primary key,
		customer_name varchar(100),
			customer_email	varchar(60),
				customer_age int,
					customer_gender	varchar(20),
						customer_phone_clean  varchar(50));

	select * from Customers;


create table Item( item varchar(150),
					calories int,
						fat	int,
							carb int,	
								fiber int,	
									protein	int,
										type varchar(100),	
											item_id int primary key);
                                            
	select * from item;

create table Sales( transaction_id	varchar(50),
			store_id int,
				datetime datetime,
					customer_id	varchar(50),
							item_id	int,
								quantity	int,
									price	decimal(10,4),
										total_amount decimal(10,4),
											payment_mode varchar(50),
												customer_type varchar(50));
                                                
                                                alter table sales
                                                add foreign key (item_id) references item(item_id);
                                                       alter table sales
                                                add foreign key (customer_id) references customers(customer_id);
                                                
-- alter table sales  add foreign key (datetime) references calender(datetime);
-- create table Calender(datetime	datetime primary key,Year	year,Month text);

                                                


