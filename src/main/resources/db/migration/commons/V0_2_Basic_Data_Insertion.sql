USE restservice;

#ACCESS_LEVEL
INSERT INTO access_level (id, level_name) values (1,'root');
INSERT INTO access_level (id, level_name) values (2,'user');
INSERT INTO access_level (id, level_name) values (3,'admin');

#USER
insert into user (id, realname, username, password, email) values (1,'root','root','root','root@localhost');

#Style
insert into style (id, style_name) values (1,'pop');
insert into style (id, style_name) values (2,'rock');
insert into style (id, style_name) values (3,'techno');
insert into style (id, style_name) values (4,'dance');
insert into style (id, style_name) values (5,'blues');
insert into style (id, style_name) values (6,'country');
insert into style (id, style_name) values (7,'celtic');
insert into style (id, style_name) values (8,'vocal');
insert into style (id, style_name) values (9,'rap');
insert into style (id, style_name) values (10,'R&B');

#Artist
insert into artist (id, name) values (1,'Queen');
insert into artist (id, name) values (2,'Eminem')
insert into artist (id, name) values (3,'And One')
insert into artist (id, name) values (4,'Phill Collins')
insert into artist (id, name) values (5,'Mecano')
insert into artist (id, name) values (6,'AWOLNATION')
insert into artist (id, name) values (7,'Coldplay')

#Song
insert into song (id, album_id, title, track_number, duration, style_id) values (,,'',,,);
insert into song (id, album_id, title, track_number, duration, style_id) values (,,'',,,);
insert into song (id, album_id, title, track_number, duration, style_id) values (,,'',,,);
insert into song (id, album_id, title, track_number, duration, style_id) values (,,'',,,);
insert into song (id, album_id, title, track_number, duration, style_id) values (,,'',,,);
insert into song (id, album_id, title, track_number, duration, style_id) values (,,'',,,);
insert into song (id, album_id, title, track_number, duration, style_id) values (,,'',,,);