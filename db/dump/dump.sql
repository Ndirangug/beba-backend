--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)

-- Started on 2021-05-13 10:51:38 EAT

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
-- TOC entry 205 (class 1259 OID 28009)
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
-- TOC entry 204 (class 1259 OID 28007)
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
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 204
-- Name: drivers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beba_backend
--

ALTER SEQUENCE public.drivers_id_seq OWNED BY public.drivers.id;


--
-- TOC entry 207 (class 1259 OID 28025)
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
-- TOC entry 206 (class 1259 OID 28023)
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
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 206
-- Name: trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beba_backend
--

ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;


--
-- TOC entry 203 (class 1259 OID 27997)
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
-- TOC entry 202 (class 1259 OID 27995)
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
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 202
-- Name: vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: beba_backend
--

ALTER SEQUENCE public.vehicles_id_seq OWNED BY public.vehicles.id;


--
-- TOC entry 2819 (class 2604 OID 28012)
-- Name: drivers id; Type: DEFAULT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.drivers ALTER COLUMN id SET DEFAULT nextval('public.drivers_id_seq'::regclass);


--
-- TOC entry 2820 (class 2604 OID 28028)
-- Name: trips id; Type: DEFAULT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);


--
-- TOC entry 2818 (class 2604 OID 28000)
-- Name: vehicles id; Type: DEFAULT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.vehicles ALTER COLUMN id SET DEFAULT nextval('public.vehicles_id_seq'::regclass);


--
-- TOC entry 2965 (class 0 OID 28009)
-- Dependencies: 205
-- Data for Name: drivers; Type: TABLE DATA; Schema: public; Owner: beba_backend
--

COPY public.drivers (id, created_at, updated_at, deleted_at, first_name, last_name, email, phone, sex, date_of_birth, date_employed, comment, evaluation_report, drivers_licence, avatar, on_trip) FROM stdin;
6	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	\N	Emmalee	Koch	bKuhkAf@ZDlKLlj.org	691-045-7312	female	1997-04-05 18:54:12+03	2014-03-17 08:11:59+03	Sit accusantium consequatur perferendis aut voluptatem.	http://XXYPenm.net/TBTbUMl.php	https://www.qUQSlCi.ru/	https://i.pravatar.cc/150?img=7	\N
9	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	\N	Mabel	Carroll	ETSmgLm@qpwyWCZ.org	510-327-6149	female	1989-05-01 16:18:24+03	2053-11-28 18:50:46+03	Consequatur voluptatem aut accusantium perferendis sit.	http://qNAIblm.ru/SvgKIOe.php	https://XBaZruj.biz/	https://i.pravatar.cc/150?img=33	\N
14	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	\N	Eloisa	Bailey	iytRFsp@BuMxuBh.biz	276-110-5493	female	1993-07-29 03:01:37+03	2007-02-01 15:40:46+03	Aut accusantium sit perferendis consequatur voluptatem.	http://www.vaMUiAS.net/	https://www.dMWkeEB.com/JoekghK	https://i.pravatar.cc/150?img=44	\N
15	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	\N	Tremayne	Moore	GBwOGAj@iTLyVum.com	642-151-0789	female	1990-08-01 03:28:02+03	2020-06-24 19:12:49+03	Accusantium voluptatem sit consequatur perferendis aut.	http://www.yedxKoV.org/AFPLNjL	http://WBpPlJv.biz/GxwtAtM.html	https://i.pravatar.cc/150?img=54	\N
16	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	\N	Mossie	Kunde	erHHgtv@kmviamq.info	935-718-4210	female	2039-08-06 17:10:14+03	2035-10-20 00:55:40+03	Voluptatem aut perferendis sit accusantium consequatur.	https://GaITycf.net/	https://WZuWeYI.ru/ESKMqKb	https://i.pravatar.cc/150?img=18	\N
17	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	\N	Waino	Wisozk	AvMwtaL@MAJCPKK.net	710-581-4369	female	2057-07-10 08:06:19+03	1994-01-28 00:59:12+03	Voluptatem accusantium consequatur sit aut perferendis.	http://WYIMWfm.net/	https://www.JUWWStB.org/eaPiVKl	https://i.pravatar.cc/150?img=14	\N
19	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	\N	Randi	Johnston	GFwOwIQ@aVbsNAW.biz	154-987-6231	female	2043-03-08 09:26:13+03	2065-08-14 07:49:04+03	Voluptatem accusantium aut consequatur sit perferendis.	https://www.JsjYOGI.com/GhOqCfk	http://www.OuQeRUp.ru/eFFPioQ	https://i.pravatar.cc/150?img=46	\N
22	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Judson	Dietrich	yJfvWUG@mFlroPd.org	278-145-3961	female	1984-08-24 01:52:11+03	2010-11-27 12:13:50+03	Aut sit perferendis voluptatem consequatur accusantium.	http://OjaEeAM.info/	http://www.LfTpVPd.net/	https://i.pravatar.cc/150?img=48	t
23	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Lia	Fahey	XAUdVWh@JLjoVad.ru	931-287-4510	female	2043-11-26 07:28:31+03	2047-04-02 03:34:57+03	Accusantium voluptatem consequatur perferendis aut sit.	https://IalIFaI.ru/ManLftW	http://wkEypkT.org/NxGHBSm.php	https://i.pravatar.cc/150?img=31	t
25	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Onie	Moen	MiFHRGc@DoflhdZ.biz	527-891-3410	female	2063-12-07 16:27:10+03	2061-10-25 19:35:17+03	Aut perferendis voluptatem consequatur accusantium sit.	http://rmxpnXY.biz/VOoJfnu.php	http://www.WoKXTGZ.com/FIhPoyL	https://i.pravatar.cc/150?img=68	t
27	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Merlin	Stamm	apxUhfW@XfKLRLR.com	256-174-3981	female	2015-03-25 04:49:53+03	2040-05-24 10:33:55+03	Aut accusantium voluptatem consequatur perferendis sit.	http://wTGIWWC.net/RaZYRKT	http://ZouPAPE.net/eVPREHv	https://i.pravatar.cc/150?img=44	t
28	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Madison	Boyer	HSorsVE@ROtkpxR.biz	483-675-2191	male	1972-10-27 18:49:51+03	1996-09-19 15:14:24+03	Consequatur sit aut voluptatem perferendis accusantium.	http://qDODgkp.ru/	http://tUkJYDZ.ru/yFKwjRw	https://i.pravatar.cc/150?img=57	t
29	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Tiffany	Ondricka	FbaBKAT@XeIpwDY.info	951-038-1764	female	2056-03-11 11:44:07+03	2058-04-28 10:12:16+03	Accusantium consequatur sit perferendis voluptatem aut.	http://www.MQSNyoC.net/	http://UEdByaB.info/iQJGCpT.php	https://i.pravatar.cc/150?img=59	f
30	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Gail	Weimann	cESqKBr@tWECWfo.net	108-541-9376	male	2008-08-07 19:14:39+03	1977-10-20 21:12:38+03	Perferendis consequatur aut accusantium sit voluptatem.	http://qBKlUnC.biz/fBhYHWx.html	https://www.NgeAOYA.org/hIjeFai	https://i.pravatar.cc/150?img=2	t
3	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 01:57:04.540641+03	Muhammad	Lowe	xZIThhM@mtthuvt.com	210-963-4785	female	2053-01-10 14:44:39+03	2013-03-03 17:00:14+03	Aut voluptatem perferendis consequatur sit accusantium.	https://www.YvZryIY.ru/	https://SILSKBJ.ru/	https://i.pravatar.cc/150?img=44	\N
11	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 01:57:14.118702+03	Sadie	Torp	BDWtZGa@hdddSPp.ru	829-110-5463	male	1987-11-04 08:39:12+03	1991-03-14 04:24:27+03	Aut sit consequatur perferendis accusantium voluptatem.	http://www.vbVAaYf.info/	https://FWDgGvK.com/PIgTIhm.php	https://i.pravatar.cc/150?img=67	\N
8	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 01:59:47.41874+03	Aimee	Stark	bwKArSW@areuZow.biz	368-210-1459	female	1975-04-16 22:50:55+03	2004-02-28 04:27:03+03	Voluptatem consequatur accusantium aut perferendis sit.	https://www.BHqRSXD.biz/	https://JUhvRjX.ru/ABuYeFN	https://i.pravatar.cc/150?img=12	\N
7	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 02:00:53.025992+03	Hollis	Borer	qqYeSLR@fFfTrZU.org	417-310-9286	female	2041-07-29 17:18:30+03	1970-04-17 15:15:02+03	Accusantium sit consequatur voluptatem aut perferendis.	http://XsJkExC.ru/lBaJqUu.php	http://sjslxLw.org/tKiBDSq.php	https://i.pravatar.cc/150?img=21	\N
13	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 02:01:21.303339+03	Bernard	Dickinson	TFTObxN@DvqVYsc.biz	104-219-5867	male	2054-04-01 01:35:35+03	2020-02-08 20:04:58+03	Sit accusantium voluptatem perferendis consequatur aut.	https://MwdJgWX.biz/rCsrwDq.html	http://WHXOBit.org/	https://i.pravatar.cc/150?img=55	\N
10	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 02:03:11.163151+03	Dallas	Nienow	jhOmaya@SXNPTKN.biz	417-231-0859	female	1989-12-25 20:58:26+03	2053-12-02 06:57:25+03	Sit perferendis voluptatem consequatur accusantium aut.	http://ASyYrJM.com/WTKsLPr.html	http://www.FcZSkgT.info/	https://i.pravatar.cc/150?img=65	\N
12	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 02:04:07.408946+03	Raul	Anderson	ADZoLJT@nNpmMdX.ru	254-896-3710	male	1976-09-14 06:38:16+03	2018-10-27 22:35:08+03	Sit aut accusantium perferendis voluptatem consequatur.	https://www.NkrbbDF.com/UEORAsk	http://www.mAcDwye.org/	https://i.pravatar.cc/150?img=10	\N
18	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 02:06:05.024333+03	Raoul	Waters	uMQEWsj@LsiHxCC.net	825-941-0761	male	2046-04-22 21:08:04+03	1972-07-30 08:53:52+03	Consequatur perferendis sit accusantium aut voluptatem.	https://VvEGgRH.ru/YRLyjDb.php	http://RijYhPt.ru/uGcYnZk	https://i.pravatar.cc/150?img=31	\N
20	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 02:07:57.666569+03	Alfreda	Abernathy	DCSgRZM@MPvGPir.com	101-376-2594	male	2016-12-05 17:51:25+03	1971-10-01 10:06:41+03	Accusantium consequatur perferendis voluptatem sit aut.	https://LarroxR.info/YlPMftq	https://VyGXxaR.info/mxDoMfH	https://i.pravatar.cc/150?img=59	\N
21	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 02:08:07.353485+03	Ewald	Hamill	KfkubTm@iHiVtOK.net	210-856-4137	female	1971-01-08 17:40:38+03	2002-03-09 14:01:00+03	Voluptatem consequatur aut sit perferendis accusantium.	https://ZhmFmdL.biz/cEeVMKB.html	https://LYckFul.org/YrOLylG.html	https://i.pravatar.cc/150?img=69	\N
24	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	2020-04-02 02:09:37.16315+03	Sarah	Adams	cDOLEAO@DqFDcJU.net	794-153-6810	male	2018-04-17 04:23:36+03	1984-01-13 01:38:17+03	Aut accusantium consequatur voluptatem sit perferendis.	https://eQyfkoR.org/dbEaBVh	https://cdQewbB.ru/tSVnUwu.html	https://i.pravatar.cc/150?img=10	f
26	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	2020-04-02 03:16:46.022648+03	Solon	Kihn	KuKHuWN@lEOwJqy.net	739-841-0261	female	1982-06-27 23:00:39+03	2057-06-24 19:05:32+03	Sit consequatur perferendis aut accusantium voluptatem.	http://www.YcoJRLK.com/vXEVphI	https://www.QQPraRH.com/oYfKlGR	https://i.pravatar.cc/150?img=1	t
5	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 01:34:01.162135+03	Darren	Davis	uihiuhuihi	510-273-8916	female	2045-03-03 06:23:13+03	2051-01-30 07:41:29+03	Aut voluptatem accusantium perferendis sit consequatur.	http://www.HvQTdAW.net/QbfIYAM	http://www.unNQeUD.com/	https://i.pravatar.cc/150?img=28	\N
31	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Katherine	Collier	tCfYMoI@buReImF.biz	129-710-3586	female	2030-07-30 06:13:48+03	1987-12-26 03:13:28+03	Accusantium aut perferendis sit voluptatem consequatur.	http://www.gJkVhTZ.org/	https://TtOhrDu.org/hVOoZeR.html	https://i.pravatar.cc/150?img=61	t
32	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Rodrick	Cormier	INiXQWZ@DDNlfGo.org	510-934-6812	female	2056-12-01 10:11:59+03	2020-08-23 00:25:05+03	Sit aut consequatur accusantium perferendis voluptatem.	http://OuHcbKC.biz/	https://www.HBhRjoM.org/fUfsiUw	https://i.pravatar.cc/150?img=69	t
33	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Jadyn	Hauck	pqsIUAH@lZHvOAK.org	281-394-6751	female	2004-03-10 09:19:50+03	2054-02-12 09:42:56+03	Aut sit consequatur perferendis accusantium voluptatem.	http://www.HsKwxqx.ru/Kjfuwho	http://bXudZNt.ru/	https://i.pravatar.cc/150?img=51	t
34	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Ruthie	Grant	XYcqqNt@LXagVLs.biz	657-291-3481	male	2052-10-22 05:24:23+03	2031-09-12 13:11:35+03	Accusantium consequatur aut perferendis voluptatem sit.	http://xwInUkd.net/	http://tEftWSY.info/muvLFtu.php	https://i.pravatar.cc/150?img=66	f
35	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Mark	Nolan	VCHHArX@KptbBOw.net	593-821-0641	male	2069-07-01 18:58:53+03	1986-02-08 06:00:50+03	Sit perferendis voluptatem consequatur aut accusantium.	http://www.OmSGNsj.com/mVIwjLD	https://PUiuWSy.net/LTvZQwX.html	https://i.pravatar.cc/150?img=19	t
37	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Kamille	Gaylord	KDQHnXo@ALKpDRF.ru	710-192-3846	male	1996-10-08 04:25:03+03	2016-06-08 02:48:06+03	Aut consequatur perferendis sit accusantium voluptatem.	https://qKhuYDh.ru/OKfmimt	https://fAwEIXD.org/	https://i.pravatar.cc/150?img=42	t
38	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Armando	Predovic	vUuWYNB@pUAOfJN.org	395-810-4762	female	1984-12-27 06:48:34+03	2001-01-15 02:14:23+03	Perferendis accusantium consequatur sit voluptatem aut.	http://xVCsvgj.ru/dsOoByK.php	http://twKvdpT.info/CWwkMHe	https://i.pravatar.cc/150?img=16	t
39	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Aglae	Mueller	ZgXVJHu@jmaUSvj.biz	697-854-3102	female	2027-07-03 15:10:26+03	1987-03-11 22:24:56+03	Accusantium sit perferendis voluptatem consequatur aut.	http://OPkehev.ru/WIFmqDV.php	https://WOAevFG.com/kQiPFIB	https://i.pravatar.cc/150?img=27	t
40	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Odessa	Terry	ruJVMKy@sTmYXdh.biz	510-846-1972	male	2042-11-24 02:36:29+03	2047-10-25 18:42:26+03	Sit perferendis aut accusantium voluptatem consequatur.	https://feGYiyR.info/eclDncS.php	http://www.faPhoCC.net/TaPmfNq	https://i.pravatar.cc/150?img=31	f
41	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Antonette	Schumm	QJqWjxv@QfSLLHA.com	276-910-8451	female	1980-10-19 14:34:07+03	2006-01-10 17:39:54+03	Consequatur sit perferendis voluptatem accusantium aut.	http://QskZGJR.org/PKAVLOU.php	https://tiVxKOw.ru/vJiFUdK.php	https://i.pravatar.cc/150?img=58	t
42	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Modesto	McClure	DOMLKsk@fLvUpxY.org	987-131-0256	male	2062-04-24 21:57:36+03	1998-06-16 12:47:15+03	Accusantium voluptatem sit perferendis aut consequatur.	http://ZOuXXvn.info/	https://PlYkwIV.org/IvgZblO	https://i.pravatar.cc/150?img=28	f
43	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Easton	Crist	xODVSlu@fikZgxA.info	568-710-2913	male	2026-12-07 18:18:19+03	2069-05-19 01:25:25+03	Aut voluptatem perferendis consequatur sit accusantium.	https://www.ipWUkhE.biz/rAMqwAN	https://pZlcgHG.info/	https://i.pravatar.cc/150?img=18	f
44	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Nya	Frami	xeLBpsV@tJdHcmF.net	396-411-0785	male	2009-02-07 07:41:38+03	2057-02-12 17:31:39+03	Aut accusantium sit voluptatem consequatur perferendis.	http://www.mQVdbVp.ru/YUDZiMu	http://vcafdEM.biz/uuVWYkt.php	https://i.pravatar.cc/150?img=35	f
45	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Lilian	Balistreri	msZomle@YlFURVK.org	105-413-6297	male	2053-04-23 17:07:30+03	2059-10-02 13:31:44+03	Aut sit perferendis voluptatem accusantium consequatur.	http://aKLanpS.org/	http://XSlpsUG.com/hIBULyM.html	https://i.pravatar.cc/150?img=9	t
46	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Devon	Beier	eWVXoBw@AmckNmS.com	259-310-7184	male	1998-09-01 03:06:20+03	1985-11-24 12:11:41+03	Accusantium aut perferendis sit consequatur voluptatem.	https://aQEtLds.biz/VVwkUXI.php	http://TvsyHxe.biz/Vckbyrw.html	https://i.pravatar.cc/150?img=59	f
47	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Alexie	Corkery	sYfSoQK@EflThpr.info	310-129-8457	male	1985-05-17 17:43:18+03	2044-09-22 13:35:34+03	Perferendis accusantium consequatur aut voluptatem sit.	https://wenpmvJ.ru/SolsrYi.php	https://mgdoduq.com/	https://i.pravatar.cc/150?img=54	t
48	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Kelsie	Skiles	LwbhWVV@AuFSJYP.org	108-294-1735	male	2028-03-31 14:29:23+03	1978-09-16 15:02:04+03	Voluptatem sit accusantium perferendis aut consequatur.	http://www.UoouXtv.net/	https://UUCxuSW.org/KFIMbcJ.html	https://i.pravatar.cc/150?img=39	t
49	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Haylie	Bartell	HUlqbNE@rUQwjZl.ru	167-543-9810	male	2051-09-17 03:06:01+03	2063-03-20 21:39:53+03	Voluptatem accusantium aut perferendis consequatur sit.	https://MQPGyyH.com/	http://HpxbGvx.net/	https://i.pravatar.cc/150?img=26	f
2	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 00:37:00.581178+03	Stone	Daniel	GjfDeJn@BjrDysF.org	134-592-1068	female	1985-07-11 17:20:48+03	2037-06-16 04:05:43+03	Perferendis aut voluptatem sit consequatur accusantium.	http://www.BSYqlrX.ru/	http://puOBpsG.biz/fFHkdgv.html	https://i.pravatar.cc/150?img=48	\N
36	2021-04-18 09:49:06.03123+03	2021-04-18 09:49:06.03123+03	\N	Amparo	Bosco	ndirangu.mepawa@gmail.com	151-073-8296	female	1975-11-08 01:22:42+03	2014-02-07 13:18:36+03	Consequatur accusantium voluptatem aut sit perferendis.	http://oFAvVFi.net/	http://tDoIgDa.info/RUcjodu.html	https://i.pravatar.cc/150?img=23	f
4	2021-04-13 14:50:17.881038+03	2021-04-13 14:50:17.881038+03	2020-04-02 01:58:27.364876+03	Gerald	Lowe	fJImBGo@fpkEwiU.net	428-135-1069	male	2007-09-05 20:51:17+03	1992-06-18 09:39:38+03	Accusantium voluptatem consequatur sit perferendis aut.	https://ZgYZCef.biz/	https://www.FgDREcZ.org/qNFQGNp	https://i.pravatar.cc/150?img=51	\N
50	2020-04-01 23:32:51.963404+03	2020-04-01 23:32:51.963404+03	\N						1970-01-01 03:00:00+03	1970-01-01 03:00:00+03					f
\.


--
-- TOC entry 2967 (class 0 OID 28025)
-- Dependencies: 207
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner: beba_backend
--

COPY public.trips (id, created_at, updated_at, deleted_at, driver_id, vehicle_id, time_start, time_end, time_expected_start, time_expected_end, latitude_begin, longitude_begin, latitude_end, longitude_end, status) FROM stdin;
23	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	8	9	2001-02-27 09:23:59+03	2065-03-22 15:11:05+03	2030-01-19 10:55:55+03	1997-03-26 15:30:46+03	-50.081241607666016	30.605575561523438	-26.177947998046875	122.62539672851562	cancelled
24	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	7	8	1986-02-15 20:14:54+03	2060-01-19 03:03:20+03	1986-05-03 14:33:34+03	2044-09-17 19:15:54+03	23.506385803222656	-57.11890411376953	-85.22919464111328	-145.27908325195312	cancelled
26	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	9	6	2036-04-21 19:20:07+03	2042-09-28 04:13:02+03	1987-04-27 02:36:33+03	1999-06-18 06:34:06+03	26.07909393310547	96.502197265625	3.0309295654296875	-178.7072296142578	cancelled
27	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	9	5	2068-11-15 23:31:12+03	2068-01-04 22:52:19+03	2032-06-19 12:12:19+03	1970-05-21 07:18:26+03	46.17463684082031	55.73088073730469	-49.005332946777344	97.28936767578125	cancelled
29	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	4	7	1978-01-09 16:35:48+03	2023-02-05 03:08:06+03	2046-08-09 20:56:34+03	2019-07-10 10:52:57+03	73.03857421875	-10.80706787109375	22.315948486328125	-109.93000030517578	ongoing
30	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	7	2	1987-06-07 00:14:41+03	2031-07-08 21:50:18+03	2033-11-02 08:15:59+03	2019-09-02 21:40:26+03	-77.2144775390625	-6.042388916015625	-21.7481689453125	-163.0645294189453	cancelled
25	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	6	9	2014-07-27 21:15:11+03	2060-01-19 03:03:20+03	2030-12-22 23:32:25+03	2008-01-02 14:17:43+03	-8.248077392578125	-61.931060791015625	-54.103233337402344	40.061859130859375	cancelled
28	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	4	8	1975-05-03 10:34:36+03	1979-06-08 02:40:43+03	1970-09-13 15:17:49+03	1976-05-29 13:15:56+03	-59.491825103759766	-121.21632385253906	11.404151916503906	-111.7658462524414	cancelled
22	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	4	2	1970-10-08 15:12:20+03	2044-03-31 05:05:35+03	2015-08-13 15:23:07+03	2023-11-28 04:01:27+03	5.904853820800781	-63.82372283935547	13.516014099121094	-136.6029052734375	cancelled
31	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	2	2	2025-08-23 04:49:03+03	2005-10-17 18:33:23+03	1992-06-25 20:48:02+03	1983-07-14 10:31:41+03	-23.18842315673828	-156.1018524169922	15.127853393554688	38.5274658203125	cancelled
33	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	7	5	1973-06-11 16:33:05+03	1972-10-25 03:43:38+03	2036-02-29 19:05:24+03	2023-03-07 20:35:15+03	-8.623207092285156	9.227783203125	9.095916748046875	-34.3990478515625	cancelled
38	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	2	5	2041-10-14 13:01:58+03	2005-03-08 19:42:28+03	1999-06-13 14:28:52+03	1981-08-24 21:50:06+03	80.01463317871094	61.487884521484375	48.654449462890625	-41.407745361328125	cancelled
32	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	3	3	1996-12-11 16:21:28+03	2031-07-08 21:50:18+03	2034-08-20 11:35:51+03	1970-03-12 08:06:50+03	-35.14155578613281	84.26806640625	-14.616020202636719	52.401885986328125	cancelled
39	2020-04-02 00:23:27.885518+03	2020-04-02 00:23:27.885518+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-0.30891478466909805	38.64142442467871	0.2513856465053481	37.53729844811621	
40	2020-04-02 01:21:31.191572+03	2020-04-02 01:21:31.191572+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-26.041520234635676	32.39245605468751	-25.92300902645964	31.98046875000001	
41	2020-04-02 01:31:14.132714+03	2020-04-02 01:31:14.132714+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-54.145330375058116	0.805679321289059	-54.38914037287024	-0.007308959960941053	
42	2020-04-01 21:26:31.718958+03	2020-04-01 21:26:31.718958+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-0.2210251081391071	38.68262315514746	0.23490630276377644	37.02368760827246	
43	2020-04-01 21:53:41.790721+03	2020-04-01 21:53:41.790721+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-0.25947691780948223	39.18799424889746	-0.29243551945311874	37.05115342858496	
44	2020-04-01 21:56:29.320063+03	2020-04-01 21:56:29.320063+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-1.3744582653699975	38.91882920983496	-0.31990094736679014	37.47412706139746	
45	2020-04-01 22:28:45.866728+03	2020-04-01 22:28:45.866728+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-0.7263772916514373	38.83093858483496	-0.2704631284360088	37.29834581139746	
46	2020-04-01 22:30:57.811464+03	2020-04-01 22:30:57.811464+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-0.8087673516370218	38.80347276452246	-0.2649700243404972	36.96875596764746	
47	2020-04-01 22:32:21.002795+03	2020-04-01 22:32:21.002795+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-0.660464153977153	39.08362413170996	-0.6879280725771747	37.04566026452246	
48	2020-04-02 00:34:18.844916+03	2020-04-02 00:34:18.844916+03	\N	2	2	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-0.0342580761613998	38.64966417077246	-0.19355946784548714	37.16101670983496	
35	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	7	4	1988-05-12 22:07:01+03	2025-07-16 04:56:12+03	1970-09-20 08:47:25+03	2062-05-04 16:42:46+03	25.541473388671875	86.85379028320312	67.65875244140625	-25.42327880859375	cancelled
37	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	9	7	2045-09-24 20:03:54+03	2031-07-08 21:50:18+03	1979-01-20 13:49:02+03	2040-04-02 14:17:02+03	-47.47623062133789	20.109619140625	-42.211082458496094	-36.648223876953125	cancelled
34	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	3	6	1988-06-27 01:21:35+03	2031-07-08 21:50:18+03	1999-04-24 19:06:04+03	2008-10-05 11:24:48+03	87.29859924316406	170.68643188476562	-24.433731079101562	168.5252685546875	cancelled
49	2020-04-02 03:16:22.742274+03	2020-04-02 03:16:22.742274+03	\N	26	3	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	-0.6879280725771747	38.52057481530371	-0.5286353434813461	37.64716172936621	
36	2021-04-18 09:57:46.257535+03	2021-04-18 09:57:46.257535+03	\N	2	2	2032-04-04 06:54:42+03	1982-03-13 07:27:22+03	2013-09-19 04:17:51+03	1981-06-11 15:55:30+03	-22.738983154296875	171.63775634765625	33.86797332763672	80.76177978515625	cancelled
50	2021-05-03 21:03:13.536215+03	2021-05-03 21:03:13.536215+03	\N	6	3	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	44.18123746245449	86.58660888671874	44.106342085121156	84.81781005859374	scheduled
51	2021-05-03 23:21:01.858441+03	2021-05-03 23:21:01.858441+03	\N	6	3	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	55.819555026705	127.05734642781476	66.19139712938058	115.45578392781476	scheduled
52	2021-05-03 23:29:46.98903+03	2021-05-03 23:29:46.98903+03	\N	36	3	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	30.826113108648528	100.17045015337597	45.88946687408352	70.11185640337597	scheduled
53	2021-05-03 23:32:27.959978+03	2021-05-03 23:32:27.959978+03	\N	6	3	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	43.26063980036225	109.48685640337597	36.949270307163275	69.76029390337597	scheduled
54	2021-05-03 23:35:13.712548+03	2021-05-03 23:35:13.712548+03	\N	6	3	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	60.89658407570744	32.23230342857008	41.981236556575396	22.212772178570077	scheduled
55	2021-05-03 23:36:09.823129+03	2021-05-03 23:36:09.823129+03	\N	38	3	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	54.429554879402595	39.08777217857008	52.86689026039325	-9.955196571429942	scheduled
56	2021-05-03 23:37:02.231199+03	2021-05-03 23:37:02.231199+03	\N	36	3	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	17.20255134077637	21.578429161858605	45.50545295242845	71.50030416185861	scheduled
57	2021-05-03 23:40:09.582408+03	2021-05-03 23:40:09.582408+03	\N	36	3	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	40.89594159750295	65.87530416185861	64.11963784045622	-112.71844583814139	scheduled
\.


--
-- TOC entry 2963 (class 0 OID 27997)
-- Dependencies: 203
-- Data for Name: vehicles; Type: TABLE DATA; Schema: public; Owner: beba_backend
--

COPY public.vehicles (id, created_at, updated_at, deleted_at, registration_number, type, model_name, model_year, color, condition, max_weight, fuel_consumption, brand, date_purchased, expected_end_service, photo) FROM stdin;
5	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KBI 672L	pickup	uyFC	2021	white	quod	31.969999313354492	7.199999809265137	mitsubishi	2063-11-26 03:21:50+03	2010-02-24 19:06:16+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/3-vw-amarok-removebg-preview.png?alt=media&token=f692ecb3-3954-414f-bc7b-40ec85118a42
16	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KPJ 409D	lorry	poGr	1971	blue	eos	4.949999809265137	7.199999809265137	nissan	2066-05-13 16:49:17+03	1993-08-23 01:51:35+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/3-vw-amarok-removebg-preview.png?alt=media&token=f692ecb3-3954-414f-bc7b-40ec85118a42
2	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	2020-04-02 02:27:41.652892+03	KUL 913Y	van	DNJO	1987	white	id	9.989999771118164	7.199999809265137	nissan	1975-10-14 20:46:07+03	2012-04-08 02:33:02+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/3-vw-amarok-removebg-preview.png?alt=media&token=f692ecb3-3954-414f-bc7b-40ec85118a42
3	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KSS 897W	van	OsDy	1986	white	dignissimos	9.989999771118164	4.5	mitsubishi	1990-08-31 20:32:28+03	1994-07-14 19:18:48+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Freightliner_CL_120_Columbia_2010-removebg-preview%20(1).png?alt=media&token=2b3ca283-4957-449e-b2fe-33bb4947e181
4	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	2020-04-02 02:28:14.247457+03	KIC 560P	pickup	tgQw	1977	blue	aperiam	31.969999313354492	4.5	mitsubishi	1996-03-10 22:48:53+03	2025-04-15 00:22:04+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Semi-Truck-Detailing-Prices-removebg-preview.png?alt=media&token=6b161972-cb55-4ef8-bdfd-2ae4ecbf6f6c
6	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KHS 794H	pickup	LXKB	2002	red	voluptatibus	31.969999313354492	31.969999313354492	mitsubishi	2022-01-22 06:30:27+03	2011-03-26 11:14:37+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Semi-Truck-Detailing-Prices-removebg-preview.png?alt=media&token=6b161972-cb55-4ef8-bdfd-2ae4ecbf6f6c
7	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KGY 788M	lorry	Kxum	2001	blue	est	4.949999809265137	7.199999809265137	nissan	2064-07-11 23:10:29+03	2017-11-29 14:22:36+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/cq5dam.web.3840.3840-bf2160fea77047d79ef249e4db3565fc-removebg-preview%20(2).png?alt=media&token=0da90bbb-86d1-44af-8bec-52ff639ae408
8	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	2020-04-02 02:27:32.353501+03	KPJ 860S	pickup	UhgJ	1995	blue	quo	9.989999771118164	31.969999313354492	volkswagen	2014-03-24 14:05:30+03	1996-12-29 19:02:56+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/download__1_-removebg-preview.png?alt=media&token=11ec3b55-a49a-4c80-80bb-d49278935129
9	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KTN 347O	pickup	BgCP	1970	blue	dignissimos	31.969999313354492	31.969999313354492	nissan	2007-07-09 02:56:51+03	1993-04-17 17:30:50+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/f4a02d818b6d861f3fbf5df3efba5239-removebg-preview.png?alt=media&token=74918269-0516-470b-aa06-b563144f58cd
10	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KNX 922C	pickup	vnUo	1979	white	explicabo	4.949999809265137	31.969999313354492	nissan	2003-01-30 20:20:11+03	2025-08-24 20:26:26+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/images-removebg-preview%20(1).png?alt=media&token=3c2eed05-389e-450d-8700-d0a5c9b5faac
11	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KTF 398H	pickup	ReqE	1970	white	neque	4.949999809265137	7.199999809265137	nissan	2067-10-20 07:18:31+03	2024-03-09 06:42:12+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/images-removebg-preview.png?alt=media&token=bd96bb8e-ec3c-4abe-9209-c067ba689517
12	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KLH 605N	van	eYrp	1973	red	minima	9.989999771118164	4.5	toyota	2027-04-15 18:27:24+03	1990-06-05 05:00:43+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/lorry-transport-services-500x500-removebg-preview.png?alt=media&token=24d74539-34e0-4324-82ba-de72101ae238
13	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KBU 475Y	lorry	WrJA	1977	gray	repellendus	9.989999771118164	15.600000381469727	mitsubishi	2019-06-21 20:01:28+03	2041-07-27 06:25:37+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/052715efad00428fb513428b6ea8de36-removebg-preview.png?alt=media&token=44d40a95-a26d-4ef2-9b62-7f472af65bd9
14	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KDR 957J	van	aKmZ	1993	gray	totam	31.969999313354492	7.199999809265137	toyota	2049-01-29 23:05:39+03	1989-10-23 05:30:50+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/12b-removebg-preview.png?alt=media&token=a9eabe35-7aa8-48f8-b75b-fa630ced7051
15	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KBO 666S	pickup	tBxd	2016	white	possimus	31.969999313354492	7.199999809265137	toyota	2064-12-21 12:30:13+03	2004-05-28 07:39:33+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/2020_Chevrolet_Silverado_Midnight-removebg-preview.png?alt=media&token=0e5a0233-80c4-49d2-801a-f917a331146d
17	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KBQ 894N	pickup	HYLF	1986	gray	exercitationem	9.989999771118164	7.199999809265137	nissan	1971-02-23 13:33:44+03	2007-07-16 04:11:54+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Freightliner_CL_120_Columbia_2010-removebg-preview%20(1).png?alt=media&token=2b3ca283-4957-449e-b2fe-33bb4947e181
18	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KHE 382E	pickup	OOWW	1997	red	eum	31.969999313354492	4.5	nissan	2029-10-04 15:20:12+03	1976-04-07 23:13:58+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Semi-Truck-Detailing-Prices-removebg-preview.png?alt=media&token=6b161972-cb55-4ef8-bdfd-2ae4ecbf6f6c
19	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KDW 562D	lorry	Lbpv	2015	gray	et	31.969999313354492	7.199999809265137	mitsubishi	2052-08-11 07:01:55+03	2007-04-09 22:55:33+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/Semi-Truck-Detailing-Prices-removebg-preview.png?alt=media&token=6b161972-cb55-4ef8-bdfd-2ae4ecbf6f6c
20	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KNF 672I	pickup	DmPY	1981	gray	repudiandae	31.969999313354492	7.199999809265137	nissan	2029-04-21 14:11:22+03	2056-07-13 01:13:37+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/cq5dam.web.3840.3840-bf2160fea77047d79ef249e4db3565fc-removebg-preview%20(2).png?alt=media&token=0da90bbb-86d1-44af-8bec-52ff639ae408
21	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KEO 605B	pickup	XKaF	2011	gray	consequatur	31.969999313354492	31.969999313354492	toyota	2038-12-22 12:12:53+03	1984-09-09 13:47:12+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/download__1_-removebg-preview.png?alt=media&token=11ec3b55-a49a-4c80-80bb-d49278935129
22	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KCE 541H	pickup	gGBM	2011	gray	ut	4.949999809265137	31.969999313354492	toyota	2021-08-03 02:55:20+03	1977-11-14 01:43:52+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/f4a02d818b6d861f3fbf5df3efba5239-removebg-preview.png?alt=media&token=74918269-0516-470b-aa06-b563144f58cd
23	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KAF 336W	pickup	UmoH	2012	gray	aspernatur	9.989999771118164	4.5	nissan	1989-07-23 12:11:46+03	2050-08-26 12:28:54+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/images-removebg-preview%20(1).png?alt=media&token=3c2eed05-389e-450d-8700-d0a5c9b5faac
24	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KXR 207J	pickup	dgxA	2013	gray	expedita	4.949999809265137	7.199999809265137	nissan	2037-09-19 18:27:40+03	2006-02-12 03:46:21+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/images-removebg-preview.png?alt=media&token=bd96bb8e-ec3c-4abe-9209-c067ba689517
25	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KSJ 613Q	lorry	pUGb	2014	red	sint	31.969999313354492	7.199999809265137	volkswagen	2055-05-29 13:32:34+03	2007-01-08 20:54:48+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/lorry-transport-services-500x500-removebg-preview.png?alt=media&token=24d74539-34e0-4324-82ba-de72101ae238\n
26	2021-04-18 09:57:46.030671+03	2021-04-18 09:57:46.030671+03	\N	KQU 462I	lorry	djED	1977	red	tenetur	4.949999809265137	15.600000381469727	mitsubishi	2008-07-11 04:54:37+03	2038-08-26 08:13:57+03	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/mahindra-bolero-maxi-truck-plus-31214-removebg-preview.png?alt=media&token=11f351f2-1a08-4e72-ba0e-167206337468
\.


--
-- TOC entry 2976 (class 0 OID 0)
-- Dependencies: 204
-- Name: drivers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beba_backend
--

SELECT pg_catalog.setval('public.drivers_id_seq', 144, true);


--
-- TOC entry 2977 (class 0 OID 0)
-- Dependencies: 206
-- Name: trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beba_backend
--

SELECT pg_catalog.setval('public.trips_id_seq', 57, true);


--
-- TOC entry 2978 (class 0 OID 0)
-- Dependencies: 202
-- Name: vehicles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: beba_backend
--

SELECT pg_catalog.setval('public.vehicles_id_seq', 26, true);


--
-- TOC entry 2825 (class 2606 OID 28019)
-- Name: drivers drivers_email_key; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_email_key UNIQUE (email);


--
-- TOC entry 2827 (class 2606 OID 28021)
-- Name: drivers drivers_phone_key; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_phone_key UNIQUE (phone);


--
-- TOC entry 2829 (class 2606 OID 28017)
-- Name: drivers drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_pkey PRIMARY KEY (id);


--
-- TOC entry 2833 (class 2606 OID 28033)
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);


--
-- TOC entry 2823 (class 2606 OID 28005)
-- Name: vehicles vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);


--
-- TOC entry 2830 (class 1259 OID 28022)
-- Name: idx_drivers_deleted_at; Type: INDEX; Schema: public; Owner: beba_backend
--

CREATE INDEX idx_drivers_deleted_at ON public.drivers USING btree (deleted_at);


--
-- TOC entry 2831 (class 1259 OID 28044)
-- Name: idx_trips_deleted_at; Type: INDEX; Schema: public; Owner: beba_backend
--

CREATE INDEX idx_trips_deleted_at ON public.trips USING btree (deleted_at);


--
-- TOC entry 2821 (class 1259 OID 28006)
-- Name: idx_vehicles_deleted_at; Type: INDEX; Schema: public; Owner: beba_backend
--

CREATE INDEX idx_vehicles_deleted_at ON public.vehicles USING btree (deleted_at);


--
-- TOC entry 2835 (class 2606 OID 28039)
-- Name: trips fk_drivers_trips; Type: FK CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT fk_drivers_trips FOREIGN KEY (driver_id) REFERENCES public.drivers(id);


--
-- TOC entry 2834 (class 2606 OID 28034)
-- Name: trips fk_vehicles_trips; Type: FK CONSTRAINT; Schema: public; Owner: beba_backend
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT fk_vehicles_trips FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


-- Completed on 2021-05-13 10:51:39 EAT

--
-- PostgreSQL database dump complete
--

