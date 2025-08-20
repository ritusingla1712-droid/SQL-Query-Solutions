create database casestudy;
use casestudy;
select * from sql_spotify_case_study17056443820;
#CREATE TABLES
-- User table
CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100),
  registration_date DATE
);

-- Playlist table
CREATE TABLE Playlists (
  playlist_id INT PRIMARY KEY,
  playlist_name VARCHAR(100),
  user_id INT,
  created_at DATE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Track table
CREATE TABLE Tracks (
  track_id INT PRIMARY KEY,
  track_name VARCHAR(100),
  artist_name VARCHAR(100),
  album_name VARCHAR(100),
  duration INT,
  release_date DATE
);

-- PlaylistTrack table
CREATE TABLE PlaylistTracks (
  playlist_id INT,
  track_id INT,
  position INT,
  FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
  FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

#INSERT VALUES IN TABLES
-- Insert values into Users table
INSERT INTO Users (user_id, username, email, password, registration_date)
VALUES
  (1, 'Riyan', 'Riyan@gmail.com', 'password123', '2022-01-10'),
  (2, 'Sanjay', 'Sanjay@yahoo.com', 'password456', '2022-02-15'),
  (3, 'Amit', 'Amit@gmail.com', 'password789', '2022-03-20'),
  (4, 'Sheetal', 'Sheetal@yahoo.com', 'password12', '2022-04-25'),
  (5, 'Maahir', 'Maahir@gmail.com', 'password34', '2022-05-30'),
  (6, 'Prayan', 'Prayan@gmail.com', 'password56', '2022-06-05'),
  (7, 'Samarth', 'Samarth@yahoo.com', 'password78', '2022-07-10'),
  (8, 'Briti', 'Briti@yahoo.com', 'password90', '2022-08-15'),
  (9, 'Aabheri', 'Aabheri@gmail.com', 'password123', '2022-09-20'),
  (10, 'Anvika', 'Anvika@yahoo.com', 'password12', '2022-10-25');

-- Insert values into Playlists table
INSERT INTO Playlists (playlist_id, playlist_name, user_id, created_at)
VALUES
  (1, 'My Favorites', 1, '2022-01-15'),
  (2, 'Road Trip Mix', 2, '2022-02-20'),
  (3, 'Party Hits', 3, '2022-03-25'),
  (4, 'Relaxing Melodies', 4, '2022-04-30'),
  (5, 'Late Night Vibes', 5, '2022-05-05'),
  (6, 'Workout Pump', 6, '2022-06-10'),
  (7, 'Chill Beats', 7, '2022-07-15'),
  (8, 'Study Jams', 8, '2022-08-20'),
  (9, 'Throwback Tunes', 9, '2022-09-25'),
  (10, 'Weekend Grooves', 10, '2022-10-30');

-- Insert values into Tracks table
INSERT INTO Tracks (track_id, track_name, artist_name, album_name, duration, release_date)
VALUES
  (1, 'Shape of You', 'Ed Sheeran', '÷ (Divide)', 233, '2017-01-06'),
  (2, 'Blinding Lights', 'The Weeknd', 'After Hours', 200, '2019-11-29'),
  (3, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (4, 'Bad Guy', 'Billie Eilish', 'When We All Fall Asleep, Where Do We Go?', 194, '2019-03-29'),
  (5, 'Rockstar', 'Post Malone ft. 21 Savage', 'Beerbongs & Bentleys', 218, '2017-09-15'),
  (6, 'Happier', 'Ed Sheeran', '÷ (Divide)', 207, '2017-01-06'),
  (7, 'Save Your Tears', 'The Weeknd', 'After Hours', 223, '2019-11-29'),
  (8, 'Never Seen the Rain', 'Tones and I', 'The Kids Are Coming', 186, '2019-08-29'),
  (9, "When the Party's Over", 'Billie Eilish', 'When We All Fall Asleep', 194, '2019-03-29'),
  (10, 'Circles', 'Post Malone', "Hollywood's Bleeding", 215, '2019-09-03'),
  (11, 'Thinking Out Loud', 'Ed Sheeran', 'x', 281, '2014-06-20'),
  (12, "Can't Feel My Fac", 'The Weeknd', 'Beauty Behind the Madness', 213, '2015-06-08'),
  (13, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (14, 'Ocean Eyes', 'Billie Eilish', "Don't Smile at Me", 180, '2016-11-18'),
  (15, 'Sunflower', 'Post Malone ft. Swae Lee', 'Spider-Man: Into the Spider-Verse', 158, '2018-10-18'),
  (16, 'Photograph', 'Ed Sheeran', 'x', 258, '2014-06-20'),
  (17, 'Starboy', 'The Weeknd ft. Daft Punk', 'Starboy', 230, '2016-11-24'),
  (18, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (19, 'Lovely', 'Billie Eilish ft. Khalid', '13 Reasons Why (Season 2)', 200, '2018-04-19'),
  (20, 'Better Now', 'Post Malone', 'Beerbongs & Bentleys', 231, '2018-04-27');

  
-- Insert values into PlaylistTracks table
INSERT INTO PlaylistTracks (playlist_id, track_id, position)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 11, 4),
  (1, 13, 5),
  (2, 4, 1),
  (2, 5, 2),
  (2, 12, 3),
  (2, 14, 4),
  (3, 1, 1),
  (3, 3, 2),
  (3, 5, 3),
  (4, 2, 1),
  (4, 4, 2),
  (5, 1, 1),
  (5, 3, 2),
  (5, 5, 3),
  (5, 15, 4),
  (5, 16, 5),
  (5, 17, 6),
  (6, 2, 1),
  (6, 4, 2),
  (7, 1, 1),
  (7, 5, 2),
  (7, 18, 3),
  (8, 3, 1),
  (8, 4, 2),
  (9, 1, 1),
  (9, 2, 2),
  (9, 3, 3),
  (9, 4, 4),
  (9, 5, 5),
  (9, 19, 6),
  (9, 20, 7),
  (10, 1, 1),
  (10, 3, 2),
  (10, 5, 3);

select * from users;
select * from Playlists;
select * from Tracks;

#Basic level
#1.Find all the distinct album names.
select distinct album_name from Tracks;

#2.Who is the artist of song 'Never Seen the Rain'?
select track_name,artist_name from tracks
where track_name = 'Never Seen the Rain';

#3.Name all the user & email, who have registered with gmail id.
select user_id,email from users
where email like '%@gmail.com';

#4.List the name of users along with registration dates, who have registered after April-22.
select username, registration_date from users
where registration_date > '2022-04-30';

#5.Extract the name of tracks, artists, albums and release dates for tracks released in year 2017
select track_name,artist_name,album_name,release_date from tracks
where year(release_date) = '2017';

#6.Find the details of the users who have registered in between may and august.
select * from users
where month(registration_date) between '5' and '8';

#7.Count the number of playlists created by each user.
select u.username,count(p.playlist_name) as playlist_count from users as u
left join playlists as p on u.user_id = p.user_id
group by u.username;

#8.Find the track names and their durations for a specific album in the Tracks table.
select track_name,duration from tracks
where album_name = "After hours";

#9.Calculate the average duration of tracks in the Tracks table.
select avg(duration) as avg_duration from tracks;

#10.How many users have registered with yahoo.com id?.
select count(*) from users u 
where email like "%@yahoo.com";

#Intermediate level
#1.Find the playlist names and the number of tracks in each playlist created by users whose email addresses end with '@gmail.com'.
select playlist_name,count(*)as track_count from playlists p 
join users u on p.user_id = u.user_id  
where u.email like '%@gmail.com'
group by p.playlist_name;

#2.Write a query to retrieve the usernames and email addresses of users who have created playlists with more than 5 tracks and an average track duration greater than 200 seconds.
select u.username,u.email from users u 
inner join playlists p on u.user_id = p.user_id
inner join playlisttracks p2 on p2.playlist_id = p.playlist_id
inner join tracks t on p2.track_id = t.track_id 
group by u.username ,u.email
having count(p2.track_id)>5 and avg(t.duration)>200;

#3.Find the track and artist names of the tracks that have a duration greater than 
#the average duration of all tracks in the 'Tracks' table.
select track_name,artist_name from tracks t 
where duration > (select avg(duration) from tracks);

#4.Find the users who have created playlists with tracks from all albums released in a specific year.
select u.username from users u 
inner join playlists p on p.user_id = u.user_id
inner join playlisttracks p2 on p2.playlist_id = p.playlist_id
inner join tracks t on t.track_id = p2.track_id
where year(t.release_date) = 2017
group by u.username 
having count(distinct t.album_name) = (select count(distinct album_name) from tracks where year(release_date) = 2017);

#5.Name of playlist and their total durations, sorted by the number of tracks in descending order.
select p.playlist_name ,sum(t.duration) as total_duration from playlists p 
inner join playlisttracks p2 on p2.playlist_id = p.playlist_id
inner join tracks t on t.track_id = p2.track_id
group  by p.playlist_name
order by total_duration desc;

#6.Find the playlists that have tracks with a duration longer than the average duration of all tracks.
select p.playlist_name from playlists p 
inner join playlisttracks p2 on p2.playlist_id = p.playlist_id
inner join tracks t on t.track_id = p2.track_id
where t.duration >(select avg(duration) from tracks);

#7.Find the top 3 playlists with the most tracks.
select p.playlist_name ,count(p2.track_id) as total_count from playlists p 
inner join playlisttracks p2 on p2.playlist_id = p.playlist_id
inner join tracks t on t.track_id = p2.track_id
group by p.playlist_name
order by total_count desc
limit 3;

#8.Calculate the average track duration for each user and display the results in descending order.
select u.username,avg(t.duration) as total_duration from  users u 
inner join playlists p on u.user_id = p.user_id
inner join playlisttracks p2 on p2.playlist_id = p.playlist_id
inner join tracks t on t.track_id = p2.track_id
group by u.username
order by total_duration desc;

#9.Find the track names and artist names of the tracks that are included in at least two different playlists.
select t.track_name,t.artist_name from tracks t
inner join playlisttracks p on p.track_id = t.track_id
inner join playlists p2 on p2.playlist_id = p.playlist_id
group by  t.track_name,t.artist_name 
having count(distinct p.playlist_id)>=2;

#10.Find the playlist names and the total duration of each playlist. 
#Include only the playlists created by users who registered in the year 2022
select p.playlist_name ,sum(t.duration) as total_duration from playlists p 
inner join playlisttracks p2 on p2.playlist_id = p.playlist_id
inner join tracks t on t.track_id = p2.track_id
where p.user_id in (select user_id from users u where year(registration_date) = 2022)
group by p.playlist_id,playlist_name;

#Advanced level
#1.Find the track names and artist names of the tracks that are included in playlists created by users who registered before the average registration date of all users.
select t.track_name,t.artist_name from tracks t
inner join playlisttracks p2 on p2.track_id = t.track_id
inner join playlists p on p2.playlist_id = p.playlist_id
inner join users u on p.user_id = u.user_id 
where u.registration_date >(select avg(registration_date) from users u);

#2.Use subquery to retrieve the names of users who have created playlists containing tracks from both the album 'After Hours' by The Weeknd and the album 'When We All Fall Asleep, Where Do We Go?' by Billie Eilish.
select username from users u 
where user_id in (select user_id from playlists p 
join playlisttracks p2 on p2.playlist_id = p.playlist_id 
join tracks t on p2.track_id = t.track_id 
where t.album_name in ('After Hours','When We All Fall Asleep, Where Do We Go?')
group by user_id 
having count(distinct album_name) = 2);

#3.Write a SQL query to extract the name of top 3 users with the highest average track duration for their playlists.
select u.username, avg(t.duration) as avg_duration from users u 
join playlists p on p.user_id = u.user_id
join playlisttracks p2 on p2.playlist_id = p.playlist_id
join tracks t on t.track_id = p2.track_id
group by u.username
order by avg_duration desc
limit 3;

#4.Find the tracks that have a duration greater than the average duration of all tracks and rank them within their respective albums.
select  album_name from tracks t
where duration > (select avg(duration) from tracks )
order by duration desc;

#5.Name the playlists along with the total number of tracks and the rank of the playlist based on the number of tracks.
with playlist_track_counts as (
  select playlist_id, count(track_id) as track_count, rank() over (order by count(track_id) desc) as playlist_rank
  from playlisttracks
  group by playlist_id)
select p.playlist_id, p.playlist_name, p.user_id, p.created_at, ptc.track_count, ptc.playlist_rank
from playlists p
left join playlist_track_counts ptc on p.playlist_id = ptc.playlist_id
order by ptc.playlist_rank;

#6.Find the users who have created playlists with the highest number of tracks from a specific artist.
with user_top_artist_playlists as (
  select u.user_id, u.username, p.playlist_id, count(pt.track_id) as track_count, 
         rank() over (partition by u.user_id order by count(pt.track_id) desc) as playlist_rank
  from users u
  inner join playlists p on u.user_id = p.user_id
  inner join playlisttracks pt on p.playlist_id = pt.playlist_id
  inner join tracks t on pt.track_id = t.track_id
  where t.artist_name = 'ed sheeran'
  group by u.user_id, u.username, p.playlist_id)
select username, playlist_id, track_count
from user_top_artist_playlists
where playlist_rank = 1;

#7.Write a SQL query to retrieve the topmost users who have created playlists with the highest number of unique tracks from a specific artist.
with user_unique_tracks as (
  select u.user_id, u.username, count(distinct pt.track_id) as unique_track_count, 
         rank() over (order by count(distinct pt.track_id) desc) as user_rank
  from users u
  inner join playlists p on u.user_id = p.user_id
  inner join playlisttracks pt on p.playlist_id = pt.playlist_id
  inner join tracks t on pt.track_id = t.track_id
  where t.artist_name = 'ed sheeran'
  group by u.user_id, u.username)
select username, unique_track_count
from user_unique_tracks
where user_rank <= 1;

#8.Find the tracks that have a duration greater than the average duration of all tracks in their respective albums.
with album_avg_duration as (
  select album_name, avg(duration) as avg_duration
  from tracks
  group by album_name)
select t.album_name, t.track_name, t.duration
from tracks t
inner join album_avg_duration aad on t.album_name = aad.album_name
where t.duration > aad.avg_duration;

#9.Find name of the playlists along with the user who created them, sorted by the number of tracks in descending order and the username in ascending order.
with playlist_track_counts as (
  select playlist_id, count(track_id) as track_count
  from playlisttracks
  group by playlist_id)
select p.playlist_id, p.playlist_name, p.user_id, u.username, ptc.track_count
from playlists p
inner join playlist_track_counts ptc on p.playlist_id = ptc.playlist_id
inner join users u on p.user_id = u.user_id
order by ptc.track_count desc, u.username asc;

#10.Write a SQL query to retrieve the playlists along with the user who created them, and the position of the track with the longest duration within each playlist.
with longest_track_positions as (
  select pt.playlist_id, max(t.duration) as max_duration, max(pt.position) as max_position
  from playlisttracks pt
  inner join tracks t on pt.track_id = t.track_id
  group by pt.playlist_id)
select p.playlist_id, p.playlist_name, p.user_id, u.username, ltp.max_duration, ltp.max_position
from playlists p
inner join longest_track_positions ltp on p.playlist_id = ltp.playlist_id
inner join users u on p.user_id = u.user_id;

 #Quiz

#1.Use subquery to extract names of the users who have created playlists containing tracks from the album '÷ (Divide)' by Ed Sheeran.
select username
from users
where user_id in (
  select user_id
  from playlists
  where playlist_id in (
    select playlist_id
    from playlisttracks
    where track_id in (
      select track_id
      from tracks
      where album_name = '÷ (divide)' and artist_name = 'ed sheeran'
    )
  )
);
