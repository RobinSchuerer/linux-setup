select target_user_id, json_array_length(articles) as usc_size from user_content_structure order by 2 asc;