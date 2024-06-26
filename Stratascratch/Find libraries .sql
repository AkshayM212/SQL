/*
Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email
*/

select home_library_code
from library_usage
where circulation_active_year = 2016 and notice_preference_definition = 'email' and provided_email_address = FALSE
group by home_library_code
