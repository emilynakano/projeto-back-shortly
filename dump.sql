--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.4 (Ubuntu 14.4-0ubuntu0.22.04.1)

-- Started on 2022-08-05 10:22:32 -03

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

--
-- TOC entry 3379 (class 1262 OID 16777)
-- Name: projeto_shortly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE projeto_shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE projeto_shortly OWNER TO postgres;

\connect projeto_shortly

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
-- TOC entry 212 (class 1259 OID 16788)
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16787)
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- TOC entry 214 (class 1259 OID 16907)
-- Name: shortenedUrls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."shortenedUrls" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."shortenedUrls" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16906)
-- Name: shortenedUrls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."shortenedUrls_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shortenedUrls_id_seq" OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."shortenedUrls_id_seq" OWNED BY public."shortenedUrls".id;


--
-- TOC entry 210 (class 1259 OID 16779)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16778)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3218 (class 2604 OID 16791)
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16910)
-- Name: shortenedUrls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls" ALTER COLUMN id SET DEFAULT nextval('public."shortenedUrls_id_seq"'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16782)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3371 (class 0 OID 16788)
-- Dependencies: 212
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sessions (id, "userId", token) VALUES (1, 2, '3605a92c-e0d3-4c52-856e-9bf63ec7ac0a');
INSERT INTO public.sessions (id, "userId", token) VALUES (2, 2, 'd04959e2-b251-4530-8f70-4d76f0169443');
INSERT INTO public.sessions (id, "userId", token) VALUES (3, 2, '1685258d-dc01-4a44-b9c9-c9f82981d86c');
INSERT INTO public.sessions (id, "userId", token) VALUES (4, 2, '3992819f-5ba2-4fea-a200-3f37eb4e0644');
INSERT INTO public.sessions (id, "userId", token) VALUES (5, 3, '7d0552e9-805e-445b-ad65-12d13652d110');
INSERT INTO public.sessions (id, "userId", token) VALUES (6, 6, '75eff42b-ade4-4568-b9ef-3afd64c8321f');
INSERT INTO public.sessions (id, "userId", token) VALUES (7, 11, '38792a76-f8c4-4f07-a387-c7428f97c8c5');


--
-- TOC entry 3373 (class 0 OID 16907)
-- Dependencies: 214
-- Data for Name: shortenedUrls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (1, 3, 'aaaaaaaaaaaa', 'https://asasasa', 0);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (10, 6, 'bRsUoiEWlwXq9od69hs_4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 2);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (11, 6, 'tm-Jg8oC-pBWBw5gFdAZK', 'https://maisuma', 1);
INSERT INTO public."shortenedUrls" (id, "userId", "shortUrl", url, "visitCount") VALUES (12, 11, 'L0kgjQwqyvYgNqMkVY5XT', 'https://emilyaqui', 4);


--
-- TOC entry 3369 (class 0 OID 16779)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password) VALUES (1, 'emily', 'emily@emily.com', '1234');
INSERT INTO public.users (id, name, email, password) VALUES (2, 'João', 'hm@emily.com', '$2b$10$2CQDWlK9isbwsA3EShvy8ODG5TPgo0FNLTyKAJ.3570nCkwADCnIa');
INSERT INTO public.users (id, name, email, password) VALUES (3, 'emi', 'emi@emily.com', '$2b$10$Ahr0xNRMKQzHJ4i0hVKvjOVKnIKDIbL8V8zXdxnRlA9qUsNTaXjQG');
INSERT INTO public.users (id, name, email, password) VALUES (4, 'João', 'joao@driven.com.br', '$2b$10$uhPQpSPYYL95p7ebz.7epetamg85XQ1TfNtnCTbwOj6HE4yrKtnka');
INSERT INTO public.users (id, name, email, password) VALUES (5, 'emilia', 'emilia@driven.com.br', '$2b$10$6C3DDkUTyBIVotSn0AzZpe3xek30Qo/tzV6fnUM/vxGw2b0An1Id.');
INSERT INTO public.users (id, name, email, password) VALUES (6, 'karol', 'karol@driven.com.br', '$2b$10$eEkPXS/5YvIWJZlCemRndOZNpO.OwUZQ.MxVPRux.s2/ZzEfdwGCq');
INSERT INTO public.users (id, name, email, password) VALUES (7, 'joaninha', 'joaninha@driven.com.br', '$2b$10$YlnE.QEOhAeewDAkQc4iRew5gQrQb90Zgxr/CyDcgcro7MTlrMwaK');
INSERT INTO public.users (id, name, email, password) VALUES (8, 'ALELUIA', 'ALELUIA@driven.com.br', '$2b$10$wR7qCI7ucesdbr7SqYjGFekN2FSqFXtdeM8nkN2G/uhLhnGnPTK5a');
INSERT INTO public.users (id, name, email, password) VALUES (9, 'gloooria', 'glooria@driven.com.br', '$2b$10$lH8ki9juLEjxI7WtQ2EoHu637dJ9auvbJqCLOktz90L.W/aU53Dge');
INSERT INTO public.users (id, name, email, password) VALUES (10, 'aaaf', 'aaf@driven.com.br', '$2b$10$AMOEjYvZM2oh9OCR/yH.k.m.u2YOI7LZcKVOugsXoXPNyUiQz.Gye');
INSERT INTO public.users (id, name, email, password) VALUES (11, 'ATENCAO', 'ATENCAO@driven.com.br', '$2b$10$bLzQTfQ2z7SKk/zxS6RJl.rjFx8wJTf6zg.4c8.B3d3mqsZpnbHlC');


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 211
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_id_seq', 7, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 213
-- Name: shortenedUrls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."shortenedUrls_id_seq"', 12, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3224 (class 2606 OID 16795)
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16915)
-- Name: shortenedUrls shortenedUrls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16786)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16796)
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 16916)
-- Name: shortenedUrls shortenedUrls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."shortenedUrls"
    ADD CONSTRAINT "shortenedUrls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


-- Completed on 2022-08-05 10:22:33 -03

--
-- PostgreSQL database dump complete
--
