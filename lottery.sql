toc.dat                                                                                             0000600 0004000 0002000 00000024544 13661303355 0014455 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           %                x            lottery %   10.12 (Ubuntu 10.12-0ubuntu0.18.04.1) %   10.12 (Ubuntu 10.12-0ubuntu0.18.04.1) %    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         �           1262    16472    lottery    DATABASE     y   CREATE DATABASE lottery WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE lottery;
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                     3079    13041    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                     3079    16586    pg_trgm 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;
    DROP EXTENSION pg_trgm;
                  false    4         �           0    0    EXTENSION pg_trgm    COMMENT     e   COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';
                       false    2         �            1259    16548    companysetting_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.companysetting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.companysetting_id_seq;
       public       john11    false    4         �            1259    16473    companysetting    TABLE     .  CREATE TABLE public.companysetting (
    id smallint DEFAULT nextval('public.companysetting_id_seq'::regclass) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    value character varying(255) DEFAULT NULL::character varying,
    additionalvalue character varying(255) DEFAULT NULL::character varying,
    displayname character varying(255) DEFAULT NULL::character varying,
    additionalvalue2 character varying(255) DEFAULT NULL::character varying,
    updatedon time without time zone,
    registeredon time without time zone
);
 "   DROP TABLE public.companysetting;
       public         postgres    false    205    4         �            1259    16583    failed_login_seq    SEQUENCE     y   CREATE SEQUENCE public.failed_login_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.failed_login_seq;
       public       john11    false    4         �            1259    16486    failedloginatempt    TABLE     �   CREATE TABLE public.failedloginatempt (
    id smallint DEFAULT nextval('public.failed_login_seq'::regclass),
    userid smallint,
    hourlyatempt smallint,
    dailyatempt smallint,
    totalatempt smallint,
    status boolean
);
 %   DROP TABLE public.failedloginatempt;
       public         postgres    false    208    4         �            1259    16489    interactiondata    TABLE       CREATE TABLE public.interactiondata (
    methodname character varying(1) DEFAULT NULL::character varying,
    remark character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    lastupdatedon character varying(1) DEFAULT NULL::character varying,
    id character varying(1) DEFAULT NULL::character varying,
    requestdata character varying(1) DEFAULT NULL::character varying,
    responsedata character varying(1) DEFAULT NULL::character varying
);
 #   DROP TABLE public.interactiondata;
       public         postgres    false    4         �            1259    16503    passwordhistory    TABLE     �   CREATE TABLE public.passwordhistory (
    id smallint,
    initialpassword character varying(60) DEFAULT NULL::character varying,
    userid smallint,
    ispasswordchanged boolean
);
 #   DROP TABLE public.passwordhistory;
       public         postgres    false    4         �            1259    24778    passwordhistory_id_seq    SEQUENCE        CREATE SEQUENCE public.passwordhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.passwordhistory_id_seq;
       public       john11    false    4         �            1259    16507    user_authorities    TABLE     �   CREATE TABLE public.user_authorities (
    user_id smallint,
    authority character varying(255) DEFAULT NULL::character varying
);
 $   DROP TABLE public.user_authorities;
       public         postgres    false    4         �            1259    16577    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       john11    false    4         �            1259    16526    users    TABLE     -  CREATE TABLE public.users (
    id smallint DEFAULT nextval('public.users_id_seq'::regclass),
    username character varying(255) DEFAULT NULL::character varying,
    password character varying(255) DEFAULT NULL::character varying,
    userdata smallint,
    usergroup smallint,
    active boolean
);
    DROP TABLE public.users;
       public         jon    false    207    4         �            1259    16511 	   usersdata    TABLE     y  CREATE TABLE public.usersdata (
    id smallint DEFAULT nextval('public.users_id_seq'::regclass),
    firstname character varying(255) DEFAULT NULL::character varying,
    lastname character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    phonenumber character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE public.usersdata;
       public         postgres    false    207    4         �            1259    16574    usersdata_id_seq    SEQUENCE     y   CREATE SEQUENCE public.usersdata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.usersdata_id_seq;
       public       john11    false    4         �            1259    16518 
   usersgroup    TABLE     	  CREATE TABLE public.usersgroup (
    id smallint,
    groupname character varying(13) DEFAULT NULL::character varying,
    groupdescription character varying(21) DEFAULT NULL::character varying,
    groupcode character varying(1) DEFAULT NULL::character varying
);
    DROP TABLE public.usersgroup;
       public         postgres    false    4         �          0    16473    companysetting 
   TABLE DATA               �   COPY public.companysetting (id, name, value, additionalvalue, displayname, additionalvalue2, updatedon, registeredon) FROM stdin;
    public       postgres    false    197       3014.dat �          0    16486    failedloginatempt 
   TABLE DATA               g   COPY public.failedloginatempt (id, userid, hourlyatempt, dailyatempt, totalatempt, status) FROM stdin;
    public       postgres    false    198       3015.dat �          0    16489    interactiondata 
   TABLE DATA               s   COPY public.interactiondata (methodname, remark, status, lastupdatedon, id, requestdata, responsedata) FROM stdin;
    public       postgres    false    199       3016.dat �          0    16503    passwordhistory 
   TABLE DATA               Y   COPY public.passwordhistory (id, initialpassword, userid, ispasswordchanged) FROM stdin;
    public       postgres    false    200       3017.dat �          0    16507    user_authorities 
   TABLE DATA               >   COPY public.user_authorities (user_id, authority) FROM stdin;
    public       postgres    false    201       3018.dat �          0    16526    users 
   TABLE DATA               T   COPY public.users (id, username, password, userdata, usergroup, active) FROM stdin;
    public       jon    false    204       3021.dat �          0    16511 	   usersdata 
   TABLE DATA               P   COPY public.usersdata (id, firstname, lastname, email, phonenumber) FROM stdin;
    public       postgres    false    202       3019.dat �          0    16518 
   usersgroup 
   TABLE DATA               P   COPY public.usersgroup (id, groupname, groupdescription, groupcode) FROM stdin;
    public       postgres    false    203       3020.dat �           0    0    companysetting_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.companysetting_id_seq', 8, true);
            public       john11    false    205         �           0    0    failed_login_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.failed_login_seq', 1, true);
            public       john11    false    208         �           0    0    passwordhistory_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.passwordhistory_id_seq', 1, false);
            public       john11    false    209         �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 14, true);
            public       john11    false    207         �           0    0    usersdata_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.usersdata_id_seq', 1, false);
            public       john11    false    206         L           2606    16560     companysetting companysetting_un 
   CONSTRAINT     Y   ALTER TABLE ONLY public.companysetting
    ADD CONSTRAINT companysetting_un UNIQUE (id);
 J   ALTER TABLE ONLY public.companysetting DROP CONSTRAINT companysetting_un;
       public         postgres    false    197                                                                                                                                                                    3014.dat                                                                                            0000600 0004000 0002000 00000001432 13661303355 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	username	sampleSchool	text	User Name		\N	\N
3	password	samplePassword	text	Password		\N	\N
4	UNIENTERPRISEID	UNICASH-00011-2019	text	Uni Enterprise Id		\N	\N
5	phone	phone Number	text	Phone Number		\N	\N
6	email	Email	email	E-Mail		\N	\N
7	autoMerchantRefGeneration	true	boolean	Auto Merchant Reference Number Generate		\N	\N
8	validfor	4	number	Valid For(Days)		\N	\N
9	enterpriseBankAccountId	3	select	Enterprise Bank		\N	\N
10	CancelationPeriod	7		Cancelation Period		\N	\N
11	logo	logo.png				\N	\N
12	maxFailed	10	number	Maximum Allowed Login Attempts		\N	\N
15	allowMembership	false	boolean	Activate Customer Accounts without Permissions		\N	\N
16	allowCustRegistration	true	boolean	Allow Customer To Register Payment		\N	\N
17	lastSyncTime					\N	\N
18	lastCustSyncTime					\N	\N
\.


                                                                                                                                                                                                                                      3015.dat                                                                                            0000600 0004000 0002000 00000000043 13661303355 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \N	12	1	1	1	t
1	10011	1	1	1	t
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3016.dat                                                                                            0000600 0004000 0002000 00000000005 13661303355 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3017.dat                                                                                            0000600 0004000 0002000 00000001506 13661303355 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        34	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	11	t
34	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	11	f
34	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	11	f
34	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	11	f
34	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	11	f
34	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	11	f
34	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	11	f
34	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	11	f
34	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	10011	f
34	$2a$10$NfNb6mOaMshw/pXIhpv6z.fvNrEn5tRqcFkXueG1zkqItZzsLvPbe	10012	f
34	$2a$10$Tmw3kSYODSZVmk5MMS.iHO87OBnQMQa3VI5stMLTJo81gv3OEJy0u	6	f
\N	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	14	f
\.


                                                                                                                                                                                          3018.dat                                                                                            0000600 0004000 0002000 00000001772 13661303355 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ADMIN
0	ADMIN
6	ADMIN
8	ADMIN
10	CUSTOMER
12	ADMIN
14	ADMIN
10001	ADMIN
10001	ADMIN
10002	ADMIN
10003	ADMIN
10004	ADMIN
10005	ADMIN
10006	ADMIN
10007	ADMIN
10008	ADMIN
10009	ADMIN
10010	ADMIN
10011	ADMIN
10012	ADMIN
10001	ADMIN
10001	ADMIN
10002	ADMIN
10003	ADMIN
10004	ADMIN
10005	ADMIN
10006	ADMIN
10007	ADMIN
10008	ADMIN
10009	ADMIN
10010	ADMIN
10011	ADMIN
10012	ADMIN
10001	ADMIN
10001	ADMIN
10002	ADMIN
10003	ADMIN
10004	ADMIN
10005	ADMIN
10006	ADMIN
10007	ADMIN
10008	ADMIN
10009	ADMIN
10010	ADMIN
10011	ADMIN
10012	ADMIN
10001	ADMIN
10001	ADMIN
10002	ADMIN
10003	ADMIN
10004	ADMIN
10005	ADMIN
10006	ADMIN
10007	ADMIN
10008	ADMIN
10009	ADMIN
10010	ADMIN
10011	ADMIN
10012	ADMIN
10001	ADMIN
10001	ADMIN
10002	ADMIN
10003	ADMIN
10004	ADMIN
10005	ADMIN
10006	ADMIN
10007	ADMIN
10008	ADMIN
10009	ADMIN
10010	ADMIN
10011	ADMIN
10012	ADMIN
10001	ADMIN
10001	ADMIN
10002	ADMIN
10003	ADMIN
10004	ADMIN
10005	ADMIN
10006	ADMIN
10007	ADMIN
10008	ADMIN
10009	ADMIN
10010	ADMIN
10011	ADMIN
10012	ADMIN
10000	CUSTOMER
\.


      3021.dat                                                                                            0000600 0004000 0002000 00000001207 13661303355 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10011	johannes11	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	10001	2	t
10003	string	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	10003	0	t
8	string134	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	7	0	t
10	fita	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	9	0	t
12	fitaa	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	11	0	t
10012	teddy	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	10002	1	t
6	string1	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	5	0	t
14	muluken	$2a$10$altaOMOo.C74LHMLMqE8BOIKo7mybi6kSPI1MskAE/Inubb2r7HwG	13	1	t
\.


                                                                                                                                                                                                                                                                                                                                                                                         3019.dat                                                                                            0000600 0004000 0002000 00000000471 13661303355 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10001	yohannes	begashaw	johannes.neg@yahoo.com	+251910576650
10002	Tewodros	Abebe	ted@gmail.com	+25923707911
10003	string	string	string	string
5	string	string	string	string
7	string	string	string	string
9	fita	string	string	string
11	fita	string	string	string
13	Muluken	Solomon	mule@gmail.com	+251939657770
\.


                                                                                                                                                                                                       3020.dat                                                                                            0000600 0004000 0002000 00000001004 13661303355 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	 systemUsers 	 for system users 	
2	 customers 	 for other customers 	
1	 systemUsers 	 for system users 	
2	 customers 	 for other customers 	
1	 systemUsers 	 for system users 	
2	 customers 	 for other customers 	
1	 systemUsers 	 for system users 	
2	 customers 	 for other customers 	
1	 systemUsers 	 for system users 	
2	 customers 	 for other customers 	
1	 systemUsers 	 for system users 	
2	 customers 	 for other customers 	
1	 systemUsers 	 for system users 	
2	 customers 	 for other customers 	
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000024222 13661303355 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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

ALTER TABLE ONLY public.companysetting DROP CONSTRAINT companysetting_un;
DROP TABLE public.usersgroup;
DROP SEQUENCE public.usersdata_id_seq;
DROP TABLE public.usersdata;
DROP TABLE public.users;
DROP SEQUENCE public.users_id_seq;
DROP TABLE public.user_authorities;
DROP SEQUENCE public.passwordhistory_id_seq;
DROP TABLE public.passwordhistory;
DROP TABLE public.interactiondata;
DROP TABLE public.failedloginatempt;
DROP SEQUENCE public.failed_login_seq;
DROP TABLE public.companysetting;
DROP SEQUENCE public.companysetting_id_seq;
DROP EXTENSION pg_trgm;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: companysetting_id_seq; Type: SEQUENCE; Schema: public; Owner: john11
--

CREATE SEQUENCE public.companysetting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companysetting_id_seq OWNER TO john11;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: companysetting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companysetting (
    id smallint DEFAULT nextval('public.companysetting_id_seq'::regclass) NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    value character varying(255) DEFAULT NULL::character varying,
    additionalvalue character varying(255) DEFAULT NULL::character varying,
    displayname character varying(255) DEFAULT NULL::character varying,
    additionalvalue2 character varying(255) DEFAULT NULL::character varying,
    updatedon time without time zone,
    registeredon time without time zone
);


ALTER TABLE public.companysetting OWNER TO postgres;

--
-- Name: failed_login_seq; Type: SEQUENCE; Schema: public; Owner: john11
--

CREATE SEQUENCE public.failed_login_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_login_seq OWNER TO john11;

--
-- Name: failedloginatempt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failedloginatempt (
    id smallint DEFAULT nextval('public.failed_login_seq'::regclass),
    userid smallint,
    hourlyatempt smallint,
    dailyatempt smallint,
    totalatempt smallint,
    status boolean
);


ALTER TABLE public.failedloginatempt OWNER TO postgres;

--
-- Name: interactiondata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interactiondata (
    methodname character varying(1) DEFAULT NULL::character varying,
    remark character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    lastupdatedon character varying(1) DEFAULT NULL::character varying,
    id character varying(1) DEFAULT NULL::character varying,
    requestdata character varying(1) DEFAULT NULL::character varying,
    responsedata character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public.interactiondata OWNER TO postgres;

--
-- Name: passwordhistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.passwordhistory (
    id smallint,
    initialpassword character varying(60) DEFAULT NULL::character varying,
    userid smallint,
    ispasswordchanged boolean
);


ALTER TABLE public.passwordhistory OWNER TO postgres;

--
-- Name: passwordhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: john11
--

CREATE SEQUENCE public.passwordhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.passwordhistory_id_seq OWNER TO john11;

--
-- Name: user_authorities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_authorities (
    user_id smallint,
    authority character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.user_authorities OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: john11
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO john11;

--
-- Name: users; Type: TABLE; Schema: public; Owner: jon
--

CREATE TABLE public.users (
    id smallint DEFAULT nextval('public.users_id_seq'::regclass),
    username character varying(255) DEFAULT NULL::character varying,
    password character varying(255) DEFAULT NULL::character varying,
    userdata smallint,
    usergroup smallint,
    active boolean
);


ALTER TABLE public.users OWNER TO jon;

--
-- Name: usersdata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usersdata (
    id smallint DEFAULT nextval('public.users_id_seq'::regclass),
    firstname character varying(255) DEFAULT NULL::character varying,
    lastname character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    phonenumber character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.usersdata OWNER TO postgres;

--
-- Name: usersdata_id_seq; Type: SEQUENCE; Schema: public; Owner: john11
--

CREATE SEQUENCE public.usersdata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usersdata_id_seq OWNER TO john11;

--
-- Name: usersgroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usersgroup (
    id smallint,
    groupname character varying(13) DEFAULT NULL::character varying,
    groupdescription character varying(21) DEFAULT NULL::character varying,
    groupcode character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public.usersgroup OWNER TO postgres;

--
-- Data for Name: companysetting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.companysetting (id, name, value, additionalvalue, displayname, additionalvalue2, updatedon, registeredon) FROM stdin;
\.
COPY public.companysetting (id, name, value, additionalvalue, displayname, additionalvalue2, updatedon, registeredon) FROM '$$PATH$$/3014.dat';

--
-- Data for Name: failedloginatempt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failedloginatempt (id, userid, hourlyatempt, dailyatempt, totalatempt, status) FROM stdin;
\.
COPY public.failedloginatempt (id, userid, hourlyatempt, dailyatempt, totalatempt, status) FROM '$$PATH$$/3015.dat';

--
-- Data for Name: interactiondata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interactiondata (methodname, remark, status, lastupdatedon, id, requestdata, responsedata) FROM stdin;
\.
COPY public.interactiondata (methodname, remark, status, lastupdatedon, id, requestdata, responsedata) FROM '$$PATH$$/3016.dat';

--
-- Data for Name: passwordhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.passwordhistory (id, initialpassword, userid, ispasswordchanged) FROM stdin;
\.
COPY public.passwordhistory (id, initialpassword, userid, ispasswordchanged) FROM '$$PATH$$/3017.dat';

--
-- Data for Name: user_authorities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_authorities (user_id, authority) FROM stdin;
\.
COPY public.user_authorities (user_id, authority) FROM '$$PATH$$/3018.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: jon
--

COPY public.users (id, username, password, userdata, usergroup, active) FROM stdin;
\.
COPY public.users (id, username, password, userdata, usergroup, active) FROM '$$PATH$$/3021.dat';

--
-- Data for Name: usersdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usersdata (id, firstname, lastname, email, phonenumber) FROM stdin;
\.
COPY public.usersdata (id, firstname, lastname, email, phonenumber) FROM '$$PATH$$/3019.dat';

--
-- Data for Name: usersgroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usersgroup (id, groupname, groupdescription, groupcode) FROM stdin;
\.
COPY public.usersgroup (id, groupname, groupdescription, groupcode) FROM '$$PATH$$/3020.dat';

--
-- Name: companysetting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: john11
--

SELECT pg_catalog.setval('public.companysetting_id_seq', 8, true);


--
-- Name: failed_login_seq; Type: SEQUENCE SET; Schema: public; Owner: john11
--

SELECT pg_catalog.setval('public.failed_login_seq', 1, true);


--
-- Name: passwordhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: john11
--

SELECT pg_catalog.setval('public.passwordhistory_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: john11
--

SELECT pg_catalog.setval('public.users_id_seq', 14, true);


--
-- Name: usersdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: john11
--

SELECT pg_catalog.setval('public.usersdata_id_seq', 1, false);


--
-- Name: companysetting companysetting_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companysetting
    ADD CONSTRAINT companysetting_un UNIQUE (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              