select * from product

/*
عمود محوسب
خصم على المبيعات بنسبة 25 بالمئة 
*/
select product_name,unit_price,unit_price-(unit_price*0.25)as after_discount   from product
--
select top(3) * from product --أول ثلاث صفوف في الجدول
select top(3) * from product order by unit_price --أرخص 3 قطع مباعة 
-- case statement جملة الشرط    
select product_name,unit_price ,
case
     when unit_price>=700 then 'very expensive'
	 when unit_price>=300 then 'normal'
	 else 'low'
end as pro_status
from product order by pro_status
--=========استعلام عن الحقول الفارغة وغير الفارغة 
select * from product where product_quantity is null
select * from product where product_quantity is not null
--==========like
select  * from product where product_name='laptop'
select  * from product where product_name like '%board%'
select * from product where product_name like 'laptop%'
select * from product where product_name like 'laptopb as__'
select * from product where product_name like '%board%'

select * from product
select product_name,unit_price,unit_price-(unit_price*0.25)as after_discount  from product
select top(3)* from product order by unit_price
select product_name,unit_price ,
case
   when unit_price>=700 then 'very expensive'
      when unit_price>=700 then 'normal'
	  else 'low'
end as status_product
from product
select * from product where product_quantity is not null
select * from product where product_name like'%dell'
select * from product where city=N'حلب' or city=N'ادلب'

