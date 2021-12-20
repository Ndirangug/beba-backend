--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)

-- Started on 2021-05-20 09:20:40 EAT

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
-- Name: drivers; Type: TABLE; Schema: public; Owner:  fyvuslbadosfqp
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


ALTER TABLE public.drivers OWNER TO  fyvuslbadosfqp;

--
-- TOC entry 201 (class 1259 OID 5120194)
-- Name: drivers_id_seq; Type: SEQUENCE; Schema: public; Owner:  fyvuslbadosfqp
--

CREATE SEQUENCE public.drivers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.drivers_id_seq OWNER TO  fyvuslbadosfqp;

--
-- TOC entry 4012 (class 0 OID 0)
-- Dependencies: 201
-- Name: drivers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER SEQUENCE public.drivers_id_seq OWNED BY public.drivers.id;


--
-- TOC entry 202 (class 1259 OID 5120196)
-- Name: trips; Type: TABLE; Schema: public; Owner:  fyvuslbadosfqp
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


ALTER TABLE public.trips OWNER TO  fyvuslbadosfqp;

--
-- TOC entry 203 (class 1259 OID 5120202)
-- Name: trips_id_seq; Type: SEQUENCE; Schema: public; Owner:  fyvuslbadosfqp
--

CREATE SEQUENCE public.trips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_id_seq OWNER TO  fyvuslbadosfqp;

--
-- TOC entry 4013 (class 0 OID 0)
-- Dependencies: 203
-- Name: trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;


--
-- TOC entry 204 (class 1259 OID 5120204)
-- Name: vehicles; Type: TABLE; Schema: public; Owner:  fyvuslbadosfqp
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


ALTER TABLE public.vehicles OWNER TO  fyvuslbadosfqp;

--
-- TOC entry 205 (class 1259 OID 5120210)
-- Name: vehicles_id_seq; Type: SEQUENCE; Schema: public; Owner:  fyvuslbadosfqp
--

CREATE SEQUENCE public.vehicles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vehicles_id_seq OWNER TO  fyvuslbadosfqp;

--
-- TOC entry 4014 (class 0 OID 0)
-- Dependencies: 205
-- Name: vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER SEQUENCE public.vehicles_id_seq OWNED BY public.vehicles.id;


--
-- TOC entry 3852 (class 2604 OID 5120212)
-- Name: drivers id; Type: DEFAULT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.drivers ALTER COLUMN id SET DEFAULT nextval('public.drivers_id_seq'::regclass);


--
-- TOC entry 3853 (class 2604 OID 5120213)
-- Name: trips id; Type: DEFAULT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);


--
-- TOC entry 3854 (class 2604 OID 5120214)
-- Name: vehicles id; Type: DEFAULT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.vehicles ALTER COLUMN id SET DEFAULT nextval('public.vehicles_id_seq'::regclass);


--
-- TOC entry 4000 (class 0 OID 5120188)
-- Dependencies: 200
-- Data for Name: drivers; Type: TABLE DATA; Schema: public; Owner:  fyvuslbadosfqp
--

COPY public.drivers (id, created_at, updated_at, deleted_at, first_name, last_name, email, phone, sex, date_of_birth, date_employed, comment, evaluation_report, drivers_licence, avatar, on_trip) FROM stdin;
14	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Eloisa	Bailey	iytRFsp@BuMxuBh.biz	276-110-5493	female	1993-07-29 00:01:37+00	2007-02-01 12:40:46+00	Aut accusantium sit perferendis consequatur voluptatem.	http://www.vaMUiAS.net/	https://www.dMWkeEB.com/JoekghK	https://i.pravatar.cc/150?img=44	\N
17	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Waino	Wisozk	AvMwtaL@MAJCPKK.net	710-581-4369	female	2057-07-10 05:06:19+00	1994-01-27 21:59:12+00	Voluptatem accusantium consequatur sit aut perferendis.	http://WYIMWfm.net/	https://www.JUWWStB.org/eaPiVKl	https://i.pravatar.cc/150?img=14	\N
19	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Randi	Johnston	GFwOwIQ@aVbsNAW.biz	154-987-6231	female	2043-03-08 06:26:13+00	2065-08-14 04:49:04+00	Voluptatem accusantium aut consequatur sit perferendis.	https://www.JsjYOGI.com/GhOqCfk	http://www.OuQeRUp.ru/eFFPioQ	https://i.pravatar.cc/150?img=46	\N
11	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Sadie	Torp	BDWtZGa@hdddSPp.ru	829-110-5463	male	1987-11-04 05:39:12+00	1991-03-14 01:24:27+00	Aut sit consequatur perferendis accusantium voluptatem.	http://www.vbVAaYf.info/	https://FWDgGvK.com/PIgTIhm.php	https://i.pravatar.cc/150?img=67	\N
8	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Aimee	Stark	bwKArSW@areuZow.biz	368-210-1459	female	1975-04-16 19:50:55+00	2004-02-28 01:27:03+00	Voluptatem consequatur accusantium aut perferendis sit.	https://www.BHqRSXD.biz/	https://JUhvRjX.ru/ABuYeFN	https://i.pravatar.cc/150?img=12	\N
7	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Hollis	Borer	qqYeSLR@fFfTrZU.org	417-310-9286	female	2041-07-29 14:18:30+00	1970-04-17 12:15:02+00	Accusantium sit consequatur voluptatem aut perferendis.	http://XsJkExC.ru/lBaJqUu.php	http://sjslxLw.org/tKiBDSq.php	https://i.pravatar.cc/150?img=21	\N
13	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Bernard	Dickinson	TFTObxN@DvqVYsc.biz	104-219-5867	male	2054-03-31 22:35:35+00	2020-02-08 17:04:58+00	Sit accusantium voluptatem perferendis consequatur aut.	https://MwdJgWX.biz/rCsrwDq.html	http://WHXOBit.org/	https://i.pravatar.cc/150?img=55	\N
10	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Dallas	Nienow	jhOmaya@SXNPTKN.biz	417-231-0859	female	1989-12-25 17:58:26+00	2053-12-02 03:57:25+00	Sit perferendis voluptatem consequatur accusantium aut.	http://ASyYrJM.com/WTKsLPr.html	http://www.FcZSkgT.info/	https://i.pravatar.cc/150?img=65	\N
12	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Raul	Anderson	ADZoLJT@nNpmMdX.ru	254-896-3710	male	1976-09-14 03:38:16+00	2018-10-27 19:35:08+00	Sit aut accusantium perferendis voluptatem consequatur.	https://www.NkrbbDF.com/UEORAsk	http://www.mAcDwye.org/	https://i.pravatar.cc/150?img=10	\N
18	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Raoul	Waters	uMQEWsj@LsiHxCC.net	825-941-0761	male	2046-04-22 18:08:04+00	1972-07-30 05:53:52+00	Consequatur perferendis sit accusantium aut voluptatem.	https://VvEGgRH.ru/YRLyjDb.php	http://RijYhPt.ru/uGcYnZk	https://i.pravatar.cc/150?img=31	\N
20	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Alfreda	Abernathy	DCSgRZM@MPvGPir.com	101-376-2594	male	2016-12-05 14:51:25+00	1971-10-01 07:06:41+00	Accusantium consequatur perferendis voluptatem sit aut.	https://LarroxR.info/YlPMftq	https://VyGXxaR.info/mxDoMfH	https://i.pravatar.cc/150?img=59	\N
3	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Muhammad	Lowe	xZIThhM@mtthuvt.com	210-963-4785	female	2053-01-10 11:44:39+00	2013-03-03 14:00:14+00	Aut voluptatem perferendis consequatur sit accusantium.	https://www.YvZryIY.ru/	https://SILSKBJ.ru/	https://i.pravatar.cc/150?img=44	\N
5	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Darren	Davis	uihiuhuihi	510-273-8916	female	2045-03-03 03:23:13+00	2051-01-30 04:41:29+00	Aut voluptatem accusantium perferendis sit consequatur.	http://www.HvQTdAW.net/QbfIYAM	http://www.unNQeUD.com/	https://i.pravatar.cc/150?img=28	\N
2	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	George	Ndirangu	ndirangu.mepawa@gmail.com	134-592-1068	female	1985-07-11 14:20:48+00	2037-06-16 01:05:43+00	Perferendis aut voluptatem sit consequatur accusantium.	http://www.BSYqlrX.ru/	http://puOBpsG.biz/fFHkdgv.html	https://i.pravatar.cc/150?img=48	\N
9	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	George	Kabucho	kabuchogeorge3@gmail.com	510-327-6149	female	1989-05-01 13:18:24+00	2053-11-28 15:50:46+00	Consequatur voluptatem aut accusantium perferendis sit.	http://qNAIblm.ru/SvgKIOe.php	https://XBaZruj.biz/	https://i.pravatar.cc/150?img=33	\N
6	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Kahu	Koch	shazkawho@gmail.com	691-045-7312	female	1997-04-05 15:54:12+00	2014-03-17 05:11:59+00	Sit accusantium consequatur perferendis aut voluptatem.	http://XXYPenm.net/TBTbUMl.php	https://www.qUQSlCi.ru/	https://i.pravatar.cc/150?img=7	\N
4	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Gerald	Lowe	fJImBGo@fpkEwiU.net	428-135-1069	male	2007-09-05 17:51:17+00	1992-06-18 06:39:38+00	Accusantium voluptatem consequatur sit perferendis aut.	https://ZgYZCef.biz/	https://www.FgDREcZ.org/qNFQGNp	https://i.pravatar.cc/150?img=51	\N
15	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Kitu	Another	abuchogeorge3@gmail.com	642-151-0789	female	1990-08-01 00:28:02+00	2020-06-24 16:12:49+00	Accusantium voluptatem sit consequatur perferendis aut.	http://www.yedxKoV.org/AFPLNjL	http://WBpPlJv.biz/GxwtAtM.html	https://i.pravatar.cc/150?img=54	\N
16	2021-04-13 11:50:17.881038+00	2021-04-13 11:50:17.881038+00	\N	Kahuho	Kunde	shazkho@gmail.com	935-718-4210	female	2039-08-06 14:10:14+00	2035-10-19 21:55:40+00	Voluptatem aut perferendis sit accusantium consequatur.	https://GaITycf.net/	https://WZuWeYI.ru/ESKMqKb	https://i.pravatar.cc/150?img=18	\N
\.


--
-- TOC entry 4002 (class 0 OID 5120196)
-- Dependencies: 202
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner:  fyvuslbadosfqp
--

COPY public.trips (id, created_at, updated_at, deleted_at, driver_id, vehicle_id, time_start, time_end, time_expected_start, time_expected_end, latitude_begin, longitude_begin, latitude_end, longitude_end, status) FROM stdin;
71	2021-05-20 06:19:11.948522+00	2021-05-20 06:19:11.948522+00	\N	14	5	1970-01-01 00:00:00+00	1970-01-01 00:00:00+00	2021-05-29 00:00:00+00	2021-06-01 00:00:00+00	-3.026717750569187	38.41236818383902	-0.10576312180160129	40.38990724633902	scheduled
29	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	11	4	2020-07-11 18:44:20.433025+00	2020-07-14 18:44:20.433025+00	2020-07-11 17:44:20.433025+00	2020-07-14 17:44:20.433025+00	1.23587426390203	-34.9169154426123	0.536935339832414	-37.7654221590046	ongoing
23	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	7	12	2014-05-03 08:24:39.11039+00	\N	2014-05-03 07:24:39.11039+00	2014-05-06 07:24:39.11039+00	-1.13732599448145	-35.7982550671009	1.14351243795439	-34.4025759132926	cancelled
24	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	10	3	2017-10-02 23:24:28.457027+00	\N	2017-10-02 22:24:28.457027+00	2017-10-05 22:24:28.457027+00	-4.93879541417495	-36.700732051406	-2.28170386695563	-34.96985411404	cancelled
26	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	19	11	2015-01-10 21:46:10.567204+00	\N	2015-01-10 20:46:10.567204+00	2015-01-13 20:46:10.567204+00	3.74508211140138	-37.8811857731986	1.09414704491796	-34.0563885010048	cancelled
27	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	10	7	2021-04-09 01:17:07.47216+00	\N	2021-04-09 00:17:07.47216+00	2021-04-12 00:17:07.47216+00	1.90885601050224	-33.3627098290852	5.7039477833487	-33.5806450973675	cancelled
25	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	18	10	2016-05-27 08:13:24.073026+00	\N	2016-05-27 07:13:24.073026+00	2016-05-30 07:13:24.073026+00	3.24060447999703	-35.2159938125229	-1.54894468273443	-34.3166363428979	cancelled
28	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	17	7	2018-09-26 11:41:26.162422+00	\N	2018-09-26 10:41:26.162422+00	2018-09-29 10:41:26.162422+00	-4.56185157462133	-33.7691170862208	-4.95955492991113	-33.8149363781677	cancelled
31	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	11	10	2016-07-26 13:59:04.125498+00	\N	2016-07-26 12:59:04.125498+00	2016-07-29 12:59:04.125498+00	-2.72445713906454	-35.9532656582089	-0.846958832085956	-36.0463312717857	cancelled
33	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	16	8	2021-02-22 12:21:53.24324+00	\N	2021-02-22 11:21:53.24324+00	2021-02-25 11:21:53.24324+00	0.655171956150806	-36.8838610394688	1.19274225913127	-37.2088868650425	cancelled
38	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	17	15	2021-01-27 19:07:28.332658+00	\N	2021-01-27 18:07:28.332658+00	2021-01-30 18:07:28.332658+00	-4.05127769392341	-37.7110043630808	0.171037108632962	-34.1719839616111	cancelled
32	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	5	7	2017-08-06 01:11:14.94905+00	\N	2017-08-06 00:11:14.94905+00	2017-08-09 00:11:14.94905+00	-3.43623147667265	-35.21448889535	2.66737288742603	-35.1553636051955	cancelled
39	2020-04-01 21:23:27.885518+00	2020-04-01 21:23:27.885518+00	\N	9	6	2021-02-11 01:48:49.943069+00	2021-02-14 01:48:49.943069+00	2021-02-11 00:48:49.943069+00	2021-02-14 00:48:49.943069+00	-4.99624976176466	-37.6500492686825	-3.12181962702583	-36.4822561439964	
40	2020-04-01 22:21:31.191572+00	2020-04-01 22:21:31.191572+00	\N	2	12	2019-06-11 05:10:20.662009+00	2019-06-14 05:10:20.662009+00	2019-06-11 04:10:20.662009+00	2019-06-14 04:10:20.662009+00	5.44439127656896	-36.0730335379543	-1.12143810153043	-36.1602672166619	
41	2020-04-01 22:31:14.132714+00	2020-04-01 22:31:14.132714+00	\N	20	7	2016-03-12 16:20:33.584596+00	2016-03-15 16:20:33.584596+00	2016-03-12 15:20:33.584596+00	2016-03-15 15:20:33.584596+00	5.61694314668298	-37.6077219792677	-1.66238195510006	-33.5465980014636	
42	2020-04-01 18:26:31.718958+00	2020-04-01 18:26:31.718958+00	\N	11	10	2018-08-24 18:35:54.461186+00	2018-08-27 18:35:54.461186+00	2018-08-24 17:35:54.461186+00	2018-08-27 17:35:54.461186+00	-0.882016927191888	-36.3231984707345	2.27834285440301	-33.5657092650166	
30	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	13	10	2019-01-07 03:50:35.38584+00	\N	2019-01-07 02:50:35.38584+00	2019-01-10 02:50:35.38584+00	0.829393666923007	-35.3491250967299	-0.725863431061764	-33.9483379101886	cancelled
68	2021-05-20 05:41:28.872889+00	2021-05-20 05:41:28.872889+00	\N	14	5	1970-01-01 00:00:00+00	1970-01-01 00:00:00+00	2021-05-28 00:00:00+00	2021-05-31 00:00:00+00	0.005318899269582922	40.52462810059059	1.6256123469032169	35.43300587331495	scheduled
36	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	4	3	\N	\N	2021-09-07 17:26:37.166195+00	2021-09-10 17:26:37.166195+00	1.11459191784115	-33.8957517368156	0.959436373042156	-36.7577629168686	cancelled
35	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	6	5	2016-11-17 23:48:59.738691+00	\N	2016-11-17 22:48:59.738691+00	2016-11-20 22:48:59.738691+00	2.24093324892929	-36.5623966188841	-3.6978082369655	-34.6255260716281	cancelled
70	2021-05-20 06:00:58.901461+00	2021-05-20 06:00:58.901461+00	\N	14	5	1970-01-01 00:00:00+00	1970-01-01 00:00:00+00	2021-05-28 00:00:00+00	2021-05-31 00:00:00+00	1.2082535813278172	39.71966428679714	-0.5055174849648103	36.269657541527344	scheduled
37	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	10	9	2014-03-13 09:26:19.710567+00	\N	2014-03-13 08:26:19.710567+00	2014-03-16 08:26:19.710567+00	4.50447443004802	-36.9799625606569	5.51449872125686	-35.7676846281632	cancelled
34	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	9	7	2018-11-21 12:05:28.483775+00	\N	2018-11-21 11:05:28.483775+00	2018-11-24 11:05:28.483775+00	2.27299081587359	-34.6017616197101	-2.64202560399937	-37.5899812187103	cancelled
22	2021-04-18 06:57:46.257535+00	2021-04-18 06:57:46.257535+00	\N	18	14	2016-01-19 12:45:41.171103+00	\N	2016-01-19 11:45:41.171103+00	2016-01-22 11:45:41.171103+00	4.64751713669687	-37.8079051040954	1.9967072999748	-35.6194549382828	cancelled
69	2021-05-20 05:44:04.555864+00	2021-05-20 05:44:04.555864+00	\N	14	5	1970-01-01 00:00:00+00	1970-01-01 00:00:00+00	2021-05-28 00:00:00+00	2021-05-31 00:00:00+00	-0.01891249573968406	35.571240704183566	-1.9740882125412396	36.823682110433566	scheduled
\.


--
-- TOC entry 4004 (class 0 OID 5120204)
-- Dependencies: 204
-- Data for Name: vehicles; Type: TABLE DATA; Schema: public; Owner:  fyvuslbadosfqp
--

COPY public.vehicles (id, created_at, updated_at, deleted_at, registration_number, type, model_name, model_year, color, condition, max_weight, fuel_consumption, brand, date_purchased, expected_end_service, photo) FROM stdin;
5	2021-04-18 06:57:46.030671+00	2021-04-18 06:57:46.030671+00	\N	KBI 672L	pickup	uyFC	2021	white	quod	31.969999313354492	7.199999809265137	mitsubishi	2063-11-26 00:21:50+00	2010-02-24 16:06:16+00	https://firebasestorage.googleapis.com/v0/b/fleet-management-sys.appspot.com/o/3-vw-amarok-removebg-preview.png?alt=media&token=f692ecb3-3954-414f-bc7b-40ec85118a42
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
\.


--
-- TOC entry 4015 (class 0 OID 0)
-- Dependencies: 201
-- Name: drivers_id_seq; Type: SEQUENCE SET; Schema: public; Owner:  fyvuslbadosfqp
--

SELECT pg_catalog.setval('public.drivers_id_seq', 144, true);


--
-- TOC entry 4016 (class 0 OID 0)
-- Dependencies: 203
-- Name: trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner:  fyvuslbadosfqp
--

SELECT pg_catalog.setval('public.trips_id_seq', 71, true);


--
-- TOC entry 4017 (class 0 OID 0)
-- Dependencies: 205
-- Name: vehicles_id_seq; Type: SEQUENCE SET; Schema: public; Owner:  fyvuslbadosfqp
--

SELECT pg_catalog.setval('public.vehicles_id_seq', 26, true);


--
-- TOC entry 3856 (class 2606 OID 5120216)
-- Name: drivers drivers_email_key; Type: CONSTRAINT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_email_key UNIQUE (email);


--
-- TOC entry 3858 (class 2606 OID 5120218)
-- Name: drivers drivers_phone_key; Type: CONSTRAINT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_phone_key UNIQUE (phone);


--
-- TOC entry 3860 (class 2606 OID 5120220)
-- Name: drivers drivers_pkey; Type: CONSTRAINT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.drivers
    ADD CONSTRAINT drivers_pkey PRIMARY KEY (id);


--
-- TOC entry 3864 (class 2606 OID 5120222)
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);


--
-- TOC entry 3867 (class 2606 OID 5120224)
-- Name: vehicles vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);


--
-- TOC entry 3861 (class 1259 OID 5120225)
-- Name: idx_drivers_deleted_at; Type: INDEX; Schema: public; Owner:  fyvuslbadosfqp
--

CREATE INDEX idx_drivers_deleted_at ON public.drivers USING btree (deleted_at);


--
-- TOC entry 3862 (class 1259 OID 5120226)
-- Name: idx_trips_deleted_at; Type: INDEX; Schema: public; Owner:  fyvuslbadosfqp
--

CREATE INDEX idx_trips_deleted_at ON public.trips USING btree (deleted_at);


--
-- TOC entry 3865 (class 1259 OID 5120227)
-- Name: idx_vehicles_deleted_at; Type: INDEX; Schema: public; Owner:  fyvuslbadosfqp
--

CREATE INDEX idx_vehicles_deleted_at ON public.vehicles USING btree (deleted_at);


--
-- TOC entry 3868 (class 2606 OID 5120228)
-- Name: trips fk_drivers_trips; Type: FK CONSTRAINT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT fk_drivers_trips FOREIGN KEY (driver_id) REFERENCES public.drivers(id);


--
-- TOC entry 3869 (class 2606 OID 5120233)
-- Name: trips fk_vehicles_trips; Type: FK CONSTRAINT; Schema: public; Owner:  fyvuslbadosfqp
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT fk_vehicles_trips FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4011 (class 0 OID 0)
-- Dependencies: 643
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO  fyvuslbadosfqp;


-- Completed on 2021-05-20 09:21:35 EAT

--
-- PostgreSQL database dump complete
--

