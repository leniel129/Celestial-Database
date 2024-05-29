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
-- Name: freebie; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.freebie (
    freebie_id integer NOT NULL,
    name character varying(20) NOT NULL,
    yup boolean NOT NULL
);


ALTER TABLE public.freebie OWNER TO freecodecamp;

--
-- Name: freebie_freebie_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.freebie_freebie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.freebie_freebie_id_seq OWNER TO freecodecamp;

--
-- Name: freebie_freebie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.freebie_freebie_id_seq OWNED BY public.freebie.freebie_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    video_game boolean,
    how_many_vg integer,
    tv_show boolean
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
    name character varying(50) NOT NULL,
    color text,
    type text,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_released integer,
    played boolean,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    rating numeric(3,1),
    approval text
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: freebie freebie_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.freebie ALTER COLUMN freebie_id SET DEFAULT nextval('public.freebie_freebie_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: freebie; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.freebie VALUES (1, 'Jovi', true);
INSERT INTO public.freebie VALUES (2, 'Jovilynn', true);
INSERT INTO public.freebie VALUES (3, 'Leniel', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Kingdom Hearts', true, 9, false);
INSERT INTO public.galaxy VALUES (2, 'Hyperdimension Neptunia', true, 7, false);
INSERT INTO public.galaxy VALUES (3, 'RWBY', false, NULL, true);
INSERT INTO public.galaxy VALUES (4, 'Adventure Time', false, NULL, true);
INSERT INTO public.galaxy VALUES (5, 'One Piece', false, NULL, true);
INSERT INTO public.galaxy VALUES (6, 'Pokemon', true, 19, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Sora', 'red', 'key', 1);
INSERT INTO public.moon VALUES (2, 'Riku', 'blue', 'key', 1);
INSERT INTO public.moon VALUES (3, 'Kairi', 'pink', 'key', 1);
INSERT INTO public.moon VALUES (4, 'Pikachu', 'yellow', 'electric', 5);
INSERT INTO public.moon VALUES (5, 'Mudkip', 'blue', 'water', 7);
INSERT INTO public.moon VALUES (6, 'Joltik', 'yellow', 'electric', 9);
INSERT INTO public.moon VALUES (7, 'Flygon', 'green', 'ground', 7);
INSERT INTO public.moon VALUES (8, 'Totodile', 'blue', 'water', 6);
INSERT INTO public.moon VALUES (9, 'Grookey', 'green', 'grass', 12);
INSERT INTO public.moon VALUES (11, 'Jirachi', 'yellow', 'steel', 7);
INSERT INTO public.moon VALUES (12, 'Victini', 'red', 'psychic', 9);
INSERT INTO public.moon VALUES (13, 'Gallade', 'white', 'fighting', 8);
INSERT INTO public.moon VALUES (14, 'Quagsire', 'blue', 'water', 6);
INSERT INTO public.moon VALUES (15, 'Psyduck', 'yellow', 'water', 5);
INSERT INTO public.moon VALUES (16, 'Rockruff', 'brown', 'ground', 11);
INSERT INTO public.moon VALUES (17, 'Whalord', 'blue', 'water', 7);
INSERT INTO public.moon VALUES (10, 'Fuecoco', 'red', 'fire', 2);
INSERT INTO public.moon VALUES (18, 'Ei', 'purple', 'electric', 2);
INSERT INTO public.moon VALUES (19, 'Monkey D. Luffy', 'brown', 'rubber', 2);
INSERT INTO public.moon VALUES (20, 'Firefly', 'green', 'fire', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Disney', 2000, true, 1);
INSERT INTO public.planet VALUES (2, 'TWITY', 2004, false, 1);
INSERT INTO public.planet VALUES (3, 'Final Fantasy', 1996, true, 1);
INSERT INTO public.planet VALUES (4, 'Console Wars', 1999, true, 2);
INSERT INTO public.planet VALUES (6, 'Johto', 2001, true, 6);
INSERT INTO public.planet VALUES (7, 'Hoenn', 2003, true, 6);
INSERT INTO public.planet VALUES (5, 'Kanto', 2000, true, 6);
INSERT INTO public.planet VALUES (8, 'Sinnoh', 2006, true, 6);
INSERT INTO public.planet VALUES (9, 'Unova', 2010, true, 6);
INSERT INTO public.planet VALUES (10, 'Kalos', 2013, true, 6);
INSERT INTO public.planet VALUES (11, 'Alola', 2016, false, 6);
INSERT INTO public.planet VALUES (12, 'Galar', 2019, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'KH1', 1, 4.5, 'Sora');
INSERT INTO public.star VALUES (2, 'KH2', 1, 5.5, 'Roxas');
INSERT INTO public.star VALUES (3, 'Rebirth 3', 2, 3.3, 'Neptune');
INSERT INTO public.star VALUES (4, 'VII', 2, 3.1, 'Nepgear');
INSERT INTO public.star VALUES (5, 'Yellow', 6, 10.3, 'Yellow');
INSERT INTO public.star VALUES (6, 'FireRed', 6, 10.5, 'Leaf');


--
-- Name: freebie_freebie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.freebie_freebie_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: freebie freebie_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.freebie
    ADD CONSTRAINT freebie_name_key UNIQUE (name);


--
-- Name: freebie freebie_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.freebie
    ADD CONSTRAINT freebie_pkey PRIMARY KEY (freebie_id);


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

