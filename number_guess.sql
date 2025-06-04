--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    user_id integer NOT NULL,
    guesses integer NOT NULL,
    played_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 3, 2, '2025-06-04 19:41:55.220308');
INSERT INTO public.games VALUES (2, 3, 76, '2025-06-04 19:41:55.316058');
INSERT INTO public.games VALUES (3, 4, 331, '2025-06-04 19:41:55.425725');
INSERT INTO public.games VALUES (4, 4, 889, '2025-06-04 19:41:55.592688');
INSERT INTO public.games VALUES (5, 3, 422, '2025-06-04 19:41:55.708805');
INSERT INTO public.games VALUES (6, 3, 875, '2025-06-04 19:41:55.851595');
INSERT INTO public.games VALUES (7, 3, 248, '2025-06-04 19:41:55.949832');
INSERT INTO public.games VALUES (8, 5, 335, '2025-06-04 19:42:19.998586');
INSERT INTO public.games VALUES (9, 5, 251, '2025-06-04 19:42:20.103416');
INSERT INTO public.games VALUES (10, 6, 327, '2025-06-04 19:42:20.214279');
INSERT INTO public.games VALUES (11, 6, 240, '2025-06-04 19:42:20.320526');
INSERT INTO public.games VALUES (12, 5, 551, '2025-06-04 19:42:20.447912');
INSERT INTO public.games VALUES (13, 5, 250, '2025-06-04 19:42:20.55761');
INSERT INTO public.games VALUES (14, 5, 477, '2025-06-04 19:42:20.686543');
INSERT INTO public.games VALUES (15, 7, 928, '2025-06-04 19:42:51.914352');
INSERT INTO public.games VALUES (16, 7, 736, '2025-06-04 19:42:52.064842');
INSERT INTO public.games VALUES (17, 8, 765, '2025-06-04 19:42:52.207857');
INSERT INTO public.games VALUES (18, 8, 341, '2025-06-04 19:42:52.322371');
INSERT INTO public.games VALUES (19, 7, 120, '2025-06-04 19:42:52.418675');
INSERT INTO public.games VALUES (20, 7, 994, '2025-06-04 19:42:52.583488');
INSERT INTO public.games VALUES (21, 7, 173, '2025-06-04 19:42:52.681994');
INSERT INTO public.games VALUES (22, 9, 10, '2025-06-04 19:43:48.330678');
INSERT INTO public.games VALUES (23, 10, 844, '2025-06-04 19:48:50.05652');
INSERT INTO public.games VALUES (24, 10, 719, '2025-06-04 19:48:50.205821');
INSERT INTO public.games VALUES (25, 11, 291, '2025-06-04 19:48:50.321048');
INSERT INTO public.games VALUES (26, 11, 566, '2025-06-04 19:48:50.477018');
INSERT INTO public.games VALUES (27, 10, 635, '2025-06-04 19:48:50.61767');
INSERT INTO public.games VALUES (28, 10, 403, '2025-06-04 19:48:50.730572');
INSERT INTO public.games VALUES (29, 10, 269, '2025-06-04 19:48:50.834633');
INSERT INTO public.games VALUES (30, 12, 51, '2025-06-04 19:51:20.293813');
INSERT INTO public.games VALUES (31, 12, 408, '2025-06-04 19:51:20.413022');
INSERT INTO public.games VALUES (32, 13, 674, '2025-06-04 19:51:20.553797');
INSERT INTO public.games VALUES (33, 13, 11, '2025-06-04 19:51:20.640382');
INSERT INTO public.games VALUES (34, 12, 383, '2025-06-04 19:51:20.755617');
INSERT INTO public.games VALUES (35, 12, 914, '2025-06-04 19:51:20.924752');
INSERT INTO public.games VALUES (36, 12, 901, '2025-06-04 19:51:21.094124');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1749065577745');
INSERT INTO public.users VALUES (2, 'user_1749065577744');
INSERT INTO public.users VALUES (3, 'user_1749066115121');
INSERT INTO public.users VALUES (4, 'user_1749066115120');
INSERT INTO public.users VALUES (5, 'user_1749066139859');
INSERT INTO public.users VALUES (6, 'user_1749066139858');
INSERT INTO public.users VALUES (7, 'user_1749066171702');
INSERT INTO public.users VALUES (8, 'user_1749066171701');
INSERT INTO public.users VALUES (9, 'Etiene');
INSERT INTO public.users VALUES (10, 'user_1749066529888');
INSERT INTO public.users VALUES (11, 'user_1749066529887');
INSERT INTO public.users VALUES (12, 'user_1749066680195');
INSERT INTO public.users VALUES (13, 'user_1749066680194');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

