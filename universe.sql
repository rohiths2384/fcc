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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    sky character varying(40)
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age numeric,
    distance_from_earth numeric,
    no_of_stars integer,
    no_of_moons integer,
    description text
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
    name character varying(255) NOT NULL,
    distance_from_earth integer,
    distance_from_planet integer,
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
    name character varying(255) NOT NULL,
    has_life boolean,
    distance_from_earth numeric,
    no_of_moons integer,
    star_id integer,
    description text
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
    name character varying(255) NOT NULL,
    is_active boolean,
    no_of_planets integer,
    no_of_moons integer,
    age numeric,
    galaxy_id integer,
    description text
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 1, 'Northern Hemisphere');
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 1, 'Northern Hemisphere');
INSERT INTO public.constellation VALUES (3, 'Cassiopeia', 1, 'Northern Hemisphere');
INSERT INTO public.constellation VALUES (4, 'Scorpius', 1, 'Southern Hemisphere');
INSERT INTO public.constellation VALUES (5, 'Leo', 1, 'Northern Hemisphere');
INSERT INTO public.constellation VALUES (6, 'Pegasus', 1, 'Northern Hemisphere');
INSERT INTO public.constellation VALUES (7, 'Canis Major', 1, 'Southern Hemisphere');
INSERT INTO public.constellation VALUES (8, 'Cygnus', 1, 'Northern Hemisphere');
INSERT INTO public.constellation VALUES (9, 'Aquarius', 1, 'Southern Hemisphere');
INSERT INTO public.constellation VALUES (10, 'Taurus', 1, 'Northern Hemisphere');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, true, 13.6, 0, 2000000000, 1, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, true, 13.6, 2540000, 1000000000, 1, 'Closest spiral galaxy to Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, true, 13.6, 3000000, 400000000, 0, 'Third-largest galaxy in the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', false, true, 13.6, 54000000, 2000000000, 0, 'Located in the Virgo Cluster');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, true, 13.6, 29000000, 800000000, 0, 'Named for its resemblance to a Mexican hat');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', false, true, 13.6, 31000000, 400000000, 0, 'Interacting galaxy with a visible spiral structure');
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', false, true, 13.6, 25000000, 1000000000, 0, 'Distinct spiral arms and a bright central bulge');
INSERT INTO public.galaxy VALUES (8, 'Cigar', false, true, 13.6, 12000000, 600000000, 0, 'Irregular shape resembling a cigar');
INSERT INTO public.galaxy VALUES (9, 'Bode', false, true, 13.6, 12000000, 400000000, 0, 'Named after Johann Elert Bode');
INSERT INTO public.galaxy VALUES (10, 'Sunflower', false, true, 13.6, 25000000, 400000000, 0, 'Resembles the pattern of a sunflower seed head');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0, 384400, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 0, 9377, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 0, 23450, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 0, 1070000, 3);
INSERT INTO public.moon VALUES (5, 'Titan', 1, 1221000, 4);
INSERT INTO public.moon VALUES (6, 'Titania', 0, 436300, 5);
INSERT INTO public.moon VALUES (7, 'Triton', 0, 354800, 6);
INSERT INTO public.moon VALUES (8, 'Io', 0, 421800, 3);
INSERT INTO public.moon VALUES (9, 'Europa', 0, 670900, 3);
INSERT INTO public.moon VALUES (10, 'Callisto', 0, 1882700, 3);
INSERT INTO public.moon VALUES (11, 'Enceladus', 0, 238000, 7);
INSERT INTO public.moon VALUES (12, 'Rhea', 0, 527000, 7);
INSERT INTO public.moon VALUES (13, 'Iapetus', 0, 3560000, 7);
INSERT INTO public.moon VALUES (14, 'Dione', 0, 377000, 7);
INSERT INTO public.moon VALUES (15, 'Mimas', 0, 185520, 7);
INSERT INTO public.moon VALUES (16, 'Charon', 0, 19571, 9);
INSERT INTO public.moon VALUES (17, 'Miranda', 0, 129390, 6);
INSERT INTO public.moon VALUES (18, 'Ariel', 0, 191020, 5);
INSERT INTO public.moon VALUES (19, 'Umbriel', 0, 266300, 5);
INSERT INTO public.moon VALUES (20, 'Oberon', 0, 583500, 5);
INSERT INTO public.moon VALUES (21, 'Proteus', 0, 117600, 6);
INSERT INTO public.moon VALUES (22, 'Hyperion', 0, 1481000, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 1, 1, 'The third planet from the Sun and the only astronomical object known to harbor life');
INSERT INTO public.planet VALUES (2, 'Mars', false, 1.524, 2, 1, 'The fourth planet from the Sun and the second-smallest planet in the Solar System');
INSERT INTO public.planet VALUES (3, 'Jupiter', false, 5.203, 79, 1, 'The largest planet in the Solar System');
INSERT INTO public.planet VALUES (4, 'Saturn', false, 9.537, 82, 1, 'The sixth planet from the Sun and the second-largest in the Solar System');
INSERT INTO public.planet VALUES (5, 'Uranus', false, 19.19, 27, 1, 'The seventh planet from the Sun');
INSERT INTO public.planet VALUES (6, 'Neptune', false, 30.07, 14, 1, 'The eighth and farthest known Solar planet from the Sun');
INSERT INTO public.planet VALUES (7, 'Venus', false, 0.723, 0, 1, 'The second planet from the Sun');
INSERT INTO public.planet VALUES (8, 'Mercury', false, 0.39, 0, 1, 'The smallest planet in the Solar System and the closest to the Sun');
INSERT INTO public.planet VALUES (9, 'Pluto', false, 39.48, 5, 1, 'Formerly the ninth planet from the Sun, now classified as a dwarf planet');
INSERT INTO public.planet VALUES (10, 'Kepler-452b', true, 1402, 0, 2, 'An exoplanet orbiting the Sun-like star Kepler-452 in the constellation Cygnus');
INSERT INTO public.planet VALUES (11, 'Merkara', false, 10.123, 3, 2, 'A gas giant in the Kepler-452 system');
INSERT INTO public.planet VALUES (12, 'Terra Nova', true, 4.567, 1, 2, 'An Earth-like planet with diverse ecosystems');
INSERT INTO public.planet VALUES (13, 'Epsilon Prime', false, 15.789, 2, 3, 'A cold, rocky planet in the Alpha Centauri system');
INSERT INTO public.planet VALUES (14, 'Zephyr', false, 6.432, 0, 4, 'A gas giant with a unique blue hue');
INSERT INTO public.planet VALUES (15, 'Avalon', true, 8.765, 2, 5, 'A habitable planet with advanced alien civilizations');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 8, 1, 4.603, 1, 'The star at the center of the Solar System');
INSERT INTO public.star VALUES (2, 'Sirius', true, 2, 0, 2.6, 1, 'Brightest star in the night sky');
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', true, 0, 0, 6.4, 1, 'Closest star system to the Solar System');
INSERT INTO public.star VALUES (4, 'Betelgeuse', true, 0, 0, 8.6, 1, 'Red supergiant in the constellation Orion');
INSERT INTO public.star VALUES (5, 'Vega', true, 0, 0, 0.455, 1, 'Bright star in the northern constellation of Lyra');
INSERT INTO public.star VALUES (6, 'Arcturus', true, 0, 0, 7.1, 1, 'Fourth-brightest star in the night sky');
INSERT INTO public.star VALUES (7, 'Rigel', true, 0, 0, 8.4, 1, 'Blue supergiant in the constellation Orion');
INSERT INTO public.star VALUES (8, 'Proxima Centauri', true, 1, 0, 4.85, 1, 'Closest known star to the Sun');
INSERT INTO public.star VALUES (9, 'Canopus', true, 0, 0, 8.2, 1, 'Brightest star in the southern constellation of Carina');
INSERT INTO public.star VALUES (10, 'Altair', true, 0, 0, 1.2, 1, 'Brightest star in the constellation of Aquila');


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 11, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

