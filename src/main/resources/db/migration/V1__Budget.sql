CREATE TABLE author (
                        id     SERIAL PRIMARY KEY,
                        name   TEXT NOT NULL,
                        created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE budget (
                        id     SERIAL PRIMARY KEY,
                        year   INT  NOT NULL,
                        month  INT  NOT NULL,
                        amount INT  NOT NULL,
                        type   TEXT NOT NULL,
                        author_id INT,
                        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                        FOREIGN KEY (author_id) REFERENCES author (id)
);



ALTER TABLE budget ALTER COLUMN type TYPE VARCHAR(255);

UPDATE budget SET type = 'Расход' WHERE type = 'Комиссия';