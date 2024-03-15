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
    name character varying(20) NOT NULL,
    num_of_galactic_centers integer,
    age numeric(10,2),
    size numeric(10,2),
    ever_expanding boolean,
    description text,
    is_spiral boolean,
    galaxy_types integer
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
    name character varying(20) NOT NULL,
    age numeric(10,2),
    size numeric(10,2),
    is_spherical boolean,
    moon_type integer,
    description text,
    planet_id integer NOT NULL,
    has_base boolean,
    bases integer
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
    name character varying(20) NOT NULL,
    age numeric(10,2),
    size numeric(10,2),
    is_spherical boolean,
    description text,
    star_id integer NOT NULL,
    planet_type integer,
    is_habitable boolean,
    biomes integer
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric(10,2),
    population numeric(10,0),
    risk_of_extinction boolean,
    skills integer,
    description text,
    hands integer,
    fingers integer,
    eyes integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_species_id_seq OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric(10,2),
    size numeric(10,2),
    is_spherical boolean,
    star_type integer,
    description text,
    brightness integer,
    galaxy_id integer NOT NULL
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

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 13.00, 105700.00, true, 'Home galaxy of humans', true, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1, 28.00, 140700.00, true, 'Galaxy that is about to collide with the milky way galaxy', true, 1);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 2, 17.00, 203432.00, true, 'Galaxy is relatively isolated from other galaxies', true, 2);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', 1, 10.00, 112939.00, true, 'It is a lenticular galaxy and a ring galaxy and it looks like a cartwheel', true, 2);
INSERT INTO public.galaxy VALUES (5, 'Comet Galaxy', 1, 19.00, 118939.00, true, 'This galaxy is named after its unusual appearance, looking like a comet', true, 2);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 1, 29.00, 112942.00, true, 'It is shaped like a cigar', false, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 1, true, 10);
INSERT INTO public.moon VALUES (2, 'Ceres', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 2, true, 10);
INSERT INTO public.moon VALUES (3, 'Moon', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 2, true, 10);
INSERT INTO public.moon VALUES (4, 'Enceladus', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 5, true, 10);
INSERT INTO public.moon VALUES (5, 'Callisto', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 5, true, 10);
INSERT INTO public.moon VALUES (6, 'Titan', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 5, true, 10);
INSERT INTO public.moon VALUES (7, 'Epimetheus', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 5, true, 10);
INSERT INTO public.moon VALUES (8, 'Amalthea', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 5, true, 10);
INSERT INTO public.moon VALUES (9, 'Phobos', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 5, true, 10);
INSERT INTO public.moon VALUES (10, 'Dione', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 5, true, 10);
INSERT INTO public.moon VALUES (11, 'Triton', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 5, true, 10);
INSERT INTO public.moon VALUES (12, 'Ganymede', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 5, true, 10);
INSERT INTO public.moon VALUES (13, 'Iapetus', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 8, true, 10);
INSERT INTO public.moon VALUES (14, 'Hyperion', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 8, true, 10);
INSERT INTO public.moon VALUES (15, 'Miranda', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 8, true, 10);
INSERT INTO public.moon VALUES (16, 'Atlas', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 8, true, 10);
INSERT INTO public.moon VALUES (17, 'Charon', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 8, true, 10);
INSERT INTO public.moon VALUES (18, 'Rhea', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 8, true, 10);
INSERT INTO public.moon VALUES (19, 'Mimas', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 8, true, 10);
INSERT INTO public.moon VALUES (20, 'Tethys', 100000.00, 12030.00, true, 1, 'Earth''s moon/natural satellite', 3, true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet_1', 4.50, 5000.00, true, 'Description for Planet_1', 1, 1, true, 1);
INSERT INTO public.planet VALUES (2, 'Planet_2', 4.50, 5000.00, true, 'Description for Planet_2', 2, 1, true, 2);
INSERT INTO public.planet VALUES (3, 'Planet_3', 4.50, 5000.00, true, 'Description for Planet_3', 3, 1, true, 3);
INSERT INTO public.planet VALUES (4, 'Planet_4', 4.50, 5000.00, true, 'Description for Planet_4', 4, 1, true, 4);
INSERT INTO public.planet VALUES (5, 'Planet_5', 4.50, 5000.00, true, 'Description for Planet_5', 5, 1, true, 5);
INSERT INTO public.planet VALUES (6, 'Planet_6', 4.50, 5000.00, true, 'Description for Planet_6', 6, 1, true, 6);
INSERT INTO public.planet VALUES (7, 'Planet_7', 4.50, 5000.00, true, 'Description for Planet_7', 1, 1, true, 7);
INSERT INTO public.planet VALUES (8, 'Planet_8', 4.50, 5000.00, true, 'Description for Planet_8', 2, 1, true, 8);
INSERT INTO public.planet VALUES (9, 'Planet_9', 4.50, 5000.00, true, 'Description for Planet_9', 3, 1, true, 9);
INSERT INTO public.planet VALUES (10, 'Planet_10', 4.50, 5000.00, true, 'Description for Planet_10', 4, 1, true, 10);
INSERT INTO public.planet VALUES (11, 'Planet_11', 4.50, 5000.00, true, 'Description for Planet_11', 5, 1, true, 11);
INSERT INTO public.planet VALUES (12, 'Planet_12', 4.50, 5000.00, true, 'Description for Planet_12', 6, 1, true, 12);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Humans', 43.00, 1232320000, true, 3, 'First Appeared on Earth', 2, 5, 2, 1);
INSERT INTO public.species VALUES (2, 'Reptilians', 232.00, 12320000, true, 3, 'First Appeared from the caves underneath  Earth', 2, 5, 2, 1);
INSERT INTO public.species VALUES (3, 'Grey Aliens', 232.00, 12320000, true, 3, 'First Appeared from the caves underneath  Earth', 2, 5, 2, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 200000.00, 100000.00, true, 1, 'Red Supergiant Star', 100, 1);
INSERT INTO public.star VALUES (2, 'Antares', 31902.00, 3129031.00, true, 1, 'Sample', 100, 1);
INSERT INTO public.star VALUES (3, 'Canopus', 212332.00, 123123.00, true, 1, 'Sample', 80, 1);
INSERT INTO public.star VALUES (4, 'Alpha Herculis', 123133.00, 1231234.00, true, 1, 'Sample', 90, 1);
INSERT INTO public.star VALUES (5, 'Alphertz', 139432.00, 234490.00, true, 1, 'Sample', 100, 2);
INSERT INTO public.star VALUES (6, 'Mirach', 139432.00, 234490.00, true, 1, 'Sample', 100, 2);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


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
-- Name: species species_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

