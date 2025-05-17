--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.0

-- Started on 2025-05-17 17:53:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16513)
-- Name: Institute_registration; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Institute_registration";


ALTER SCHEMA "Institute_registration" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 225 (class 1259 OID 16537)
-- Name: class_category; Type: TABLE; Schema: Institute_registration; Owner: postgres
--

CREATE TABLE "Institute_registration".class_category (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE "Institute_registration".class_category OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16536)
-- Name: class_category_id_seq; Type: SEQUENCE; Schema: Institute_registration; Owner: postgres
--

CREATE SEQUENCE "Institute_registration".class_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Institute_registration".class_category_id_seq OWNER TO postgres;

--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 224
-- Name: class_category_id_seq; Type: SEQUENCE OWNED BY; Schema: Institute_registration; Owner: postgres
--

ALTER SEQUENCE "Institute_registration".class_category_id_seq OWNED BY "Institute_registration".class_category.id;


--
-- TOC entry 233 (class 1259 OID 16572)
-- Name: collages; Type: TABLE; Schema: Institute_registration; Owner: postgres
--

CREATE TABLE "Institute_registration".collages (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE "Institute_registration".collages OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16579)
-- Name: degrees; Type: TABLE; Schema: Institute_registration; Owner: postgres
--

CREATE TABLE "Institute_registration".degrees (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE "Institute_registration".degrees OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16578)
-- Name: degrees_id_seq; Type: SEQUENCE; Schema: Institute_registration; Owner: postgres
--

CREATE SEQUENCE "Institute_registration".degrees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Institute_registration".degrees_id_seq OWNER TO postgres;

--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 234
-- Name: degrees_id_seq; Type: SEQUENCE OWNED BY; Schema: Institute_registration; Owner: postgres
--

ALTER SEQUENCE "Institute_registration".degrees_id_seq OWNED BY "Institute_registration".degrees.id;


--
-- TOC entry 221 (class 1259 OID 16523)
-- Name: education_bords; Type: TABLE; Schema: Institute_registration; Owner: postgres
--

CREATE TABLE "Institute_registration".education_bords (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE "Institute_registration".education_bords OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16522)
-- Name: education_bords_id_seq; Type: SEQUENCE; Schema: Institute_registration; Owner: postgres
--

CREATE SEQUENCE "Institute_registration".education_bords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Institute_registration".education_bords_id_seq OWNER TO postgres;

--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 220
-- Name: education_bords_id_seq; Type: SEQUENCE OWNED BY; Schema: Institute_registration; Owner: postgres
--

ALTER SEQUENCE "Institute_registration".education_bords_id_seq OWNED BY "Institute_registration".education_bords.id;


--
-- TOC entry 231 (class 1259 OID 16563)
-- Name: institue_registrations; Type: TABLE; Schema: Institute_registration; Owner: postgres
--

CREATE TABLE "Institute_registration".institue_registrations (
    id integer NOT NULL,
    ragistration_name character varying(100) NOT NULL,
    institute_id integer,
    board_id integer,
    medium integer,
    class_category_id integer,
    standers text[],
    subject text[],
    colleges_id integer,
    degree_id integer,
    exma_id integer
);


ALTER TABLE "Institute_registration".institue_registrations OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16562)
-- Name: institue_registrations_id_seq; Type: SEQUENCE; Schema: Institute_registration; Owner: postgres
--

CREATE SEQUENCE "Institute_registration".institue_registrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Institute_registration".institue_registrations_id_seq OWNER TO postgres;

--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 230
-- Name: institue_registrations_id_seq; Type: SEQUENCE OWNED BY; Schema: Institute_registration; Owner: postgres
--

ALTER SEQUENCE "Institute_registration".institue_registrations_id_seq OWNED BY "Institute_registration".institue_registrations.id;


--
-- TOC entry 219 (class 1259 OID 16516)
-- Name: institute_type; Type: TABLE; Schema: Institute_registration; Owner: postgres
--

CREATE TABLE "Institute_registration".institute_type (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE "Institute_registration".institute_type OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16515)
-- Name: institute_type_id_seq; Type: SEQUENCE; Schema: Institute_registration; Owner: postgres
--

CREATE SEQUENCE "Institute_registration".institute_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Institute_registration".institute_type_id_seq OWNER TO postgres;

--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 218
-- Name: institute_type_id_seq; Type: SEQUENCE OWNED BY; Schema: Institute_registration; Owner: postgres
--

ALTER SEQUENCE "Institute_registration".institute_type_id_seq OWNED BY "Institute_registration".institute_type.id;


--
-- TOC entry 223 (class 1259 OID 16530)
-- Name: mediume; Type: TABLE; Schema: Institute_registration; Owner: postgres
--

CREATE TABLE "Institute_registration".mediume (
    id integer NOT NULL,
    name character varying(100)
);


ALTER TABLE "Institute_registration".mediume OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16529)
-- Name: mediume_id_seq; Type: SEQUENCE; Schema: Institute_registration; Owner: postgres
--

CREATE SEQUENCE "Institute_registration".mediume_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Institute_registration".mediume_id_seq OWNER TO postgres;

--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 222
-- Name: mediume_id_seq; Type: SEQUENCE OWNED BY; Schema: Institute_registration; Owner: postgres
--

ALTER SEQUENCE "Institute_registration".mediume_id_seq OWNED BY "Institute_registration".mediume.id;


--
-- TOC entry 227 (class 1259 OID 16544)
-- Name: standers; Type: TABLE; Schema: Institute_registration; Owner: postgres
--

CREATE TABLE "Institute_registration".standers (
    id integer NOT NULL,
    name character varying(100),
    category_id integer
);


ALTER TABLE "Institute_registration".standers OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16543)
-- Name: standers_id_seq; Type: SEQUENCE; Schema: Institute_registration; Owner: postgres
--

CREATE SEQUENCE "Institute_registration".standers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Institute_registration".standers_id_seq OWNER TO postgres;

--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 226
-- Name: standers_id_seq; Type: SEQUENCE OWNED BY; Schema: Institute_registration; Owner: postgres
--

ALTER SEQUENCE "Institute_registration".standers_id_seq OWNED BY "Institute_registration".standers.id;


--
-- TOC entry 229 (class 1259 OID 16556)
-- Name: subject; Type: TABLE; Schema: Institute_registration; Owner: postgres
--

CREATE TABLE "Institute_registration".subject (
    id integer NOT NULL,
    name character varying(100),
    standerd_id integer
);


ALTER TABLE "Institute_registration".subject OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16555)
-- Name: subject_id_seq; Type: SEQUENCE; Schema: Institute_registration; Owner: postgres
--

CREATE SEQUENCE "Institute_registration".subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Institute_registration".subject_id_seq OWNER TO postgres;

--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 228
-- Name: subject_id_seq; Type: SEQUENCE OWNED BY; Schema: Institute_registration; Owner: postgres
--

ALTER SEQUENCE "Institute_registration".subject_id_seq OWNED BY "Institute_registration".subject.id;


--
-- TOC entry 232 (class 1259 OID 16571)
-- Name: univercityes_id_seq; Type: SEQUENCE; Schema: Institute_registration; Owner: postgres
--

CREATE SEQUENCE "Institute_registration".univercityes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Institute_registration".univercityes_id_seq OWNER TO postgres;

--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 232
-- Name: univercityes_id_seq; Type: SEQUENCE OWNED BY; Schema: Institute_registration; Owner: postgres
--

ALTER SEQUENCE "Institute_registration".univercityes_id_seq OWNED BY "Institute_registration".collages.id;


--
-- TOC entry 4685 (class 2604 OID 16540)
-- Name: class_category id; Type: DEFAULT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".class_category ALTER COLUMN id SET DEFAULT nextval('"Institute_registration".class_category_id_seq'::regclass);


--
-- TOC entry 4689 (class 2604 OID 16575)
-- Name: collages id; Type: DEFAULT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".collages ALTER COLUMN id SET DEFAULT nextval('"Institute_registration".univercityes_id_seq'::regclass);


--
-- TOC entry 4690 (class 2604 OID 16582)
-- Name: degrees id; Type: DEFAULT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".degrees ALTER COLUMN id SET DEFAULT nextval('"Institute_registration".degrees_id_seq'::regclass);


--
-- TOC entry 4683 (class 2604 OID 16526)
-- Name: education_bords id; Type: DEFAULT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".education_bords ALTER COLUMN id SET DEFAULT nextval('"Institute_registration".education_bords_id_seq'::regclass);


--
-- TOC entry 4688 (class 2604 OID 16566)
-- Name: institue_registrations id; Type: DEFAULT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".institue_registrations ALTER COLUMN id SET DEFAULT nextval('"Institute_registration".institue_registrations_id_seq'::regclass);


--
-- TOC entry 4682 (class 2604 OID 16519)
-- Name: institute_type id; Type: DEFAULT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".institute_type ALTER COLUMN id SET DEFAULT nextval('"Institute_registration".institute_type_id_seq'::regclass);


--
-- TOC entry 4684 (class 2604 OID 16533)
-- Name: mediume id; Type: DEFAULT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".mediume ALTER COLUMN id SET DEFAULT nextval('"Institute_registration".mediume_id_seq'::regclass);


--
-- TOC entry 4686 (class 2604 OID 16547)
-- Name: standers id; Type: DEFAULT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".standers ALTER COLUMN id SET DEFAULT nextval('"Institute_registration".standers_id_seq'::regclass);


--
-- TOC entry 4687 (class 2604 OID 16559)
-- Name: subject id; Type: DEFAULT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".subject ALTER COLUMN id SET DEFAULT nextval('"Institute_registration".subject_id_seq'::regclass);


--
-- TOC entry 4698 (class 2606 OID 16542)
-- Name: class_category class_category_pkey; Type: CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".class_category
    ADD CONSTRAINT class_category_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16584)
-- Name: degrees degrees_pkey; Type: CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".degrees
    ADD CONSTRAINT degrees_pkey PRIMARY KEY (id);


--
-- TOC entry 4694 (class 2606 OID 16528)
-- Name: education_bords education_bords_pkey; Type: CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".education_bords
    ADD CONSTRAINT education_bords_pkey PRIMARY KEY (id);


--
-- TOC entry 4704 (class 2606 OID 16570)
-- Name: institue_registrations institue_registrations_pkey; Type: CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".institue_registrations
    ADD CONSTRAINT institue_registrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4692 (class 2606 OID 16521)
-- Name: institute_type institute_type_pkey; Type: CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".institute_type
    ADD CONSTRAINT institute_type_pkey PRIMARY KEY (id);


--
-- TOC entry 4696 (class 2606 OID 16535)
-- Name: mediume mediume_pkey; Type: CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".mediume
    ADD CONSTRAINT mediume_pkey PRIMARY KEY (id);


--
-- TOC entry 4700 (class 2606 OID 16549)
-- Name: standers standers_pkey; Type: CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".standers
    ADD CONSTRAINT standers_pkey PRIMARY KEY (id);


--
-- TOC entry 4702 (class 2606 OID 16561)
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (id);


--
-- TOC entry 4706 (class 2606 OID 16577)
-- Name: collages univercityes_pkey; Type: CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".collages
    ADD CONSTRAINT univercityes_pkey PRIMARY KEY (id);


--
-- TOC entry 4711 (class 2606 OID 16585)
-- Name: institue_registrations institue_registrations_class_category_fk; Type: FK CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".institue_registrations
    ADD CONSTRAINT institue_registrations_class_category_fk FOREIGN KEY (class_category_id) REFERENCES "Institute_registration".class_category(id);


--
-- TOC entry 4712 (class 2606 OID 16595)
-- Name: institue_registrations institue_registrations_education_bords_fk; Type: FK CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".institue_registrations
    ADD CONSTRAINT institue_registrations_education_bords_fk FOREIGN KEY (board_id) REFERENCES "Institute_registration".education_bords(id);


--
-- TOC entry 4713 (class 2606 OID 16590)
-- Name: institue_registrations institue_registrations_institute_type_fk; Type: FK CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".institue_registrations
    ADD CONSTRAINT institue_registrations_institute_type_fk FOREIGN KEY (institute_id) REFERENCES "Institute_registration".institute_type(id);


--
-- TOC entry 4714 (class 2606 OID 16600)
-- Name: institue_registrations institue_registrations_mediume_fk; Type: FK CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".institue_registrations
    ADD CONSTRAINT institue_registrations_mediume_fk FOREIGN KEY (medium) REFERENCES "Institute_registration".mediume(id);


--
-- TOC entry 4709 (class 2606 OID 16550)
-- Name: standers standers_class_category_fk; Type: FK CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".standers
    ADD CONSTRAINT standers_class_category_fk FOREIGN KEY (category_id) REFERENCES "Institute_registration".class_category(id);


--
-- TOC entry 4710 (class 2606 OID 16605)
-- Name: subject subject_standers_fk; Type: FK CONSTRAINT; Schema: Institute_registration; Owner: postgres
--

ALTER TABLE ONLY "Institute_registration".subject
    ADD CONSTRAINT subject_standers_fk FOREIGN KEY (standerd_id) REFERENCES "Institute_registration".standers(id);


-- Completed on 2025-05-17 17:53:10

--
-- PostgreSQL database dump complete
--

