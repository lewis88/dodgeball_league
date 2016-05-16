DROP TABLE players;
DROP TABLE matches;
DROP TABLE teams;

CREATE TABLE teams (
  id SERIAL4 primary key,
  name VARCHAR(255),
  ranking INT4
  -- league_id INT4 references leagues(id)
);

CREATE TABLE players (
  id SERIAL4 primary key,
  name VARCHAR(255),
  health INT4,
  points INT4,
  team_id INT4 references teams(id)
);

CREATE TABLE matches (
  id SERIAL4 primary key,
  home_team_id INT4 references teams(id),
  away_team_id INT4 references teams(id),
  home_team_score INT4,
  away_team_score INT4
);
