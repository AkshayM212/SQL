/*
Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table
*/

select distinct fp.*
from facebook_posts fp
inner join facebook_reactions fr on fp.post_id = fr.post_id
where fr.reaction = 'heart'
