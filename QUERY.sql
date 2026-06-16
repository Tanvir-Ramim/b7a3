


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



