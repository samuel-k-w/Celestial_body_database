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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: about_author; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.about_author (
    about_author_id integer NOT NULL,
    name character varying(250),
    education text NOT NULL,
    email character varying(50) NOT NULL
);


ALTER TABLE public.about_author OWNER TO freecodecamp;

--
-- Name: about_author_about_author_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.about_author_about_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.about_author_about_author_id_seq OWNER TO freecodecamp;

--
-- Name: about_author_about_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.about_author_about_author_id_seq OWNED BY public.about_author.about_author_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(250) NOT NULL,
    volume integer,
    area integer,
    age numeric(10,3),
    discription text NOT NULL,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(250) NOT NULL,
    volume integer,
    area integer,
    age numeric(10,3),
    discription text NOT NULL,
    has_life boolean,
    has_water boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(250) NOT NULL,
    volume integer,
    area integer,
    age numeric(10,3),
    discription text NOT NULL,
    has_life boolean,
    has_water boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(250) NOT NULL,
    volume integer,
    area integer,
    age numeric(10,3),
    discription text NOT NULL,
    has_life boolean,
    has_water boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: about_author about_author_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.about_author ALTER COLUMN about_author_id SET DEFAULT nextval('public.about_author_about_author_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: about_author; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.about_author VALUES (1, 'samuel kifle', 'degree', 'example@email.com');
INSERT INTO public.about_author VALUES (3, 'samuel kifle', 'masters', 'exercise@email.com');
INSERT INTO public.about_author VALUES (4, 'samuel kifle', 'phd', 'question@email.com');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1000, 2000, 10000.234, 'galaxy 1 disc.', true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 1000, 2000, 10000.234, 'galaxy 2 disc.', true, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 1000, 2000, 10000.234, 'galaxy 3 disc.', true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 1000, 2000, 10000.234, 'galaxy 4 disc.', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 1000, 2000, 10000.234, 'galaxy 5 disc.', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 1000, 2000, 10000.234, 'galaxy 6 disc.', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 2, 40, 3080.890, 'moon 1 disc.', true, true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 2, 40, 3080.890, 'moon 2 disc.', true, true, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 2, 40, 3080.890, 'moon 3 disc.', true, true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 2, 40, 3080.890, 'moon 4 disc.', true, true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 2, 40, 3080.890, 'moon 5 disc.', true, true, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 2, 40, 3080.890, 'moon 6 disc.', true, true, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 2, 40, 3080.890, 'moon 7 disc.', true, true, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 2, 40, 3080.890, 'moon 8 disc.', true, true, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 2, 40, 3080.890, 'moon 9 disc.', true, true, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 2, 40, 3080.890, 'moon 10 disc.', true, true, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 2, 40, 3080.890, 'moon 11 disc.', true, true, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 2, 40, 3080.890, 'moon 12 disc.', true, true, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 2, 40, 3080.890, 'moon 13 disc.', true, true, 1);
INSERT INTO public.moon VALUES (14, 'moon14', 2, 40, 3080.890, 'moon 14 disc.', true, true, 2);
INSERT INTO public.moon VALUES (15, 'moon15', 2, 40, 3080.890, 'moon 15 disc.', true, true, 3);
INSERT INTO public.moon VALUES (16, 'moon16', 2, 40, 3080.890, 'moon 16 disc.', true, true, 4);
INSERT INTO public.moon VALUES (17, 'moon17', 2, 40, 3080.890, 'moon 17 disc.', true, true, 5);
INSERT INTO public.moon VALUES (18, 'moon18', 2, 40, 3080.890, 'moon 18 disc.', true, true, 6);
INSERT INTO public.moon VALUES (19, 'moon19', 2, 40, 3080.890, 'moon 19 disc.', true, true, 7);
INSERT INTO public.moon VALUES (20, 'moon20', 2, 40, 3080.890, 'moon 20 disc.', true, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 10, 90, 200080.890, 'planet 1 disc.', true, true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 10, 90, 200080.890, 'planet 2 disc.', true, true, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 10, 90, 200080.890, 'planet 3 disc.', false, false, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 10, 90, 200080.890, 'planet 4 disc.', false, false, 4);
INSERT INTO public.planet VALUES (5, 'planet5', 10, 90, 200080.890, 'planet 5 disc.', false, false, 5);
INSERT INTO public.planet VALUES (6, 'planet6', 10, 90, 200080.890, 'planet 6 disc.', false, false, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 10, 90, 200080.890, 'planet 7 disc.', false, false, 1);
INSERT INTO public.planet VALUES (8, 'planet8', 10, 90, 200080.890, 'planet 8 disc.', false, false, 2);
INSERT INTO public.planet VALUES (9, 'planet9', 10, 90, 200080.890, 'planet 9 disc.', false, false, 3);
INSERT INTO public.planet VALUES (10, 'planet10', 10, 90, 200080.890, 'planet 10 disc.', false, false, 4);
INSERT INTO public.planet VALUES (11, 'planet11', 10, 90, 200080.890, 'planet 11 disc.', false, false, 5);
INSERT INTO public.planet VALUES (12, 'planet12', 10, 90, 200080.890, 'planet 12 disc.', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 100, 400, 2000.340, 'star 1 disc.', true, true, 1);
INSERT INTO public.star VALUES (2, 'star2', 100, 400, 2000.340, 'star 2 disc.', true, true, 2);
INSERT INTO public.star VALUES (3, 'star3', 100, 400, 2000.340, 'star 3 disc.', true, true, 3);
INSERT INTO public.star VALUES (4, 'star4', 100, 400, 2000.340, 'star 4 disc.', true, true, 4);
INSERT INTO public.star VALUES (5, 'star5', 100, 400, 2000.340, 'star 5 disc.', true, true, 5);
INSERT INTO public.star VALUES (6, 'star6', 100, 400, 2000.340, 'star 6 disc.', true, true, 6);


--
-- Name: about_author_about_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.about_author_about_author_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: about_author about_author_email_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.about_author
    ADD CONSTRAINT about_author_email_key UNIQUE (email);


--
-- Name: about_author about_author_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.about_author
    ADD CONSTRAINT about_author_pkey PRIMARY KEY (about_author_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

