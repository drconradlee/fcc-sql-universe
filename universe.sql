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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type text,
    distance_mly numeric,
    discovered_year integer
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
    name character varying(30) NOT NULL,
    planet_id integer,
    tidally_locked boolean,
    orbital_period integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_mood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_mood_id_seq OWNER TO freecodecamp;

--
-- Name: moon_mood_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_mood_id_seq OWNED BY public.moon.moon_id;


--
-- Name: observatory; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.observatory (
    observatory_id integer NOT NULL,
    name character varying(50) NOT NULL,
    location character varying(100)
);


ALTER TABLE public.observatory OWNER TO freecodecamp;

--
-- Name: observatory_observatory_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.observatory_observatory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.observatory_observatory_id_seq OWNER TO freecodecamp;

--
-- Name: observatory_observatory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.observatory_observatory_id_seq OWNED BY public.observatory.observatory_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_rings boolean,
    diameter integer
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
    name character varying(30) NOT NULL,
    is_visible_by_eye boolean,
    radius_solar numeric,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_mood_id_seq'::regclass);


--
-- Name: observatory observatory_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observatory ALTER COLUMN observatory_id SET DEFAULT nextval('public.observatory_observatory_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2.537, 964);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3.0, 1764);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical', 53.5, 1781);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Spiral', 31.1, 1781);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Spiral', 23, 1773);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, true, 27);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, true, 0);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, true, 1);
INSERT INTO public.moon VALUES (4, 'Io', 5, true, 2);
INSERT INTO public.moon VALUES (5, 'Europa', 5, true, 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, true, 7);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, true, 17);
INSERT INTO public.moon VALUES (8, 'Titan', 6, true, 16);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, true, 1);
INSERT INTO public.moon VALUES (10, 'Rhea', 6, true, 5);
INSERT INTO public.moon VALUES (11, 'AlphaMoon-1', 7, false, 12);
INSERT INTO public.moon VALUES (12, 'ProxMoon', 8, false, 20);
INSERT INTO public.moon VALUES (13, 'AndroMoon', 9, true, 30);
INSERT INTO public.moon VALUES (14, 'Triax-I', 10, false, 6);
INSERT INTO public.moon VALUES (15, 'Triax-II', 10, true, 10);
INSERT INTO public.moon VALUES (16, 'M87-Luna', 11, true, 40);
INSERT INTO public.moon VALUES (17, 'M87-Shadow', 11, false, 25);
INSERT INTO public.moon VALUES (18, 'Sombrero-Lumen', 12, true, 15);
INSERT INTO public.moon VALUES (19, 'Sombrero-Orbitus', 12, true, 20);
INSERT INTO public.moon VALUES (20, 'Sombrero-Twin', 12, false, 20);


--
-- Data for Name: observatory; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.observatory VALUES (1, 'Hubble Space Telescope', 'Low Earth Orbit');
INSERT INTO public.observatory VALUES (2, 'Mauna Kea Observatories', 'Hawaii, USA');
INSERT INTO public.observatory VALUES (3, 'Very Large Telescope', 'Atacama Desert, Chile');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 4879);
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 12104);
INSERT INTO public.planet VALUES (3, 'Earth', 1, false, 12742);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 6779);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, true, 139820);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, true, 116460);
INSERT INTO public.planet VALUES (7, 'Alpha Centauri Ab', 2, false, 14000);
INSERT INTO public.planet VALUES (8, 'Proxima b', 3, false, 11400);
INSERT INTO public.planet VALUES (9, 'Andro Prime', 4, true, 90000);
INSERT INTO public.planet VALUES (10, 'Triax', 5, false, 15000);
INSERT INTO public.planet VALUES (11, 'M87a', 6, true, 100000);
INSERT INTO public.planet VALUES (12, 'Sombrero Prime', 5, true, 68000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 1.0, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', true, 1.2, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', true, 0.15, 1);
INSERT INTO public.star VALUES (4, 'Andromeda Star 1', false, 1.3, 2);
INSERT INTO public.star VALUES (5, 'Triangulum Star A', false, 0.8, 3);
INSERT INTO public.star VALUES (6, 'Messier 87 Core Star', false, 100.0, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_mood_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_mood_id_seq', 20, true);


--
-- Name: observatory_observatory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.observatory_observatory_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: observatory observatory_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observatory
    ADD CONSTRAINT observatory_name_key UNIQUE (name);


--
-- Name: observatory observatory_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observatory
    ADD CONSTRAINT observatory_pkey PRIMARY KEY (observatory_id);


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

