CREATE SEQUENCE seq_messure
start with 1
increment by 1;

insert into t_measure(id_messure, names)
	values (nextval('seq_messure'), 'ШТ');
insert into t_measure(id_messure, names)
	values (nextval('seq_messure'), 'М');
insert into t_measure(id_messure, names)
	values (nextval('seq_messure'), 'КГ');
insert into t_measure(id_messure, names)
	values (nextval('seq_messure'), 'Литры');
insert into t_measure(id_messure, names)
	values (nextval('seq_messure'), 'Плотность');


CREATE SEQUENCE seq_material
start with 1
increment by 1;

insert into t_material (id_material, names, id_messure)
	values (nextval('seq_material'), 'Метал', '3');
insert into t_material (id_material, names, id_messure)
	values (nextval('seq_material'), 'Дерево', '3');
insert into t_material (id_material, names, id_messure)
	values (nextval('seq_material'), 'Кирпич', '1');
insert into t_material (id_material, names, id_messure)
	values (nextval('seq_material'), 'Стекло', '2');
insert into t_material (id_material, names, id_messure)
	values (nextval('seq_material'), 'Краска', '1');
insert into t_material (id_material, names, id_messure)
	values (nextval('seq_material'), 'Инструменты', '1');

CREATE SEQUENCE seq_inprice
start with 1
increment by 1;

insert into t_inprice (id_inprice,price, price_date, id_material)
	values (nextval('seq_inprice'), '100' '09.10.1900', '1');
insert into t_inprice (price, price_date, id_material)
	values (nextval('seq_inprice'), '56' '08.10.1900', '2');
insert into t_inprice (price, price_date, id_material)
	values (nextval('seq_inprice'), '89' '07.10.1900', '3');
insert into t_inprice (price, price_date, id_material)
	values (nextval('seq_inprice'), '129' '04.10.1900', '4');
insert into t_inprice (price, price_date, id_material)
	values (nextval('seq_inprice'), '302' '03.10.1900', '5');
insert into t_inprice (price, price_date, id_material)
	values (nextval('seq_inprice'), '299' '02.10.1900', '6');

CREATE SEQUENCE seq_store
start with 1
increment by 1;

insert into t_store (id_store, names)
	values (nextval('seq_store'), 'СтройДом');
insert into t_store (id_store, names)
	values (nextval('seq_store'), 'База 59');
insert into t_store (id_store, names)
	values (nextval('seq_store'), 'Южный Двор');
insert into t_store (id_store, names)
	values (nextval('seq_store'), 'Свой');
insert into t_store (id_store, names)
	values (nextval('seq_store'), 'Строительный');

CREATE SEQUENCE seq_caterer
start with 1
increment by 1;

insert into t_caterer (id_caterer,names,phone,fax,legal_address,fact_address,mail)
	values (nextval('seq_caterer'), 'ЧДК', '24224', '0', 'Колотушкина 45', 'Пушкина 25', 'gagagigi5@mail.ru');
insert into t_caterer (id_caterer,names,phone,fax,legal_address,fact_address,mail)
	values (nextval('seq_caterer'), 'МДК', '24123', '0', 'Левченко 35', 'Лермонтова 32', 'gagagigi4@mail.ru');
insert into t_caterer (id_caterer,names,phone,fax,legal_address,fact_address,mail)
	values (nextval('seq_caterer'), 'КДЧ', '24241', '0', 'Холкина 19', 'Ломоносова 29', 'gagagigi3@mail.ru');
insert into t_caterer (id_caterer,names,phone,fax,legal_address,fact_address,mail)
	values (nextval('seq_caterer'), 'ЧДУ', '24290', '0', 'Тупницева 21', 'ЭэЫээ 5', 'gagagigi2@mail.ru');
insert into t_caterer (id_caterer,names,phone,fax,legal_address,fact_address,mail)
	values (nextval('seq_caterer'), 'СДШ', '24281', '0', 'Хихиахах 4', 'Дуралеева 102', 'gagagigi1@mail.ru');

CREATE SEQUENCE seq_supply
start with 1
increment by 1;

insert into t_supply(id_supply, supply_date, id_caterer, id_store, id_material, volume)
	values (nextval('seq_supply'), '21.11.1900', '1', '1', '1', '30');
insert into t_supply(id_supply, supply_date, id_caterer, id_store, id_material, volume)
	values (nextval('seq_supply'), '20.11.1900', '3', '3', '3', '40');
insert into t_supply(id_supply, supply_date, id_caterer, id_store, id_material, volume)
	values (nextval('seq_supply'), '22.11.1900', '2', '2', '5', '10');
insert into t_supply(id_supply, supply_date, id_caterer, id_store, id_material, volume)
	values (nextval('seq_supply'), '23.11.1900', '4', '4', '6', '10');
insert into t_supply(id_supply, supply_date, id_caterer, id_store, id_material, volume)
	values (nextval('seq_supply'), '24.11.1900', '5', '5', '4', '10');

CREATE SEQUENCE seq_employer
start with 1
increment by 1;

insert into t_employer (id_employer, names, father_name, surname, dateofbirth, relationship)
	values (nextval('seq_employer'), 'Саша', 'Ильич', 'Смэрдев');
insert into t_employer (id_employer, names, father_name, surname)
	values (nextval('seq_employer'), 'Андрей', 'Павлович', 'Новикав');
insert into t_employer (id_employer, names, father_name, surname)
	values (nextval('seq_employer'), 'Александр', 'Ильич', 'Новикав');
insert into t_employer (id_employer, names, father_name, surname)
	values (nextval('seq_employer'), 'Андрей', 'Павлович', 'Смэрдев');
insert into t_employer (id_employer, names, father_name, surname)
	values (nextval('seq_employer'), 'Александр', 'Павлович', 'Дабдабов');

CREATE SEQUENCE seq_section
start with 1
increment by 1;

insert into t_section (id_section, names, id_employer)
	values (nextval('seq_section'), 'Строительные материалы', '1');
insert into t_section (id_section, names, id_employer)
	values (nextval('seq_section'), 'Лакокрасочные материалы', '1');
insert into t_section (id_section, names, id_employer)
	values (nextval('seq_section'), 'Инструменты', '1');
insert into t_section (id_section, names, id_employer)
	values (nextval('seq_section'), 'Тяжелый груз', '1');
insert into t_section (id_section, names, id_employer)
	values (nextval('seq_section'), 'Легкий груз', '1');

CREATE SEQUENCE seq_deliver
start with 1
increment by 1;

insert into t_deliver (id_deliver, deliver_date, id_material, id_store, id_section)
	values (nextval('seq_deliver'), '21.11.1900', '1', '1', '1');
insert into t_deliver (id_deliver, deliver_date, id_material, id_store, id_section)
	values (nextval('seq_deliver'), '21.11.1900', '2', '2', '1');
insert into t_deliver (id_deliver, deliver_date, id_material, id_store, id_section)
	values (nextval('seq_deliver'), '21.11.1900', '5', '3', '2');
insert into t_deliver (id_deliver, deliver_date, id_material, id_store, id_section)
	values (nextval('seq_deliver'), '21.11.1900', '4', '2', '1');
insert into t_deliver (id_deliver, deliver_date, id_material, id_store, id_section)
	values (nextval('seq_deliver'), '21.11.1900', '6', '3', '3');

CREATE SEQUENCE seq_surplus
start with 1
increment by 1;

insert into t_surplus (id_surplus,id_store,id_material,volume)
	values (nextval('seq_surplus'),'2','1','20');
insert into t_surplus (id_surplus,id_store,id_material,volume)
	values (nextval('seq_surplus'),'1','2','30');
insert into t_surplus (id_surplus,id_store,id_material,volume)
	values (nextval('seq_surplus'),'3','3','40');
insert into t_surplus (id_surplus,id_store,id_material,volume)
	values (nextval('seq_surplus'),'2','3','50');
insert into t_surplus (id_surplus,id_store,id_material,volume)
	values (nextval('seq_surplus'),'3','5','60');


CREATE SEQUENCE seq_group
start with 1
increment by 1;

insert into t_group (id_group, id_material, name_material)
	values (nextval('seq_group'),'2', 'Строительные материалы');
insert into t_group (id_group, id_material,name_material)
	values (nextval('seq_group'),'6', 'Инструменты');
insert into t_group (id_group, id_material,name_material)
	values (nextval('seq_group'),'5', 'Лакокрасочные материалы');
insert into t_group (id_group, id_material,name_material)
	values (nextval('seq_group'),'1', 'Тяжелый груз');
insert into t_group (id_group, id_material,name_material)
	values (nextval('seq_group'),'3', 'Легкий груз');
/*8*/
DELETE FROM t_inprice WHERE price_date < '31.12.2000';
/*9*/
DELETE FROM t_material WHERE id_messure = 2;
DELETE FROM t_measure WHERE id_messure = 2;
/*10*/
UPDATE t_surplus
SET volume = 0
WHERE id_store = '2';
/*11*/
ALTER TABLE t_employer
ADD dateofbirth date NOT NULL,
ADD	relationship varchar (100) NOT NULL;

UPDATE t_employer
SET dateofbirth = '31.10.1850',
WHERE id_employer = '1';

UPDATE t_employer
SET relationship = 'Married'
WHERE id_employer = '1';
/*12*/
UPDATE t_caterer
SET phone = '24999'
WHERE id_caterer = '1';
/*13*/	
UPDATE t_inprice
SET price = price-price/100*15;