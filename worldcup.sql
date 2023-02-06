--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(60) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (595, 2018, 'Final', 4, 2, 534, 536);
INSERT INTO public.games VALUES (596, 2018, 'Third Place', 2, 0, 535, 537);
INSERT INTO public.games VALUES (597, 2018, 'Semi-Final', 2, 1, 536, 537);
INSERT INTO public.games VALUES (598, 2018, 'Semi-Final', 1, 0, 534, 535);
INSERT INTO public.games VALUES (599, 2018, 'Quarter-Final', 3, 2, 536, 540);
INSERT INTO public.games VALUES (600, 2018, 'Quarter-Final', 2, 0, 537, 538);
INSERT INTO public.games VALUES (601, 2018, 'Quarter-Final', 2, 1, 535, 539);
INSERT INTO public.games VALUES (602, 2018, 'Quarter-Final', 2, 0, 534, 541);
INSERT INTO public.games VALUES (603, 2018, 'Eighth-Final', 2, 1, 537, 545);
INSERT INTO public.games VALUES (604, 2018, 'Eighth-Final', 1, 0, 538, 547);
INSERT INTO public.games VALUES (605, 2018, 'Eighth-Final', 3, 2, 535, 548);
INSERT INTO public.games VALUES (606, 2018, 'Eighth-Final', 2, 0, 539, 549);
INSERT INTO public.games VALUES (607, 2018, 'Eighth-Final', 2, 1, 536, 550);
INSERT INTO public.games VALUES (608, 2018, 'Eighth-Final', 2, 1, 540, 551);
INSERT INTO public.games VALUES (609, 2018, 'Eighth-Final', 2, 1, 541, 552);
INSERT INTO public.games VALUES (610, 2018, 'Eighth-Final', 4, 3, 534, 544);
INSERT INTO public.games VALUES (611, 2014, 'Final', 1, 0, 542, 544);
INSERT INTO public.games VALUES (612, 2014, 'Third Place', 3, 0, 543, 539);
INSERT INTO public.games VALUES (613, 2014, 'Semi-Final', 1, 0, 544, 543);
INSERT INTO public.games VALUES (614, 2014, 'Semi-Final', 7, 1, 542, 539);
INSERT INTO public.games VALUES (615, 2014, 'Quarter-Final', 1, 0, 543, 546);
INSERT INTO public.games VALUES (616, 2014, 'Quarter-Final', 1, 0, 544, 535);
INSERT INTO public.games VALUES (617, 2014, 'Quarter-Final', 2, 1, 539, 545);
INSERT INTO public.games VALUES (618, 2014, 'Quarter-Final', 1, 0, 542, 534);
INSERT INTO public.games VALUES (619, 2014, 'Eighth-Final', 2, 1, 539, 553);
INSERT INTO public.games VALUES (620, 2014, 'Eighth-Final', 2, 0, 545, 541);
INSERT INTO public.games VALUES (621, 2014, 'Eighth-Final', 2, 0, 534, 554);
INSERT INTO public.games VALUES (622, 2014, 'Eighth-Final', 2, 1, 542, 555);
INSERT INTO public.games VALUES (623, 2014, 'Eighth-Final', 2, 1, 543, 549);
INSERT INTO public.games VALUES (624, 2014, 'Eighth-Final', 2, 1, 546, 556);
INSERT INTO public.games VALUES (625, 2014, 'Eighth-Final', 1, 0, 544, 547);
INSERT INTO public.games VALUES (626, 2014, 'Eighth-Final', 2, 1, 535, 557);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 534);
INSERT INTO public.teams VALUES ('Belgium', 535);
INSERT INTO public.teams VALUES ('Croatia', 536);
INSERT INTO public.teams VALUES ('England', 537);
INSERT INTO public.teams VALUES ('Sweden', 538);
INSERT INTO public.teams VALUES ('Brazil', 539);
INSERT INTO public.teams VALUES ('Russia', 540);
INSERT INTO public.teams VALUES ('Uruguay', 541);
INSERT INTO public.teams VALUES ('Germany', 542);
INSERT INTO public.teams VALUES ('Netherlands', 543);
INSERT INTO public.teams VALUES ('Argentina', 544);
INSERT INTO public.teams VALUES ('Colombia', 545);
INSERT INTO public.teams VALUES ('Costa Rica', 546);
INSERT INTO public.teams VALUES ('Switzerland', 547);
INSERT INTO public.teams VALUES ('Japan', 548);
INSERT INTO public.teams VALUES ('Mexico', 549);
INSERT INTO public.teams VALUES ('Denmark', 550);
INSERT INTO public.teams VALUES ('Spain', 551);
INSERT INTO public.teams VALUES ('Portugal', 552);
INSERT INTO public.teams VALUES ('Chile', 553);
INSERT INTO public.teams VALUES ('Nigeria', 554);
INSERT INTO public.teams VALUES ('Algeria', 555);
INSERT INTO public.teams VALUES ('Greece', 556);
INSERT INTO public.teams VALUES ('United States', 557);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 626, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 224, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 224, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 557, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

