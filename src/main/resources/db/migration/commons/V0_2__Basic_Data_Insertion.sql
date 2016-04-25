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

#Artist
insert into artist (id, name) values (1,'Queen');
insert into artist (id, name) values (2,'Eminem');
insert into artist (id, name) values (3,'And One');
insert into artist (id, name) values (4,'Phill Collins');
insert into artist (id, name) values (5,'Mecano');
insert into artist (id, name) values (6,'AWOLNATION');
insert into artist (id, name) values (7,'Coldplay');

#Album
insert into album (id, artist_id, name) values (1,1,'Innuendo');
insert into album (id, artist_id, name) values (2,1,'A Night at the Opera');
insert into album (id, artist_id, name) values (3,2,'Marshall Matters');
insert into album (id, artist_id, name) values (4,3,'Metalhammer');
insert into album (id, artist_id, name) values (5,3,'Bodypop');
insert into album (id, artist_id, name) values (6,3,'Stop');
insert into album (id, artist_id, name) values (7,5,'Descanso Dominical');
insert into album (id, artist_id, name) values (8,6,'Sail');
insert into album (id, artist_id, name) values (9,7,'Viva la vida');

#Song
insert into song (id, album_id, title, track_number, duration, style_id) values (1,1,'Innuendo',1,187,2);
insert into song (id, album_id, title, track_number, duration, style_id) values (2,2,'Bohemian Rhapsody',2,327,2);
insert into song (id, album_id, title, track_number, duration, style_id) values (3,2,'We are the champions',2,196,2);
insert into song (id, album_id, title, track_number, duration, style_id) values (4,3,'8 miles',1,236,9);
insert into song (id, album_id, title, track_number, duration, style_id) values (5,3,'Marshall Matters',2,219,9);
insert into song (id, album_id, title, track_number, duration, style_id) values (6,4,'Metalhammer',1,343,3);
insert into song (id, album_id, title, track_number, duration, style_id) values (7,5,'BodyPop',1,326,3);
insert into song (id, album_id, title, track_number, duration, style_id) values (8,5,'Technoman',2,352,3);
insert into song (id, album_id, title, track_number, duration, style_id) values (9,6,'Stop',1,172,3);
insert into song (id, album_id, title, track_number, duration, style_id) values (10,6,'The sun',5,280,3);
insert into song (id, album_id, title, track_number, duration, style_id) values (11,7,'Descanso Dominical',1,216,1);
insert into song (id, album_id, title, track_number, duration, style_id) values (12,8,'Sail',1,305,2);
