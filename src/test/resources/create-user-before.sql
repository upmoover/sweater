delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$QpSNTGeWCdmkBbTu3suWBOyJ8zgrztcnFdVU51kVFwTzRki8vRpF2', 'admin'),
(2, true, '$2a$08$QpSNTGeWCdmkBbTu3suWBOyJ8zgrztcnFdVU51kVFwTzRki8vRpF2', '2');

insert into user_role(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');
