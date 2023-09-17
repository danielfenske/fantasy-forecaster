-- NATIVE TABLES
CREATE TABLE "player" (
    "id" SERIAL PRIMARY KEY,
    "first_name" VARCHAR (50) NOT NULL,
    "last_name" VARCHAR (50) NOT NULL,
    "projection" FLOAT NOT NULL,
    "cost" FLOAT NOT NULL
);

-- COST TABLE
CREATE TABLE "import_fan_duel" (
    "id" SERIAL PRIMARY KEY,
    "player_id" INTEGER REFERENCES "player" NOT NULL UNIQUE,
    "cost" FLOAT NOT NULL
);


-- IMPORT TABLES
-- https://api.fantasynerds.com/docs/nfl#service13
CREATE TABLE "import_fantasy_nerds" (
    "id" SERIAL PRIMARY KEY,
    "player_id" INTEGER REFERENCES "player" NOT NULL UNIQUE,
    "first_name" VARCHAR (50) NOT NULL,
    "last_name" VARCHAR (50) NOT NULL,
    "projection" FLOAT NOT NULL
);

-- DUMMY DATA
INSERT INTO public.player (first_name, last_name, projection, cost) VALUES ('Justin', 'Jefferson', 22, 10000);
