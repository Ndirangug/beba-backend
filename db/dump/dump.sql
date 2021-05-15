--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)

-- Started on 2021-05-15 09:41:47 EAT

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
-- TOC entry 200 (class 1259 OID 5120188)
-- Name: drivers; Type: TABLE; Schema: public; Owner: beba_backend
--

CREATE TABLE public.drivers (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    first_name text,
    last_name text,
    email text,
    phone text,
    sex text,
    date_of_birth timestamp with time zone,
    date_employed timestamp with time zone,
    comment text,
    evaluation_report text,
    drivers_licence text,
    avatar text,
    on_trip boolean
);


ALTER TABLE public.drivers OWNER TO beba_backend;

--
-- TOC entry 201 (class 1259 OID 5120194)
-- Name: drivers_id_seq; Type: SEQUENCE; Schema: public; Owner: beba_backend
--

CREATE SEQUENCE public.drivers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.drivers_id_seq OWNER TO beba_backend;

--
-- TOC entry 4012 (class 0 OID 0)
-- Dependencies: 201
-- Name: drivers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beba_backend
--

ALTER SEQUENCE public.drivers_id_seq OWNED BY public.drivers.id;


--
-- TOC entry 202 (class 1259 OID 5120196)
-- Name: trips; Type: TABLE; Schema: public; Owner: beba_backend
--

CREATE TABLE public.trips (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    driver_id bigint,
    vehicle_id bigint,
    time_start timestamp with time zone,
    time_end timestamp with time zone,
    time_expected_start timestamp with time zone,
    time_expected_end timestamp with time zone,
    latitude_begin numeric,
    longitude_begin numeric,
    latitude_end numeric,
    longitude_end numeric,
    status text
);


ALTER TABLE public.trips OWNER TO beba_backend;

--
-- TOC entry 203 (class 1259 OID 5120202)
-- Name: trips_id_seq; Type: SEQUENCE; Schema: public; Owner: beba_backend
--

CREATE SEQUENCE public.trips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_id_seq OWNER TO beba_backend;

--
-- TOC entry 4013 (class 0 OID 0)
-- Dependencies: 203
-- Name: trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beba_backend
--

ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;


--
-- TOC entry 204 (class 1259 OID 5120204)
-- Name: vehicles; Type: TABLE; Schema: public; Owner: beba_backend
--

CREATE TABLE public.vehicles (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    registration_number text,
    type text,
    model_name text,
    model_year text,
    color text,
    condition text,
    max_weight numeric,
    fuel_consumption numeric,
    brand text,
    date_purchased timestamp with time zone,
    expected_end_service timestamp with time zone,
    photo text
);


ALTER TABLE public.vehicles OWNER TO beba_backend;

--
-- TOC entry 205 (class 1259 OID 5120210)
-- Name: vehicles_id_seq; Type: SEQUENCE; Schema: public; Owner: beba_backend
--

CREATE SEQUENCE public.vehicles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vehicles_id_seq OWNER TO beba_backend;

--
-- TOC entry 4014 (class 0 OID 0)
-- Dependencies: 205
-- Name: vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beba_backend
--

ALTER SEQUENCE public.vehicles_id_seq OWNED BY public.vehicles.id;


--
-- TOC entry 3852 (class 2604 OID 5120212)
-- Name: drivers id; Type: DEFAULT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.drivers ALTER COLUMN id SET DEFAULT nextval('public.drivers_id_seq'::regclass);


--
-- TOC entry 3853 (class 2604 OID 5120213)
-- Name: trips id; Type: DEFAULT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);


--
-- TOC entry 3854 (class 2604 OID 5120214)
-- Name: vehicles id; Type: DEFAULT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.vehicles ALTER COLUMN id SET DEFAULT nextval('public.vehicles_id_seq'::regclass);


--
-- TOC entry 4000 (class 0 OID 5120188)
-- Dependencies: 200
-- Data for Name: drivers; Type: TABLE DATA; Schema: public; Owner: beba_backend
--

COPY public.drivers (id, created_at, updated_at, deleted_at, first_name, last_name, email, phone, sex, date_of_birth, date_employed, comment, evaluation_report, drivers_licence, avatar, on_trip) FROM stdin;
14	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Eloisa	Bailey	iytRFsp@BuMxuBh.biz	276-110-5493	female	1993-07-29 00:01:37+00	2007-02-01 12:40:46+00	Aut accusantium sit perferendis consequatur voluptatem.	http://www.vaMUiAS.net/	https://www.dMWkeEB.com/JoekghK	https://i.pravatar.cc/150?img=44	\N
17	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Waino	Wisozk	AvMwtaL@MAJCPKK.net	710-581-4369	female	2057-07-10 05:06:19+00	1994-01-27 21:59:12+00	Voluptatem accusantium consequatur sit aut perferendis.	http://WYIMWfm.net/	https://www.JUWWStB.org/eaPiVKl	https://i.pravatar.cc/150?img=14	\N
19	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Randi	Johnston	GFwOwIQ@aVbsNAW.biz	154-987-6231	female	2043-03-08 06:26:13+00	2065-08-14 04:49:04+00	Voluptatem accusantium aut consequatur sit perferendis.	https://www.JsjYOGI.com/GhOqCfk	http://www.OuQeRUp.ru/eFFPioQ	https://i.pravatar.cc/150?img=46	\N
22	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Judson	Dietrich	yJfvWUG@mFlroPd.org	278-145-3961	female	1984-08-23 22:52:11+00	2010-11-27 09:13:50+00	Aut sit perferendis voluptatem consequatur accusantium.	http://OjaEeAM.info/	http://www.LfTpVPd.net/	https://i.pravatar.cc/150?img=48	t
23	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Lia	Fahey	XAUdVWh@JLjoVad.ru	931-287-4510	female	2043-11-26 04:28:31+00	2047-04-02 00:34:57+00	Accusantium voluptatem consequatur perferendis aut sit.	https://IalIFaI.ru/ManLftW	http://wkEypkT.org/NxGHBSm.php	https://i.pravatar.cc/150?img=31	t
25	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Onie	Moen	MiFHRGc@DoflhdZ.biz	527-891-3410	female	2063-12-07 13:27:10+00	2061-10-25 16:35:17+00	Aut perferendis voluptatem consequatur accusantium sit.	http://rmxpnXY.biz/VOoJfnu.php	http://www.WoKXTGZ.com/FIhPoyL	https://i.pravatar.cc/150?img=68	t
27	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Merlin	Stamm	apxUhfW@XfKLRLR.com	256-174-3981	female	2015-03-25 01:49:53+00	2040-05-24 07:33:55+00	Aut accusantium voluptatem consequatur perferendis sit.	http://wTGIWWC.net/RaZYRKT	http://ZouPAPE.net/eVPREHv	https://i.pravatar.cc/150?img=44	t
28	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Madison	Boyer	HSorsVE@ROtkpxR.biz	483-675-2191	male	1972-10-27 15:49:51+00	1996-09-19 12:14:24+00	Consequatur sit aut voluptatem perferendis accusantium.	http://qDODgkp.ru/	http://tUkJYDZ.ru/yFKwjRw	https://i.pravatar.cc/150?img=57	t
29	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Tiffany	Ondricka	FbaBKAT@XeIpwDY.info	951-038-1764	female	2056-03-11 08:44:07+00	2058-04-28 07:12:16+00	Accusantium consequatur sit perferendis voluptatem aut.	http://www.MQSNyoC.net/	http://UEdByaB.info/iQJGCpT.php	https://i.pravatar.cc/150?img=59	f
30	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Gail	Weimann	cESqKBr@tWECWfo.net	108-541-9376	male	2008-08-07 16:14:39+00	1977-10-20 18:12:38+00	Perferendis consequatur aut accusantium sit voluptatem.	http://qBKlUnC.biz/fBhYHWx.html	https://www.NgeAOYA.org/hIjeFai	https://i.pravatar.cc/150?img=2	t
11	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	2020-04-01 22:57:14.118702+00	Sadie	Torp	BDWtZGa@hdddSPp.ru	829-110-5463	male	1987-11-04 05:39:12+00	1991-03-14 01:24:27+00	Aut sit consequatur perferendis accusantium voluptatem.	http://www.vbVAaYf.info/	https://FWDgGvK.com/PIgTIhm.php	https://i.pravatar.cc/150?img=67	\N
8	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	2020-04-01 22:59:47.41874+00	Aimee	Stark	bwKArSW@areuZow.biz	368-210-1459	female	1975-04-16 19:50:55+00	2004-02-28 01:27:03+00	Voluptatem consequatur accusantium aut perferendis sit.	https://www.BHqRSXD.biz/	https://JUhvRjX.ru/ABuYeFN	https://i.pravatar.cc/150?img=12	\N
7	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	2020-04-01 23:00:53.025992+00	Hollis	Borer	qqYeSLR@fFfTrZU.org	417-310-9286	female	2041-07-29 14:18:30+00	1970-04-17 12:15:02+00	Accusantium sit consequatur voluptatem aut perferendis.	http://XsJkExC.ru/lBaJqUu.php	http://sjslxLw.org/tKiBDSq.php	https://i.pravatar.cc/150?img=21	\N
13	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	2020-04-01 23:01:21.303339+00	Bernard	Dickinson	TFTObxN@DvqVYsc.biz	104-219-5867	male	2054-03-31 22:35:35+00	2020-02-08 17:04:58+00	Sit accusantium voluptatem perferendis consequatur aut.	https://MwdJgWX.biz/rCsrwDq.html	http://WHXOBit.org/	https://i.pravatar.cc/150?img=55	\N
10	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	2020-04-01 23:03:11.163151+00	Dallas	Nienow	jhOmaya@SXNPTKN.biz	417-231-0859	female	1989-12-25 17:58:26+00	2053-12-02 03:57:25+00	Sit perferendis voluptatem consequatur accusantium aut.	http://ASyYrJM.com/WTKsLPr.html	http://www.FcZSkgT.info/	https://i.pravatar.cc/150?img=65	\N
12	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	2020-04-01 23:04:07.408946+00	Raul	Anderson	ADZoLJT@nNpmMdX.ru	254-896-3710	male	1976-09-14 03:38:16+00	2018-10-27 19:35:08+00	Sit aut accusantium perferendis voluptatem consequatur.	https://www.NkrbbDF.com/UEORAsk	http://www.mAcDwye.org/	https://i.pravatar.cc/150?img=10	\N
18	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	2020-04-01 23:06:05.024333+00	Raoul	Waters	uMQEWsj@LsiHxCC.net	825-941-0761	male	2046-04-22 18:08:04+00	1972-07-30 05:53:52+00	Consequatur perferendis sit accusantium aut voluptatem.	https://VvEGgRH.ru/YRLyjDb.php	http://RijYhPt.ru/uGcYnZk	https://i.pravatar.cc/150?img=31	\N
20	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	2020-04-01 23:07:57.666569+00	Alfreda	Abernathy	DCSgRZM@MPvGPir.com	101-376-2594	male	2016-12-05 14:51:25+00	1971-10-01 07:06:41+00	Accusantium consequatur perferendis voluptatem sit aut.	https://LarroxR.info/YlPMftq	https://VyGXxaR.info/mxDoMfH	https://i.pravatar.cc/150?img=59	\N
21	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	2020-04-01 23:08:07.353485+00	Ewald	Hamill	KfkubTm@iHiVtOK.net	210-856-4137	female	1971-01-08 14:40:38+00	2002-03-09 11:01:00+00	Voluptatem consequatur aut sit perferendis accusantium.	https://ZhmFmdL.biz/cEeVMKB.html	https://LYckFul.org/YrOLylG.html	https://i.pravatar.cc/150?img=69	\N
24	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	2020-04-01 23:09:37.16315+00	Sarah	Adams	cDOLEAO@DqFDcJU.net	794-153-6810	male	2018-04-17 01:23:36+00	1984-01-12 22:38:17+00	Aut accusantium consequatur voluptatem sit perferendis.	https://eQyfkoR.org/dbEaBVh	https://cdQewbB.ru/tSVnUwu.html	https://i.pravatar.cc/150?img=10	f
26	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	2020-04-02 00:16:46.022648+00	Solon	Kihn	KuKHuWN@lEOwJqy.net	739-841-0261	female	1982-06-27 20:00:39+00	2057-06-24 16:05:32+00	Sit consequatur perferendis aut accusantium voluptatem.	http://www.YcoJRLK.com/vXEVphI	https://www.QQPraRH.com/oYfKlGR	https://i.pravatar.cc/150?img=1	t
31	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Katherine	Collier	tCfYMoI@buReImF.biz	129-710-3586	female	2030-07-30 03:13:48+00	1987-12-26 00:13:28+00	Accusantium aut perferendis sit voluptatem consequatur.	http://www.gJkVhTZ.org/	https://TtOhrDu.org/hVOoZeR.html	https://i.pravatar.cc/150?img=61	t
3	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Muhammad	Lowe	xZIThhM@mtthuvt.com	210-963-4785	female	2053-01-10 11:44:39+00	2013-03-03 14:00:14+00	Aut voluptatem perferendis consequatur sit accusantium.	https://www.YvZryIY.ru/	https://SILSKBJ.ru/	https://i.pravatar.cc/150?img=44	\N
5	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Darren	Davis	uihiuhuihi	510-273-8916	female	2045-03-03 03:23:13+00	2051-01-30 04:41:29+00	Aut voluptatem accusantium perferendis sit consequatur.	http://www.HvQTdAW.net/QbfIYAM	http://www.unNQeUD.com/	https://i.pravatar.cc/150?img=28	\N
9	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	George	Kabucho	kabuchogeorge3@gmail.com	510-327-6149	female	1989-05-01 13:18:24+00	2053-11-28 15:50:46+00	Consequatur voluptatem aut accusantium perferendis sit.	http://qNAIblm.ru/SvgKIOe.php	https://XBaZruj.biz/	https://i.pravatar.cc/150?img=33	\N
6	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Kahu	Koch	shazkawho@gmail.com	691-045-7312	female	1997-04-05 15:54:12+00	2014-03-17 05:11:59+00	Sit accusantium consequatur perferendis aut voluptatem.	http://XXYPenm.net/TBTbUMl.php	https://www.qUQSlCi.ru/	https://i.pravatar.cc/150?img=7	\N
32	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Rodrick	Cormier	INiXQWZ@DDNlfGo.org	510-934-6812	female	2056-12-01 07:11:59+00	2020-08-22 21:25:05+00	Sit aut consequatur accusantium perferendis voluptatem.	http://OuHcbKC.biz/	https://www.HBhRjoM.org/fUfsiUw	https://i.pravatar.cc/150?img=69	t
33	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Jadyn	Hauck	pqsIUAH@lZHvOAK.org	281-394-6751	female	2004-03-10 06:19:50+00	2054-02-12 06:42:56+00	Aut sit consequatur perferendis accusantium voluptatem.	http://www.HsKwxqx.ru/Kjfuwho	http://bXudZNt.ru/	https://i.pravatar.cc/150?img=51	t
34	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Ruthie	Grant	XYcqqNt@LXagVLs.biz	657-291-3481	male	2052-10-22 02:24:23+00	2031-09-12 10:11:35+00	Accusantium consequatur aut perferendis voluptatem sit.	http://xwInUkd.net/	http://tEftWSY.info/muvLFtu.php	https://i.pravatar.cc/150?img=66	f
35	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Mark	Nolan	VCHHArX@KptbBOw.net	593-821-0641	male	2069-07-01 15:58:53+00	1986-02-08 03:00:50+00	Sit perferendis voluptatem consequatur aut accusantium.	http://www.OmSGNsj.com/mVIwjLD	https://PUiuWSy.net/LTvZQwX.html	https://i.pravatar.cc/150?img=19	t
37	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Kamille	Gaylord	KDQHnXo@ALKpDRF.ru	710-192-3846	male	1996-10-08 01:25:03+00	2016-06-07 23:48:06+00	Aut consequatur perferendis sit accusantium voluptatem.	https://qKhuYDh.ru/OKfmimt	https://fAwEIXD.org/	https://i.pravatar.cc/150?img=42	t
38	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Armando	Predovic	vUuWYNB@pUAOfJN.org	395-810-4762	female	1984-12-27 03:48:34+00	2001-01-14 23:14:23+00	Perferendis accusantium consequatur sit voluptatem aut.	http://xVCsvgj.ru/dsOoByK.php	http://twKvdpT.info/CWwkMHe	https://i.pravatar.cc/150?img=16	t
39	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Aglae	Mueller	ZgXVJHu@jmaUSvj.biz	697-854-3102	female	2027-07-03 12:10:26+00	1987-03-11 19:24:56+00	Accusantium sit perferendis voluptatem consequatur aut.	http://OPkehev.ru/WIFmqDV.php	https://WOAevFG.com/kQiPFIB	https://i.pravatar.cc/150?img=27	t
40	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Odessa	Terry	ruJVMKy@sTmYXdh.biz	510-846-1972	male	2042-11-23 23:36:29+00	2047-10-25 15:42:26+00	Sit perferendis aut accusantium voluptatem consequatur.	https://feGYiyR.info/eclDncS.php	http://www.faPhoCC.net/TaPmfNq	https://i.pravatar.cc/150?img=31	f
41	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Antonette	Schumm	QJqWjxv@QfSLLHA.com	276-910-8451	female	1980-10-19 11:34:07+00	2006-01-10 14:39:54+00	Consequatur sit perferendis voluptatem accusantium aut.	http://QskZGJR.org/PKAVLOU.php	https://tiVxKOw.ru/vJiFUdK.php	https://i.pravatar.cc/150?img=58	t
42	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Modesto	McClure	DOMLKsk@fLvUpxY.org	987-131-0256	male	2062-04-24 18:57:36+00	1998-06-16 09:47:15+00	Accusantium voluptatem sit perferendis aut consequatur.	http://ZOuXXvn.info/	https://PlYkwIV.org/IvgZblO	https://i.pravatar.cc/150?img=28	f
43	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Easton	Crist	xODVSlu@fikZgxA.info	568-710-2913	male	2026-12-07 15:18:19+00	2069-05-18 22:25:25+00	Aut voluptatem perferendis consequatur sit accusantium.	https://www.ipWUkhE.biz/rAMqwAN	https://pZlcgHG.info/	https://i.pravatar.cc/150?img=18	f
44	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Nya	Frami	xeLBpsV@tJdHcmF.net	396-411-0785	male	2009-02-07 04:41:38+00	2057-02-12 14:31:39+00	Aut accusantium sit voluptatem consequatur perferendis.	http://www.mQVdbVp.ru/YUDZiMu	http://vcafdEM.biz/uuVWYkt.php	https://i.pravatar.cc/150?img=35	f
45	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Lilian	Balistreri	msZomle@YlFURVK.org	105-413-6297	male	2053-04-23 14:07:30+00	2059-10-02 10:31:44+00	Aut sit perferendis voluptatem accusantium consequatur.	http://aKLanpS.org/	http://XSlpsUG.com/hIBULyM.html	https://i.pravatar.cc/150?img=9	t
46	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Devon	Beier	eWVXoBw@AmckNmS.com	259-310-7184	male	1998-09-01 00:06:20+00	1985-11-24 09:11:41+00	Accusantium aut perferendis sit consequatur voluptatem.	https://aQEtLds.biz/VVwkUXI.php	http://TvsyHxe.biz/Vckbyrw.html	https://i.pravatar.cc/150?img=59	f
47	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Alexie	Corkery	sYfSoQK@EflThpr.info	310-129-8457	male	1985-05-17 14:43:18+00	2044-09-22 10:35:34+00	Perferendis accusantium consequatur aut voluptatem sit.	https://wenpmvJ.ru/SolsrYi.php	https://mgdoduq.com/	https://i.pravatar.cc/150?img=54	t
48	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Kelsie	Skiles	LwbhWVV@AuFSJYP.org	108-294-1735	male	2028-03-31 11:29:23+00	1978-09-16 12:02:04+00	Voluptatem sit accusantium perferendis aut consequatur.	http://www.UoouXtv.net/	https://UUCxuSW.org/KFIMbcJ.html	https://i.pravatar.cc/150?img=39	t
49	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	Haylie	Bartell	HUlqbNE@rUQwjZl.ru	167-543-9810	male	2051-09-17 00:06:01+00	2063-03-20 18:39:53+00	Voluptatem accusantium aut perferendis consequatur sit.	https://MQPGyyH.com/	http://HpxbGvx.net/	https://i.pravatar.cc/150?img=26	f
50	2020-04-01 20:32:51.963404+00	2020-04-01 20:32:51.963404+00	\N						1970-01-01 00:00:00+00	1970-01-01 00:00:00+00					f
36	2021-04-18 06:49:06.03123+00	2021-04-18 06:49:06.03123+00	\N	George	Ndirangu	ndirangu.mepawa@gmail.com	151-073-8296	female	1975-11-07 22:22:42+00	2014-02-07 10:18:36+00	Consequatur accusantium voluptatem aut sit perferendis.	http://oFAvVFi.net/	http://tDoIgDa.info/RUcjodu.html	https://i.pravatar.cc/150?img=23	f
2	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Stone	Daniel	GjfDeJn@BjrDysF.org	134-592-1068	female	1985-07-11 14:20:48+00	2037-06-16 01:05:43+00	Perferendis aut voluptatem sit consequatur accusantium.	http://www.BSYqlrX.ru/	http://puOBpsG.biz/fFHkdgv.html	https://i.pravatar.cc/150?img=48	\N
4	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Gerald	Lowe	fJImBGo@fpkEwiU.net	428-135-1069	male	2007-09-05 17:51:17+00	1992-06-18 06:39:38+00	Accusantium voluptatem consequatur sit perferendis aut.	https://ZgYZCef.biz/	https://www.FgDREcZ.org/qNFQGNp	https://i.pravatar.cc/150?img=51	\N
15	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Kitu	Another	abuchogeorge3@gmail.com	642-151-0789	female	1990-08-01 00:28:02+00	2020-06-24 16:12:49+00	Accusantium voluptatem sit consequatur perferendis aut.	http://www.yedxKoV.org/AFPLNjL	http://WBpPlJv.biz/GxwtAtM.html	https://i.pravatar.cc/150?img=54	\N
16	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Kahuho	Kunde	shazkho@gmail.com	935-718-4210	female	2039-08-06 14:10:14+00	2035-10-19 21:55:40+00	Voluptatem aut perferendis sit accusantium consequatur.	https://GaITycf.net/	https://WZuWeYI.ru/ESKMqKb	https://i.pravatar.cc/150?img=18	\N
\.


--
-- TOC entry 4002 (class 0 OID 5120196)
-- Dependencies: 202
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner: beba_backend
--

COPY public.trips (id, created_at, updated_at, deleted_at, driver_id, vehicle_id, time_start, time_end, time_expected_start, time_expected_end, latitude_begin, longitude_begin, latitude_end, longitude_end, status) FROM stdin;
29	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	4	7	2020-07-11 18:44:20.433025+00	2020-07-14 18:44:20.433025+00	2020-07-11 17:44:20.433025+00	2020-07-14 17:44:20.433025+00	73.03857421875	-10.80706787109375	22.315948486328125	-109.93000030517578	ongoing
23	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	8	9	2014-05-03 08:24:39.11039+00	\N	2014-05-03 07:24:39.11039+00	2014-05-06 07:24:39.11039+00	-50.081241607666016	30.605575561523438	-26.177947998046875	122.62539672851562	cancelled
24	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	7	8	2017-10-02 23:24:28.457027+00	\N	2017-10-02 22:24:28.457027+00	2017-10-05 22:24:28.457027+00	23.506385803222656	-57.11890411376953	-85.22919464111328	-145.27908325195312	cancelled
26	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	9	6	2015-01-10 21:46:10.567204+00	\N	2015-01-10 20:46:10.567204+00	2015-01-13 20:46:10.567204+00	26.07909393310547	96.502197265625	3.0309295654296875	-178.7072296142578	cancelled
27	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	9	5	2021-04-09 01:17:07.47216+00	\N	2021-04-09 00:17:07.47216+00	2021-04-12 00:17:07.47216+00	46.17463684082031	55.73088073730469	-49.005332946777344	97.28936767578125	cancelled
39	2020-04-01 21:23:27.885518+00	2020-04-01 21:23:27.885518+00	\N	2	2	2021-02-11 01:48:49.943069+00	2021-02-14 01:48:49.943069+00	2021-02-11 00:48:49.943069+00	2021-02-14 00:48:49.943069+00	-0.30891478466909805	38.64142442467871	0.2513856465053481	37.53729844811621	
40	2020-04-01 22:21:31.191572+00	2020-04-01 22:21:31.191572+00	\N	2	2	2019-06-11 05:10:20.662009+00	2019-06-14 05:10:20.662009+00	2019-06-11 04:10:20.662009+00	2019-06-14 04:10:20.662009+00	-26.041520234635676	32.39245605468751	-25.92300902645964	31.98046875000001	
41	2020-04-01 22:31:14.132714+00	2020-04-01 22:31:14.132714+00	\N	2	2	2016-03-12 16:20:33.584596+00	2016-03-15 16:20:33.584596+00	2016-03-12 15:20:33.584596+00	2016-03-15 15:20:33.584596+00	-54.145330375058116	0.805679321289059	-54.38914037287024	-0.007308959960941053	
42	2020-04-01 18:26:31.718958+00	2020-04-01 18:26:31.718958+00	\N	2	2	2018-08-24 18:35:54.461186+00	2018-08-27 18:35:54.461186+00	2018-08-24 17:35:54.461186+00	2018-08-27 17:35:54.461186+00	-0.2210251081391071	38.68262315514746	0.23490630276377644	37.02368760827246	
30	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	7	2	2019-01-07 03:50:35.38584+00	\N	2019-01-07 02:50:35.38584+00	2019-01-10 02:50:35.38584+00	-77.2144775390625	-6.042388916015625	-21.7481689453125	-163.0645294189453	cancelled
25	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	6	9	2016-05-27 08:13:24.073026+00	\N	2016-05-27 07:13:24.073026+00	2016-05-30 07:13:24.073026+00	-8.248077392578125	-61.931060791015625	-54.103233337402344	40.061859130859375	cancelled
28	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	4	8	2018-09-26 11:41:26.162422+00	\N	2018-09-26 10:41:26.162422+00	2018-09-29 10:41:26.162422+00	-59.491825103759766	-121.21632385253906	11.404151916503906	-111.7658462524414	cancelled
31	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	2	2	2016-07-26 13:59:04.125498+00	\N	2016-07-26 12:59:04.125498+00	2016-07-29 12:59:04.125498+00	-23.18842315673828	-156.1018524169922	15.127853393554688	38.5274658203125	cancelled
33	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	7	5	2021-02-22 12:21:53.24324+00	\N	2021-02-22 11:21:53.24324+00	2021-02-25 11:21:53.24324+00	-8.623207092285156	9.227783203125	9.095916748046875	-34.3990478515625	cancelled
38	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	2	5	2021-01-27 19:07:28.332658+00	\N	2021-01-27 18:07:28.332658+00	2021-01-30 18:07:28.332658+00	80.01463317871094	61.487884521484375	48.654449462890625	-41.407745361328125	cancelled
32	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	3	3	2017-08-06 01:11:14.94905+00	\N	2017-08-06 00:11:14.94905+00	2017-08-09 00:11:14.94905+00	-35.14155578613281	84.26806640625	-14.616020202636719	52.401885986328125	cancelled
56	2021-05-03 20:37:02.231199+00	2021-05-03 20:37:02.231199+00	\N	36	3	\N	\N	2021-09-30 06:44:09.218927+00	2021-10-03 06:44:09.218927+00	17.20255134077637	21.578429161858605	45.50545295242845	71.50030416185861	scheduled
36	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	2	2	\N	\N	2021-09-07 17:26:37.166195+00	2021-09-10 17:26:37.166195+00	-22.738983154296875	171.63775634765625	33.86797332763672	80.76177978515625	cancelled
35	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	7	4	2016-11-17 23:48:59.738691+00	\N	2016-11-17 22:48:59.738691+00	2016-11-20 22:48:59.738691+00	25.541473388671875	86.85379028320312	67.65875244140625	-25.42327880859375	cancelled
37	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	9	7	2014-03-13 09:26:19.710567+00	\N	2014-03-13 08:26:19.710567+00	2014-03-16 08:26:19.710567+00	-47.47623062133789	20.109619140625	-42.211082458496094	-36.648223876953125	cancelled
34	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	3	6	2018-11-21 12:05:28.483775+00	\N	2018-11-21 11:05:28.483775+00	2018-11-24 11:05:28.483775+00	87.29859924316406	170.68643188476562	-24.433731079101562	168.5252685546875	cancelled
22	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	4	2	2016-01-19 12:45:41.171103+00	\N	2016-01-19 11:45:41.171103+00	2016-01-22 11:45:41.171103+00	5.904853820800781	-63.82372283935547	13.516014099121094	-136.6029052734375	cancelled
50	2021-05-03 18:03:13.536215+00	2021-05-03 18:03:13.536215+00	\N	6	3	2014-03-26 19:40:29.524757+00	\N	2014-03-26 18:40:29.524757+00	2014-03-29 18:40:29.524757+00	44.18123746245449	86.58660888671874	44.106342085121156	84.81781005859374	cancelled
54	2021-05-03 20:35:13.712548+00	2021-05-03 20:35:13.712548+00	\N	6	3	2017-08-08 07:18:58.936449+00	\N	2017-08-08 06:18:58.936449+00	2017-08-11 06:18:58.936449+00	60.89658407570744	32.23230342857008	41.981236556575396	22.212772178570077	cancelled
43	2020-04-01 18:53:41.790721+00	2020-04-01 18:53:41.790721+00	\N	2	2	2017-02-24 13:52:51.626643+00	2017-02-27 13:52:51.626643+00	2017-02-24 12:52:51.626643+00	2017-02-27 12:52:51.626643+00	-0.25947691780948223	39.18799424889746	-0.29243551945311874	37.05115342858496	
44	2020-04-01 18:56:29.320063+00	2020-04-01 18:56:29.320063+00	\N	2	2	2018-08-16 19:56:44.141738+00	2018-08-19 19:56:44.141738+00	2018-08-16 18:56:44.141738+00	2018-08-19 18:56:44.141738+00	-1.3744582653699975	38.91882920983496	-0.31990094736679014	37.47412706139746	
45	2020-04-01 19:28:45.866728+00	2020-04-01 19:28:45.866728+00	\N	2	2	2018-01-10 15:08:40.294734+00	2018-01-13 15:08:40.294734+00	2018-01-10 14:08:40.294734+00	2018-01-13 14:08:40.294734+00	-0.7263772916514373	38.83093858483496	-0.2704631284360088	37.29834581139746	
46	2020-04-01 19:30:57.811464+00	2020-04-01 19:30:57.811464+00	\N	2	2	2018-03-14 21:41:16.45146+00	2018-03-17 21:41:16.45146+00	2018-03-14 20:41:16.45146+00	2018-03-17 20:41:16.45146+00	-0.8087673516370218	38.80347276452246	-0.2649700243404972	36.96875596764746	
47	2020-04-01 19:32:21.002795+00	2020-04-01 19:32:21.002795+00	\N	2	2	2018-06-07 02:21:11.041463+00	2018-06-10 02:21:11.041463+00	2018-06-07 01:21:11.041463+00	2018-06-10 01:21:11.041463+00	-0.660464153977153	39.08362413170996	-0.6879280725771747	37.04566026452246	
48	2020-04-01 21:34:18.844916+00	2020-04-01 21:34:18.844916+00	\N	2	2	2014-02-26 02:52:22.084+00	2014-03-01 02:52:22.084+00	2014-02-26 01:52:22.084+00	2014-03-01 01:52:22.084+00	-0.0342580761613998	38.64966417077246	-0.19355946784548714	37.16101670983496	
49	2020-04-02 00:16:22.742274+00	2020-04-02 00:16:22.742274+00	\N	26	3	2021-03-03 21:23:06.801598+00	2021-03-06 21:23:06.801598+00	2021-03-03 20:23:06.801598+00	2021-03-06 20:23:06.801598+00	-0.6879280725771747	38.52057481530371	-0.5286353434813461	37.64716172936621	
53	2021-05-03 20:32:27.959978+00	2021-05-03 20:32:27.959978+00	\N	6	3	2015-01-17 19:19:21.914151+00	2015-01-20 19:19:21.914151+00	2015-01-17 18:19:21.914151+00	2015-01-20 18:19:21.914151+00	43.26063980036225	109.48685640337597	36.949270307163275	69.76029390337597	scheduled
58	2021-05-14 15:17:35.522276+00	2021-05-14 15:17:35.522276+00	\N	6	5	2016-01-23 11:08:26.814253+00	2016-01-26 11:08:26.814253+00	2016-01-23 10:08:26.814253+00	2016-01-26 10:08:26.814253+00	-0.6827666813315582	34.775410003799664	-4.030430179237143	39.63316986725022	scheduled
59	2021-05-14 15:18:55.191677+00	2021-05-14 15:18:55.191677+00	\N	9	5	2015-11-07 22:15:50.812249+00	2015-11-10 22:15:50.812249+00	2015-11-07 21:15:50.812249+00	2015-11-10 21:15:50.812249+00	-4.009539017525354	39.586048819276584	6.700267466503357	44.27755425140549	scheduled
60	2021-05-14 15:20:03.904921+00	2021-05-14 15:20:03.904921+00	\N	36	5	2018-01-28 00:15:02.008447+00	2018-01-31 00:15:02.008447+00	2018-01-27 23:15:02.008447+00	2018-01-30 23:15:02.008447+00	-5.077067816356222	33.42306206390549	5.804756714661423	40.45431206390549	scheduled
61	2021-05-14 15:23:26.937779+00	2021-05-14 15:23:26.937779+00	\N	36	5	2015-10-02 07:37:38.178065+00	2015-10-05 07:37:38.178065+00	2015-10-02 06:37:38.178065+00	2015-10-05 06:37:38.178065+00	-2.973015065397478	24.63399956390549	3.3518613942670545	41.15743706390549	scheduled
62	2021-05-14 15:25:15.40055+00	2021-05-14 15:25:15.40055+00	\N	36	5	2018-05-30 16:09:12.46511+00	2018-06-02 16:09:12.46511+00	2018-05-30 15:09:12.46511+00	2018-06-02 15:09:12.46511+00	9.636149028355396	13.38399956390549	16.481053993557712	26.04024956390549	scheduled
63	2021-05-14 15:27:28.086638+00	2021-05-14 15:27:28.086638+00	\N	6	5	2018-05-18 14:37:39.405021+00	2018-05-21 14:37:39.405021+00	2018-05-18 13:37:39.405021+00	2018-05-21 13:37:39.405021+00	-7.871347605620475	32.54415581390549	2.0789045540117006	39.97091362640549	scheduled
51	2021-05-03 20:21:01.858441+00	2021-05-03 20:21:01.858441+00	\N	6	3	2014-10-02 11:30:03.637256+00	\N	2014-10-02 10:30:03.637256+00	2014-10-05 10:30:03.637256+00	55.819555026705	127.05734642781476	66.19139712938058	115.45578392781476	cancelled
52	2021-05-03 20:29:46.98903+00	2021-05-03 20:29:46.98903+00	\N	36	3	2017-06-22 19:07:29.937128+00	\N	2017-06-22 18:07:29.937128+00	2017-06-25 18:07:29.937128+00	30.826113108648528	100.17045015337597	45.88946687408352	70.11185640337597	cancelled
55	2021-05-03 20:36:09.823129+00	2021-05-03 20:36:09.823129+00	\N	38	3	2017-11-15 03:01:35.797055+00	\N	2017-11-15 02:01:35.797055+00	2017-11-18 02:01:35.797055+00	54.429554879402595	39.08777217857008	52.86689026039325	-9.955196571429942	cancelled
57	2021-05-03 20:40:09.582408+00	2021-05-03 20:40:09.582408+00	\N	36	3	\N	\N	2021-12-08 23:21:47.379216+00	2021-12-11 23:21:47.379216+00	40.89594159750295	65.87530416185861	64.11963784045622	-112.71844583814139	cancelled
\.


--
-- TOC entry 4004 (class 0 OID 5120204)
-- Dependencies: 204
-- Data for Name: vehicles; Type: TABLE DATA; Schema: public; Owner: beba_backend
--

COPY public.vehicles (id, created_at, updated_at, deleted_at, registration_number, type, model_name, model_year, color, condition, max_weight, fuel_consumption, brand, date_purchased, expected_end_service, photo) FROM stdin;
5	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KBI 672L	pickup	uyFC	2021	white	quod	31.969999313354492	7.199999809265137	mitsubishi	2063-11-26 00:21:50+00	2010-02-24 16:06:16+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/3-vw-amarok-removebg-preview.png?alt=media&token=f692ecb3-3954-414f-bc7b-40ec85118a42
16	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KPJ 409D	lorry	poGr	1971	blue	eos	4.949999809265137	7.199999809265137	nissan	2066-05-13 13:49:17+00	1993-08-22 22:51:35+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/3-vw-amarok-removebg-preview.png?alt=media&token=f692ecb3-3954-414f-bc7b-40ec85118a42
2	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	2020-04-01 23:27:41.652892+00	KUL 913Y	van	DNJO	1987	white	id	9.989999771118164	7.199999809265137	nissan	1975-10-14 17:46:07+00	2012-04-07 23:33:02+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/3-vw-amarok-removebg-preview.png?alt=media&token=f692ecb3-3954-414f-bc7b-40ec85118a42
3	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KSS 897W	van	OsDy	1986	white	dignissimos	9.989999771118164	4.5	mitsubishi	1990-08-31 17:32:28+00	1994-07-14 16:18:48+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Freightliner_CL_120_Columbia_2010-removebg-preview%20(1).png?alt=media&token=2b3ca283-4957-449e-b2fe-33bb4947e181
4	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	2020-04-01 23:28:14.247457+00	KIC 560P	pickup	tgQw	1977	blue	aperiam	31.969999313354492	4.5	mitsubishi	1996-03-10 19:48:53+00	2025-04-14 21:22:04+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Semi-Truck-Detailing-Prices-removebg-preview.png?alt=media&token=6b161972-cb55-4ef8-bdfd-2ae4ecbf6f6c
6	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KHS 794H	pickup	LXKB	2002	red	voluptatibus	31.969999313354492	31.969999313354492	mitsubishi	2022-01-22 03:30:27+00	2011-03-26 08:14:37+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Semi-Truck-Detailing-Prices-removebg-preview.png?alt=media&token=6b161972-cb55-4ef8-bdfd-2ae4ecbf6f6c
7	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KGY 788M	lorry	Kxum	2001	blue	est	4.949999809265137	7.199999809265137	nissan	2064-07-11 20:10:29+00	2017-11-29 11:22:36+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/cq5dam.web.3840.3840-bf2160fea77047d79ef249e4db3565fc-removebg-preview%20(2).png?alt=media&token=0da90bbb-86d1-44af-8bec-52ff639ae408
8	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	2020-04-01 23:27:32.353501+00	KPJ 860S	pickup	UhgJ	1995	blue	quo	9.989999771118164	31.969999313354492	volkswagen	2014-03-24 11:05:30+00	1996-12-29 16:02:56+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/download__1_-removebg-preview.png?alt=media&token=11ec3b55-a49a-4c80-80bb-d49278935129
9	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KTN 347O	pickup	BgCP	1970	blue	dignissimos	31.969999313354492	31.969999313354492	nissan	2007-07-08 23:56:51+00	1993-04-17 14:30:50+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/f4a02d818b6d861f3fbf5df3efba5239-removebg-preview.png?alt=media&token=74918269-0516-470b-aa06-b563144f58cd
10	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KNX 922C	pickup	vnUo	1979	white	explicabo	4.949999809265137	31.969999313354492	nissan	2003-01-30 17:20:11+00	2025-08-24 17:26:26+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/images-removebg-preview%20(1).png?alt=media&token=3c2eed05-389e-450d-8700-d0a5c9b5faac
11	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KTF 398H	pickup	ReqE	1970	white	neque	4.949999809265137	7.199999809265137	nissan	2067-10-20 04:18:31+00	2024-03-09 03:42:12+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/images-removebg-preview.png?alt=media&token=bd96bb8e-ec3c-4abe-9209-c067ba689517
12	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KLH 605N	van	eYrp	1973	red	minima	9.989999771118164	4.5	toyota	2027-04-15 15:27:24+00	1990-06-05 02:00:43+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/lorry-transport-services-500x500-removebg-preview.png?alt=media&token=24d74539-34e0-4324-82ba-de72101ae238
13	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KBU 475Y	lorry	WrJA	1977	gray	repellendus	9.989999771118164	15.600000381469727	mitsubishi	2019-06-21 17:01:28+00	2041-07-27 03:25:37+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/052715efad00428fb513428b6ea8de36-removebg-preview.png?alt=media&token=44d40a95-a26d-4ef2-9b62-7f472af65bd9
14	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KDR 957J	van	aKmZ	1993	gray	totam	31.969999313354492	7.199999809265137	toyota	2049-01-29 20:05:39+00	1989-10-23 02:30:50+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/12b-removebg-preview.png?alt=media&token=a9eabe35-7aa8-48f8-b75b-fa630ced7051
15	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KBO 666S	pickup	tBxd	2016	white	possimus	31.969999313354492	7.199999809265137	toyota	2064-12-21 09:30:13+00	2004-05-28 04:39:33+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/2020_Chevrolet_Silverado_Midnight-removebg-preview.png?alt=media&token=0e5a0233-80c4-49d2-801a-f917a331146d
17	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KBQ 894N	pickup	HYLF	1986	gray	exercitationem	9.989999771118164	7.199999809265137	nissan	1971-02-23 10:33:44+00	2007-07-16 01:11:54+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Freightliner_CL_120_Columbia_2010-removebg-preview%20(1).png?alt=media&token=2b3ca283-4957-449e-b2fe-33bb4947e181
18	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KHE 382E	pickup	OOWW	1997	red	eum	31.969999313354492	4.5	nissan	2029-10-04 12:20:12+00	1976-04-07 20:13:58+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Semi-Truck-Detailing-Prices-removebg-preview.png?alt=media&token=6b161972-cb55-4ef8-bdfd-2ae4ecbf6f6c
19	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KDW 562D	lorry	Lbpv	2015	gray	et	31.969999313354492	7.199999809265137	mitsubishi	2052-08-11 04:01:55+00	2007-04-09 19:55:33+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Semi-Truck-Detailing-Prices-removebg-preview.png?alt=media&token=6b161972-cb55-4ef8-bdfd-2ae4ecbf6f6c
20	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KNF 672I	pickup	DmPY	1981	gray	repudiandae	31.969999313354492	7.199999809265137	nissan	2029-04-21 11:11:22+00	2056-07-12 22:13:37+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/cq5dam.web.3840.3840-bf2160fea77047d79ef249e4db3565fc-removebg-preview%20(2).png?alt=media&token=0da90bbb-86d1-44af-8bec-52ff639ae408
21	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KEO 605B	pickup	XKaF	2011	gray	consequatur	31.969999313354492	31.969999313354492	toyota	2038-12-22 09:12:53+00	1984-09-09 10:47:12+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/download__1_-removebg-preview.png?alt=media&token=11ec3b55-a49a-4c80-80bb-d49278935129
22	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KCE 541H	pickup	gGBM	2011	gray	ut	4.949999809265137	31.969999313354492	toyota	2021-08-02 23:55:20+00	1977-11-13 22:43:52+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/f4a02d818b6d861f3fbf5df3efba5239-removebg-preview.png?alt=media&token=74918269-0516-470b-aa06-b563144f58cd
23	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KAF 336W	pickup	UmoH	2012	gray	aspernatur	9.989999771118164	4.5	nissan	1989-07-23 09:11:46+00	2050-08-26 09:28:54+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/images-removebg-preview%20(1).png?alt=media&token=3c2eed05-389e-450d-8700-d0a5c9b5faac
24	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KXR 207J	pickup	dgxA	2013	gray	expedita	4.949999809265137	7.199999809265137	nissan	2037-09-19 15:27:40+00	2006-02-12 00:46:21+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/images-removebg-preview.png?alt=media&token=bd96bb8e-ec3c-4abe-9209-c067ba689517
25	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KSJ 613Q	lorry	pUGb	2014	red	sint	31.969999313354492	7.199999809265137	volkswagen	2055-05-29 10:32:34+00	2007-01-08 17:54:48+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/lorry-transport-services-500x500-removebg-preview.png?alt=media&token=24d74539-34e0-4324-82ba-de72101ae238\n
26	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KQU 462I	lorry	djED	1977	red	tenetur	4.949999809265137	15.600000381469727	mitsubishi	2008-07-11 01:54:37+00	2038-08-26 05:13:57+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/mahindra-bolero-maxi-truck-plus-31214-removebg-preview.png?alt=media&token=11f351f2-1a08-4e72-ba0e-167206337468
\.


--
-- TOC entry 4015 (class 0 OID 0)
-- Dependencies: 201
-- Name: drivers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beba_backend
--

SELECT pg_catalog.setval('public.drivers_id_seq', 144, true);


--
-- TOC entry 4016 (class 0 OID 0)
-- Dependencies: 203
-- Name: trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beba_backend
--

SELECT pg_catalog.setval('public.trips_id_seq', 63, true);


--
-- TOC entry 4017 (class 0 OID 0)
-- Dependencies: 205
-- Name: vehicles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beba_backend
--

SELECT pg_catalog.setval('public.vehicles_id_seq', 26, true);


--
-- TOC entry 3856 (class 2606 OID 5120216)
-- Name: drivers drivers_email_key; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_email_key UNIQUE (email);


--
-- TOC entry 3858 (class 2606 OID 5120218)
-- Name: drivers drivers_phone_key; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_phone_key UNIQUE (phone);


--
-- TOC entry 3860 (class 2606 OID 5120220)
-- Name: drivers drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_pkey PRIMARY KEY (id);


--
-- TOC entry 3864 (class 2606 OID 5120222)
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);


--
-- TOC entry 3867 (class 2606 OID 5120224)
-- Name: vehicles vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);


--
-- TOC entry 3861 (class 1259 OID 5120225)
-- Name: idx_drivers_deleted_at; Type: INDEX; Schema: public; Owner: beba_backend
--

CREATE INDEX idx_drivers_deleted_at ON public.drivers USING btree (deleted_at);


--
-- TOC entry 3862 (class 1259 OID 5120226)
-- Name: idx_trips_deleted_at; Type: INDEX; Schema: public; Owner: beba_backend
--

CREATE INDEX idx_trips_deleted_at ON public.trips USING btree (deleted_at);


--
-- TOC entry 3865 (class 1259 OID 5120227)
-- Name: idx_vehicles_deleted_at; Type: INDEX; Schema: public; Owner: beba_backend
--

CREATE INDEX idx_vehicles_deleted_at ON public.vehicles USING btree (deleted_at);


--
-- TOC entry 3868 (class 2606 OID 5120228)
-- Name: trips fk_drivers_trips; Type: FK CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT fk_drivers_trips FOREIGN KEY (driver_id) REFERENCES public.drivers(id);


--
-- TOC entry 3869 (class 2606 OID 5120233)
-- Name: trips fk_vehicles_trips; Type: FK CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT fk_vehicles_trips FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4011 (class 0 OID 0)
-- Dependencies: 643
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO beba_backend;


-- Completed on 2021-05-15 09:42:30 EAT

--
-- PostgreSQL database dump complete
--

