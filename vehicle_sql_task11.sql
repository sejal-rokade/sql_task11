select * from vehicle

--km_driven<=30000 low km else high km
	
create or replace function km(km_driven int)
returns varchar as $$
declare
output varchar;
begin
if km_driven<=30000 then output:='low km';
else output:='high km';
end if;
return output;
end
$$ language plpgsql

select *, km(km_driven) from vehicle

--selling_price<10000 lowest sell,selling_price<50000 highest sell else very highest sell
	
create or replace function v_selling(selling_price int)
returns varchar as $$
declare
output varchar;
begin
if selling_price<=100000 then output:='lowest';
else output:='highest';
end if;
return output;
end
$$ language plpgsql

select *, v_selling(selling_price ) from vehicle