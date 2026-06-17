


//////////////////////////////////////////////// all answer /////////////////////////////////////

-- Answer 1:
SELECT
    match_id,
    fixture,
    base_ticket_price
  FROM Matches
  WHERE tournament_category = 'Champions League'
  AND match_status = 'Available';


  -- Answer 2:
select
  user_id ,
  full_name ,
  email 
from users
where full_name Ilike 'Tanvir%'  or  full_name Ilike '%Haque%'


  -- Answer 3:
select 
  booking_id ,
  user_id ,
  match_id ,
  coalesce(payment_status ,'Action Required') as  systematic_status
from Bookings
where  payment_status is null


  -- Answer 4:

select 
   booking_id ,
   full_name,
  fixture,
  total_cost
from Bookings
join Users on Bookings.user_id= Users.user_id
JOIN Matches 
ON Bookings.match_id = Matches.match_id;


--Answer 5:
SELECT
    u.user_id,
    u.full_name,
    b.booking_id
FROM Users u
LEFT JOIN Bookings b
ON u.user_id = b.user_id;

--Answer 6:

select 
  booking_id, 
  match_id,
  total_cost
from bookings
where total_cost>(select avg(total_cost) from Bookings)


