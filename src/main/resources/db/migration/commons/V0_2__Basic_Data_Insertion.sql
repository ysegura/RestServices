USE restservice;

#ACCESS_LEVEL
INSERT INTO access_level (id, level_name) values (1,'root');
INSERT INTO access_level (id, level_name) values (2,'user');
INSERT INTO access_level (id, level_name) values (3,'admin');

#USER
insert into `user` (id, realname, username, password, email) values (1,'root','root','root','root@localhost');

#USER_ACCESS_LEVEL
insert into user_access_level(id, user_id, access_level_id) values (1,1,1);

#Style
insert into style (id, style_name) values (1,'pop');
insert into style (id, style_name) values (2,'rock');
insert into style (id, style_name) values (3,'techno');
insert into style (id, style_name) values (4,'dance');
insert into style (id, style_name) values (5,'blues');
insert into style (id, style_name) values (6,'country');
insert into style (id, style_name) values (7,'celtic');
insert into style (id, style_name) values (8,'vocal');
insert into style (id, style_name) values (9,'hip-hop');
insert into style (id, style_name) values (10,'R&B');
