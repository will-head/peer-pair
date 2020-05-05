CREATE DATABASE peer_group_pairs;

\c peer_group_pairs;

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  cohort VARCHAR(15),
  name VARCHAR(70),
  peer_group INTEGER
);


INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Ed B', 1);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Patrick', 1);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Jed', 1);

INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Hesam', 2);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Marius', 2);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Tanil', 2);

INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Paula', 3);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Jo Y', 3);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Ed A', 3);

INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Andrew', 4);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Asif', 4);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Gareth', 4);

INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Will', 5);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Marija', 5);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Cat', 5);

INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Colin', 6);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Zsofi', 6);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Jo C', 6);

INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Lizzie', 7);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Ellis', 7);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Dec', 7);
INSERT INTO students (cohort, name, peer_group) VALUES ('april2020', 'Hibo', 7);

\c peer_group_pairs;

CREATE TABLE zoom_links (
  id SERIAL PRIMARY KEY,
  group_num INTEGER,
  url VARCHAR(2048)
);

INSERT INTO zoom_links (group_num, url) VALUES (1, '[Your Zoom Link]');
INSERT INTO zoom_links (group_num, url) VALUES (2, '[Your Zoom Link]');
INSERT INTO zoom_links (group_num, url) VALUES (3, '[Your Zoom Link]');
