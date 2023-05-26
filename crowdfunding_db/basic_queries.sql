SELECT * 
FROM campaign;

SELECT * 
FROM category;

SELECT * 
FROM contacts;

SELECT * 
FROM subcategory;

SELECT cam.outcome, cam.category_id, cat.category
FROM campaign as cam
LEFT JOIN category as cat
ON cam.category_id = cat.category_id;

SELECT cam.outcome, cam.subcategory_id, subcat.subcategory
FROM campaign as cam
LEFT JOIN subcategory as subcat
ON cam.subcategory_id = subcat.subcategory_id;

SELECT cam.contact_id, cam.company_name, con.first_name, con.last_name, con.email
FROM campaign as cam
LEFT JOIN contacts as con
ON cam.contact_id = con.contact_id;