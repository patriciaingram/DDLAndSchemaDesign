CREATE TABLE Team (
    team_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Player (
    player_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    team_id INT REFERENCES Team(team_id)
);

CREATE TABLE Goal (
    goal_id SERIAL PRIMARY KEY,
    match_id INT REFERENCES Match(match_id),
    player_id INT REFERENCES Player(player_id),
    minute INT
);

CREATE TABLE Referee (
    referee_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Match (
    match_id SERIAL PRIMARY KEY,
    season_id INT REFERENCES Season(season_id),
    referee_id INT REFERENCES Referee(referee_id)
);

CREATE TABLE Match_Team (
    match_id INT REFERENCES Match(match_id),
    team_id INT REFERENCES Team(team_id),
    PRIMARY KEY (match_id, team_id)
);

CREATE TABLE Season (
    season_id SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE
);
