SELECT u.name, u.email, r.name AS role_name
FROM users u 
LEFT JOIN roles r 
ON u.role_id = r.id;


SELECT r.name, COUNT(u.name)
FROM users u
JOIN roles r
ON u.role_id = r.id
GROUP BY r.name;