l
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
SET default_tablespace = '';
SET default_table_access_method = heap;
--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_type character varying(10),
    lightyears_from_earth numeric,
    diameter numeric
);

ALTER TABLE public.galaxy OWNER TO freecodecamp;
--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_craters boolean,
    has_life boolean,
    moon_color text,
    planet_id integer
);

ALTER TABLE public.moon OWNER TO freecodecamp;
--
-- Name: moon_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.moon_planet (
    moon_planet_id integer NOT NULL,
    name character varying(20),
    phase character varying(10),
    distance integer NOT NULL,
    category integer
);

ALTER TABLE public.moon_planet OWNER TO freecodecamp;
--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    has_rings boolean,
    star_id integer
);

ALTER TABLE public.planet OWNER TO freecodecamp;
--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    lightyears numeric,
    star_color character varying(10),
    galaxy_id integer
);

ALTER TABLE public.star OWNER TO freecodecamp;
--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.galaxy VALUES (1, 'Faithful', 'E0', 12.2, 3);
INSERT INTO public.galaxy VALUES (2, 'Giant', 'SAc', 5.3, 10.4);
INSERT INTO public.galaxy VALUES (3, 'Bambi', 'SBc', 3.3, 2.45);
INSERT INTO public.galaxy VALUES (4, 'Mini', 'dSph', 2.3, 1.23);
INSERT INTO public.galaxy VALUES (5, 'Red', 'SBm', 45.3, 4.879);
INSERT INTO public.galaxy VALUES (6, 'Lenti', 'SBa', 1.256, 4.256);

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.moon VALUES (1, 'Abe', true, false, 'red', 12);
INSERT INTO public.moon VALUES (2, 'Charlie', true, true, 'blue', 12);
INSERT INTO public.moon VALUES (3, 'Abby', false, true, 'red', 11);
INSERT INTO public.moon VALUES (4, 'Paul', false, true, 'yellow', 3);
INSERT INTO public.moon VALUES (5, 'James', true, false, 'black', 4);
INSERT INTO public.moon VALUES (6, 'Todd', false, false, 'blue', 5);
INSERT INTO public.moon VALUES (7, 'Jake', true, true, 'orange', 1);
INSERT INTO public.moon VALUES (8, 'Tim', true, false, 'black', 7);
INSERT INTO public.moon VALUES (9, 'Sarah', false, true, 'red', 7);
INSERT INTO public.moon VALUES (10, 'Emma', false, false, 'yellow', 10);
INSERT INTO public.moon VALUES (11, 'Gary', true, true, 'purple', 5);
INSERT INTO public.moon VALUES (12, 'Timmy', true, true, 'grey', 4);
INSERT INTO public.moon VALUES (13, 'Jane', false, false, 'grey', 7);
INSERT INTO public.moon VALUES (14, 'Sandy', false, true, 'red', 11);
INSERT INTO public.moon VALUES (15, 'Zen', false, true, 'white', 3);
INSERT INTO public.moon VALUES (16, 'Ted', false, false, 'purple', 9);
INSERT INTO public.moon VALUES (17, 'Jed', true, true, 'black', 9);
INSERT INTO public.moon VALUES (18, 'Ray', true, true, 'black', 7);
INSERT INTO public.moon VALUES (19, 'Randy', false, false, 'blue', 7);
INSERT INTO public.moon VALUES (20, 'Katy', true, false, 'yellow', 5);

--
-- Data for Name: moon_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.moon_planet VALUES (1, 'single', '1', 1, NULL);
INSERT INTO public.moon_planet VALUES (2, 'duo', '2', 2, NULL);
INSERT INTO public.moon_planet VALUES (3, 'trio', '3', 3, NULL);

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.planet VALUES (1, 'Mercury', false, true, 2);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 2);
INSERT INTO public.planet VALUES (3, 'Mars', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Earth', true, false, 6);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', false, false, 6);
INSERT INTO public.planet VALUES (9, 'Pluto', false, false, 4);
INSERT INTO public.planet VALUES (10, 'Demi', true, true, 4);
INSERT INTO public.planet VALUES (11, 'Senter', true, true, 2);
INSERT INTO public.planet VALUES (12, 'Upter', false, false, 2);

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.star VALUES (1, 'Mountain', 12.1, 'white', 3);
INSERT INTO public.star VALUES (2, 'Jani', 4.2, 'red', 6);
INSERT INTO public.star VALUES (3, 'Kona', 45.1, 'yellow', 5);
INSERT INTO public.star VALUES (4, 'Stavi', 3, 'white', 3);
INSERT INTO public.star VALUES (5, 'Hope', 4.2, 'red', 6);
INSERT INTO public.star VALUES (6, 'Quar', 2.3, 'red', 6);

--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);

--
-- Name: moon int; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon
    ADD CONSTRAINT "int" UNIQUE (moon_id);

--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);

--
-- Name: moon_planet moon_planet_phase_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon_planet
    ADD CONSTRAINT moon_planet_phase_key UNIQUE (phase);

--
-- Name: moon_planet moon_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon_planet
    ADD CONSTRAINT moon_planet_pkey PRIMARY KEY (moon_planet_id);

--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);

--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);

--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);

--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);

--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);

--
-- Name: moon varchar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon
    ADD CONSTRAINT "varchar" UNIQUE (name);

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

