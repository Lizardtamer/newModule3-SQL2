--
-- PostgreSQL database dump
--

-- Rewrite for PH Ideas
-- Replace tablename with your tablename, update column names and their datatypes where appropriate

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

SET default_table_access_method = heap;

--
-- Name: tablename; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tablename (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    rgb character varying(6) NOT NULL,
    is_trans character(1) NOT NULL
);


-- Create Tables Section

--
-- Name: tablename_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tablename_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: lego_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tablename_id_seq OWNED BY public.tablename.id;

-- Set ID Sequences Section

ALTER TABLE ONLY public.tablename ALTER COLUMN id SET DEFAULT nextval('public.tablename_id_seq'::regclass);


-- Load Data Section

--
-- Data for Name: tablename; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tablename (id, name, rgb, is_trans)
VALUES (-1, 'Unknown', '0033B2', 'f'),
(0, 'Black', '05131D', 'f'),
(1, 'Blue', '0055BF', 'f'),
(2, 'Green', '237841', 'f'),
(3, 'Dark Turquoise', '008F9B', 'f'),
(4, 'Red', 'C91A09', 'f'),
(5, 'Dark Pink', 'C870A0', 'f'),
(6, 'Brown', '583927', 'f'),
(7, 'Light Gray', '9BA19D', 'f'),
(8, 'Dark Gray', '6D6E5C', 'f');


-- Set the Primary Key - Foreign Key Constraints/Relationships for tables


--
-- Name: lego_colors lego_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tablename
    ADD CONSTRAINT tablename_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--