--create select and find function

select * from v_seller
	
create or replace function vehicle_data(vid int)
returns varchar as $$
declare 
  output varchar;
  sum_selling int;
begin
 select sum(selling_price) into sum_selling from v_seller where v_id=vid;
  if sum_selling<=50000 then output:='low sell';
   else output:='high sell';
 end if;
return output;
end;
$$ language plpgsql

select vehicle_data(4) 

select v_id,sum(selling_price) ,vehicle_data(v_id) from v_seller group by v_id



select vehicle_data(6)