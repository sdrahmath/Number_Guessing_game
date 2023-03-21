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
    number_guesses integer NOT NULL,
    user_id integer
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

INSERT INTO public.games VALUES (1, 11, 1);
INSERT INTO public.games VALUES (2, 495, 2);
INSERT INTO public.games VALUES (3, 596, 2);
INSERT INTO public.games VALUES (4, 673, 3);
INSERT INTO public.games VALUES (5, 612, 3);
INSERT INTO public.games VALUES (6, 624, 2);
INSERT INTO public.games VALUES (7, 941, 2);
INSERT INTO public.games VALUES (8, 526, 2);
INSERT INTO public.games VALUES (9, 122, 4);
INSERT INTO public.games VALUES (10, 9, 4);
INSERT INTO public.games VALUES (11, 750, 5);
INSERT INTO public.games VALUES (12, 941, 5);
INSERT INTO public.games VALUES (13, 25, 4);
INSERT INTO public.games VALUES (14, 638, 4);
INSERT INTO public.games VALUES (15, 339, 4);
INSERT INTO public.games VALUES (16, 12, 1);
INSERT INTO public.games VALUES (17, 1, 6);
INSERT INTO public.games VALUES (18, 771, 6);
INSERT INTO public.games VALUES (19, 651, 7);
INSERT INTO public.games VALUES (20, 636, 7);
INSERT INTO public.games VALUES (21, 104, 6);
INSERT INTO public.games VALUES (22, 183, 6);
INSERT INTO public.games VALUES (23, 658, 6);
INSERT INTO public.games VALUES (24, 13, 1);
INSERT INTO public.games VALUES (25, 783, 8);
INSERT INTO public.games VALUES (26, 158, 8);
INSERT INTO public.games VALUES (27, 1, 9);
INSERT INTO public.games VALUES (28, 603, 9);
INSERT INTO public.games VALUES (29, 196, 8);
INSERT INTO public.games VALUES (30, 960, 8);
INSERT INTO public.games VALUES (31, 447, 8);
INSERT INTO public.games VALUES (32, 13, 10);
INSERT INTO public.games VALUES (33, 1, 11);
INSERT INTO public.games VALUES (34, 563, 11);
INSERT INTO public.games VALUES (35, 338, 12);
INSERT INTO public.games VALUES (36, 82, 12);
INSERT INTO public.games VALUES (37, 185, 11);
INSERT INTO public.games VALUES (38, 367, 11);
INSERT INTO public.games VALUES (39, 500, 11);
INSERT INTO public.games VALUES (40, 7, 13);
INSERT INTO public.games VALUES (41, 287, 14);
INSERT INTO public.games VALUES (42, 955, 14);
INSERT INTO public.games VALUES (43, 865, 15);
INSERT INTO public.games VALUES (44, 668, 15);
INSERT INTO public.games VALUES (45, 684, 14);
INSERT INTO public.games VALUES (46, 210, 14);
INSERT INTO public.games VALUES (47, 232, 14);
INSERT INTO public.games VALUES (48, 14, 13);
INSERT INTO public.games VALUES (49, 785, 16);
INSERT INTO public.games VALUES (50, 458, 16);
INSERT INTO public.games VALUES (51, 1, 17);
INSERT INTO public.games VALUES (52, 362, 17);
INSERT INTO public.games VALUES (53, 46, 16);
INSERT INTO public.games VALUES (54, 430, 16);
INSERT INTO public.games VALUES (55, 791, 16);
INSERT INTO public.games VALUES (56, 781, 18);
INSERT INTO public.games VALUES (57, 673, 18);
INSERT INTO public.games VALUES (58, 1, 19);
INSERT INTO public.games VALUES (59, 433, 19);
INSERT INTO public.games VALUES (60, 950, 18);
INSERT INTO public.games VALUES (61, 807, 18);
INSERT INTO public.games VALUES (62, 742, 18);
INSERT INTO public.games VALUES (63, 8, 20);
INSERT INTO public.games VALUES (64, 1, 21);
INSERT INTO public.games VALUES (65, 19, 21);
INSERT INTO public.games VALUES (66, 741, 23);
INSERT INTO public.games VALUES (67, 497, 23);
INSERT INTO public.games VALUES (68, 822, 21);
INSERT INTO public.games VALUES (69, 96, 21);
INSERT INTO public.games VALUES (70, 436, 21);
INSERT INTO public.games VALUES (71, 1, 24);
INSERT INTO public.games VALUES (72, 494, 24);
INSERT INTO public.games VALUES (73, 1, 25);
INSERT INTO public.games VALUES (74, 678, 25);
INSERT INTO public.games VALUES (75, 77, 24);
INSERT INTO public.games VALUES (76, 335, 24);
INSERT INTO public.games VALUES (77, 735, 24);
INSERT INTO public.games VALUES (78, 1, 26);
INSERT INTO public.games VALUES (79, 617, 26);
INSERT INTO public.games VALUES (80, 519, 27);
INSERT INTO public.games VALUES (81, 387, 27);
INSERT INTO public.games VALUES (82, 753, 26);
INSERT INTO public.games VALUES (83, 574, 26);
INSERT INTO public.games VALUES (84, 523, 26);
INSERT INTO public.games VALUES (85, 1, 28);
INSERT INTO public.games VALUES (86, 216, 28);
INSERT INTO public.games VALUES (87, 259, 29);
INSERT INTO public.games VALUES (88, 901, 29);
INSERT INTO public.games VALUES (89, 249, 28);
INSERT INTO public.games VALUES (90, 526, 28);
INSERT INTO public.games VALUES (91, 822, 28);
INSERT INTO public.games VALUES (92, 660, 30);
INSERT INTO public.games VALUES (93, 973, 30);
INSERT INTO public.games VALUES (94, 799, 31);
INSERT INTO public.games VALUES (95, 991, 31);
INSERT INTO public.games VALUES (96, 89, 30);
INSERT INTO public.games VALUES (97, 865, 30);
INSERT INTO public.games VALUES (98, 118, 30);
INSERT INTO public.games VALUES (99, 496, 32);
INSERT INTO public.games VALUES (100, 731, 32);
INSERT INTO public.games VALUES (101, 463, 33);
INSERT INTO public.games VALUES (102, 348, 33);
INSERT INTO public.games VALUES (103, 90, 32);
INSERT INTO public.games VALUES (104, 588, 32);
INSERT INTO public.games VALUES (105, 425, 32);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'rahmath');
INSERT INTO public.users VALUES (2, 'user_1679373049455');
INSERT INTO public.users VALUES (3, 'user_1679373049454');
INSERT INTO public.users VALUES (4, 'user_1679373129369');
INSERT INTO public.users VALUES (5, 'user_1679373129368');
INSERT INTO public.users VALUES (6, 'user_1679373206783');
INSERT INTO public.users VALUES (7, 'user_1679373206782');
INSERT INTO public.users VALUES (8, 'user_1679373358004');
INSERT INTO public.users VALUES (9, 'user_1679373358003');
INSERT INTO public.users VALUES (10, 'syed');
INSERT INTO public.users VALUES (11, 'user_1679373450546');
INSERT INTO public.users VALUES (12, 'user_1679373450545');
INSERT INTO public.users VALUES (13, 'syed rahmath');
INSERT INTO public.users VALUES (14, 'user_1679373525602');
INSERT INTO public.users VALUES (15, 'user_1679373525601');
INSERT INTO public.users VALUES (16, 'user_1679373625621');
INSERT INTO public.users VALUES (17, 'user_1679373625620');
INSERT INTO public.users VALUES (18, 'user_1679373666892');
INSERT INTO public.users VALUES (19, 'user_1679373666891');
INSERT INTO public.users VALUES (20, 'aziz');
INSERT INTO public.users VALUES (21, 'user_1679373772287');
INSERT INTO public.users VALUES (23, 'user_1679373772286');
INSERT INTO public.users VALUES (24, 'user_1679373880171');
INSERT INTO public.users VALUES (25, 'user_1679373880170');
INSERT INTO public.users VALUES (26, 'user_1679373899622');
INSERT INTO public.users VALUES (27, 'user_1679373899621');
INSERT INTO public.users VALUES (28, 'user_1679373910621');
INSERT INTO public.users VALUES (29, 'user_1679373910620');
INSERT INTO public.users VALUES (30, 'user_1679373933271');
INSERT INTO public.users VALUES (31, 'user_1679373933270');
INSERT INTO public.users VALUES (32, 'user_1679373949944');
INSERT INTO public.users VALUES (33, 'user_1679373949943');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 105, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 33, true);


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

