\c peer_group_pairs;

CREATE TABLE zoom_links (
  id SERIAL PRIMARY KEY,
  group INTEGER,
  url VARCHAR(2048)
);