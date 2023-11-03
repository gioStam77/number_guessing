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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    num_guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 9);
INSERT INTO public.games VALUES (2, 4, 10);
INSERT INTO public.games VALUES (3, 4, 13);
INSERT INTO public.games VALUES (4, 13, 44);
INSERT INTO public.games VALUES (5, 14, 136);
INSERT INTO public.games VALUES (6, 13, 452);
INSERT INTO public.games VALUES (7, 13, 325);
INSERT INTO public.games VALUES (8, 15, 782);
INSERT INTO public.games VALUES (9, 16, 191);
INSERT INTO public.games VALUES (10, 15, 944);
INSERT INTO public.games VALUES (11, 15, 111);
INSERT INTO public.games VALUES (12, 17, 380);
INSERT INTO public.games VALUES (13, 18, 104);
INSERT INTO public.games VALUES (14, 17, 974);
INSERT INTO public.games VALUES (15, 17, 501);
INSERT INTO public.games VALUES (16, 4, 9);
INSERT INTO public.games VALUES (17, 19, 45);
INSERT INTO public.games VALUES (18, 20, 816);
INSERT INTO public.games VALUES (19, 19, 458);
INSERT INTO public.games VALUES (20, 19, 583);
INSERT INTO public.games VALUES (21, 21, 700);
INSERT INTO public.games VALUES (22, 22, 80);
INSERT INTO public.games VALUES (23, 21, 230);
INSERT INTO public.games VALUES (24, 21, 621);
INSERT INTO public.games VALUES (25, 23, 99);
INSERT INTO public.games VALUES (26, 24, 739);
INSERT INTO public.games VALUES (27, 23, 41);
INSERT INTO public.games VALUES (28, 23, 951);
INSERT INTO public.games VALUES (29, 25, 117);
INSERT INTO public.games VALUES (30, 26, 30);
INSERT INTO public.games VALUES (31, 25, 673);
INSERT INTO public.games VALUES (32, 25, 827);
INSERT INTO public.games VALUES (33, 27, 808);
INSERT INTO public.games VALUES (34, 28, 276);
INSERT INTO public.games VALUES (35, 27, 284);
INSERT INTO public.games VALUES (36, 27, 461);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '');
INSERT INTO public.users VALUES (4, 'GIO');
INSERT INTO public.users VALUES (5, 'PETER');
INSERT INTO public.users VALUES (6, 'KOSTAS');
INSERT INTO public.users VALUES (7, 'user_1698925228534');
INSERT INTO public.users VALUES (8, 'user_1698925228533');
INSERT INTO public.users VALUES (9, 'user_1698925442670');
INSERT INTO public.users VALUES (10, 'user_1698925442669');
INSERT INTO public.users VALUES (11, 'user_1699004179863');
INSERT INTO public.users VALUES (12, 'user_1699004179862');
INSERT INTO public.users VALUES (13, 'user_1699005439372');
INSERT INTO public.users VALUES (14, 'user_1699005439371');
INSERT INTO public.users VALUES (15, 'user_1699005505769');
INSERT INTO public.users VALUES (16, 'user_1699005505768');
INSERT INTO public.users VALUES (17, 'user_1699005745467');
INSERT INTO public.users VALUES (18, 'user_1699005745466');
INSERT INTO public.users VALUES (19, 'user_1699005953644');
INSERT INTO public.users VALUES (20, 'user_1699005953643');
INSERT INTO public.users VALUES (21, 'user_1699006128439');
INSERT INTO public.users VALUES (22, 'user_1699006128438');
INSERT INTO public.users VALUES (23, 'user_1699006767417');
INSERT INTO public.users VALUES (24, 'user_1699006767416');
INSERT INTO public.users VALUES (25, 'user_1699007880605');
INSERT INTO public.users VALUES (26, 'user_1699007880604');
INSERT INTO public.users VALUES (27, 'user_1699008423328');
INSERT INTO public.users VALUES (28, 'user_1699008423327');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
