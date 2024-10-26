--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO sangurucho_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO sangurucho_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO sangurucho_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO sangurucho_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO sangurucho_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO sangurucho_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO sangurucho_user;

--
-- Name: productos_combo; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.productos_combo (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    precio_total numeric(10,2) NOT NULL,
    descripcion text,
    imagen character varying(100)
);


ALTER TABLE public.productos_combo OWNER TO sangurucho_user;

--
-- Name: productos_combo_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.productos_combo ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.productos_combo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: productos_orden; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.productos_orden (
    id bigint NOT NULL,
    precio_total numeric(10,2) NOT NULL,
    usuario_id bigint NOT NULL,
    detalle text NOT NULL,
    completada boolean NOT NULL
);


ALTER TABLE public.productos_orden OWNER TO sangurucho_user;

--
-- Name: productos_orden_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.productos_orden ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.productos_orden_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: productos_post; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.productos_post (
    id bigint NOT NULL,
    autor_id bigint NOT NULL
);


ALTER TABLE public.productos_post OWNER TO sangurucho_user;

--
-- Name: productos_post_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.productos_post ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.productos_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: productos_producto; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.productos_producto (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    precio numeric(10,2) NOT NULL,
    imagen character varying(100)
);


ALTER TABLE public.productos_producto OWNER TO sangurucho_user;

--
-- Name: productos_producto_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.productos_producto ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.productos_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: productos_usuario; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.productos_usuario (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    is_verified boolean NOT NULL
);


ALTER TABLE public.productos_usuario OWNER TO sangurucho_user;

--
-- Name: productos_usuario_groups; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.productos_usuario_groups (
    id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.productos_usuario_groups OWNER TO sangurucho_user;

--
-- Name: productos_usuario_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.productos_usuario_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.productos_usuario_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: productos_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.productos_usuario ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.productos_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: productos_usuario_user_permissions; Type: TABLE; Schema: public; Owner: sangurucho_user
--

CREATE TABLE public.productos_usuario_user_permissions (
    id bigint NOT NULL,
    usuario_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.productos_usuario_user_permissions OWNER TO sangurucho_user;

--
-- Name: productos_usuario_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sangurucho_user
--

ALTER TABLE public.productos_usuario_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.productos_usuario_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_usuario
22	Can change user	6	change_usuario
23	Can delete user	6	delete_usuario
24	Can view user	6	view_usuario
25	Can add producto	7	add_producto
26	Can change producto	7	change_producto
27	Can delete producto	7	delete_producto
28	Can view producto	7	view_producto
29	Can add post	8	add_post
30	Can change post	8	change_post
31	Can delete post	8	delete_post
32	Can view post	8	view_post
33	Can add combo	9	add_combo
34	Can change combo	9	change_combo
35	Can delete combo	9	delete_combo
36	Can view combo	9	view_combo
37	Can add orden	10	add_orden
38	Can change orden	10	change_orden
39	Can delete orden	10	delete_orden
40	Can view orden	10	view_orden
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2024-10-25 22:51:25.744953-03	1	Bebida 350cc CCU ($2000)	1	[{"added": {}}]	7	1
2	2024-10-25 22:52:47.947091-03	2	Completo Din├ímico ($1500)	1	[{"added": {}}]	7	1
3	2024-10-25 22:54:41.430094-03	3	Completo Italiano ($2000)	1	[{"added": {}}]	7	1
4	2024-10-25 22:55:57.577579-03	4	Chacarero ($4500)	1	[{"added": {}}]	7	1
5	2024-10-25 22:57:28.394064-03	5	Barros Lucos ($4000)	1	[{"added": {}}]	7	1
6	2024-10-26 08:06:49.493156-03	1	combo 1 ($3500.00)	1	[{"added": {}}]	9	1
7	2024-10-26 08:08:18.556308-03	2	combo2 ($6000.00)	1	[{"added": {}}]	9	1
8	2024-10-26 08:08:31.97952-03	2	combo 2 ($6000.00)	2	[{"changed": {"fields": ["Nombre"]}}]	9	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	productos	usuario
7	productos	producto
8	productos	post
9	productos	combo
10	productos	orden
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-10-25 20:32:54.477352-03
2	contenttypes	0002_remove_content_type_name	2024-10-25 20:32:54.497755-03
3	auth	0001_initial	2024-10-25 20:32:54.579108-03
4	auth	0002_alter_permission_name_max_length	2024-10-25 20:32:54.586903-03
5	auth	0003_alter_user_email_max_length	2024-10-25 20:32:54.595926-03
6	auth	0004_alter_user_username_opts	2024-10-25 20:32:54.606012-03
7	auth	0005_alter_user_last_login_null	2024-10-25 20:32:54.615873-03
8	auth	0006_require_contenttypes_0002	2024-10-25 20:32:54.619367-03
9	auth	0007_alter_validators_add_error_messages	2024-10-25 20:32:54.629578-03
10	auth	0008_alter_user_username_max_length	2024-10-25 20:32:54.63855-03
11	auth	0009_alter_user_last_name_max_length	2024-10-25 20:32:54.649196-03
12	auth	0010_alter_group_name_max_length	2024-10-25 20:32:54.664074-03
13	auth	0011_update_proxy_permissions	2024-10-25 20:32:54.672247-03
14	auth	0012_alter_user_first_name_max_length	2024-10-25 20:32:54.680662-03
15	productos	0001_initial	2024-10-25 20:32:54.813777-03
16	admin	0001_initial	2024-10-25 20:32:54.856692-03
17	admin	0002_logentry_remove_auto_add	2024-10-25 20:32:54.871734-03
18	admin	0003_logentry_add_action_flag_choices	2024-10-25 20:32:54.885346-03
19	sessions	0001_initial	2024-10-25 20:32:54.90798-03
20	productos	0002_producto_imagen_alter_producto_descripcion_orden	2024-10-25 21:37:47.297348-03
21	productos	0003_alter_combo_precio_total_alter_producto_precio	2024-10-25 23:03:10.194331-03
22	productos	0004_alter_combo_precio_total	2024-10-25 23:06:04.43409-03
23	productos	0005_alter_combo_precio_total	2024-10-25 23:06:57.117239-03
24	productos	0006_alter_combo_precio_total	2024-10-25 23:39:15.380436-03
25	productos	0007_remove_orden_combos_remove_orden_productos_and_more	2024-10-26 00:20:34.749077-03
26	productos	0008_alter_combo_productos	2024-10-26 00:31:09.815052-03
27	productos	0009_remove_combo_productos	2024-10-26 08:02:04.247251-03
28	productos	0010_combo_descripcion_combo_imagen	2024-10-26 08:04:54.194037-03
29	productos	0011_orden_combos_orden_productos	2024-10-26 08:23:20.345236-03
30	productos	0012_remove_orden_combos_remove_orden_completada_and_more	2024-10-26 09:38:45.602846-03
31	productos	0013_orden_completada_alter_orden_detalle_and_more	2024-10-26 09:56:54.539067-03
32	productos	0014_alter_orden_detalle_alter_orden_precio_total	2024-10-26 10:27:46.452339-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7qt6rfxdjjbcs1dxtdjwz9oa45lt3da9	.eJxVjMEOwiAQRP-FsyGlLSx49O43kF0WpGogKe3J-O9K0oNmbvPezEt43Lfs9xZXv7A4CyVOvx1heMTSAd-x3KoMtWzrQrIr8qBNXivH5-Vw_w4yttzXejJap4HcOFugBAZnsoyYjNVTZCQwLgCkQHZC-GY0KpBK4NCqgcX7A_FzOHI:1t4Wmg:cHoe-fSCQxdMdxYPy9Uj6L4aIviRG6skwJrs4t30l1k	2024-11-08 23:44:10.958934-03
\.


--
-- Data for Name: productos_combo; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.productos_combo (id, nombre, precio_total, descripcion, imagen) FROM stdin;
1	combo 1	3500.00	Bebida + Italiano	combos/combo1.jpg
2	combo 2	6000.00	Bebida + Chacarero	combos/combo2.jpg
\.


--
-- Data for Name: productos_orden; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.productos_orden (id, precio_total, usuario_id, detalle, completada) FROM stdin;
1	78000.00	1	Chacarero - $4500.00\n	t
2	21500.00	1	Completo Din├ímico, Completo Italiano, Bebida 350cc CCU, 	t
3	9500.00	1		t
7	4500.00	1	Chacarero, 	t
8	2000.00	1	Bebida 350cc CCU, 	t
9	3500.00	1	Completo Din├ímico, Bebida 350cc CCU, 	t
10	6500.00	1	Completo Din├ímico, Completo Din├ímico, Completo Din├ímico, Bebida 350cc CCU, 	t
\.


--
-- Data for Name: productos_post; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.productos_post (id, autor_id) FROM stdin;
\.


--
-- Data for Name: productos_producto; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.productos_producto (id, nombre, descripcion, precio, imagen) FROM stdin;
1	Bebida 350cc CCU	BEBIDA CCU BILZ LATA 350ml	2000.00	productos/BEBIDA_CCU_BILZ_LATA.jpg
2	Completo Din├ímico	INGREDIENTES:, VIANESA, TOMATE, PALTA, CHUCRUT, MAYO, KETCHUP, MOSTAZA	1500.00	productos/completo_dinamico.jpg
3	Completo Italiano	Completo Italiano Base de pan vianesa Tomate Palta Mayo	2000.00	productos/Completo_Italiano.jpg
4	Chacarero	Un sanguche tradicional y delicioso.	4500.00	productos/chacarrero.jpg
5	Barros Lucos	Receta de Barros luco, una versi├│n de este sandwich tradicional chileno, muy sencillo de hacer.	4000.00	productos/Barros-luco01.jpg
\.


--
-- Data for Name: productos_usuario; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.productos_usuario (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_verified) FROM stdin;
1	pbkdf2_sha256$390000$0yEQKaE7Y5UKveSHYNKRkp$TdYmpffsvG+YvyMIafFzkjnUwsDpEaFCAPwP4kt43mo=	2024-10-26 09:16:15.326319-03	t	admin			admin@admin.admin	t	t	2024-10-25 21:38:44.095394-03	f
2	pbkdf2_sha256$390000$ZkpG68m3SlnWF3qMZnwieZ$ZPDi6fcbeh5Dlsqj7+VWhzuUm1av3esCu//K5FYKqIQ=	2024-10-26 10:40:08.354813-03	f	julia			julia@julia.julia	f	t	2024-10-26 10:39:58.918284-03	f
\.


--
-- Data for Name: productos_usuario_groups; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.productos_usuario_groups (id, usuario_id, group_id) FROM stdin;
\.


--
-- Data for Name: productos_usuario_user_permissions; Type: TABLE DATA; Schema: public; Owner: sangurucho_user
--

COPY public.productos_usuario_user_permissions (id, usuario_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 8, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);


--
-- Name: productos_combo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.productos_combo_id_seq', 2, true);


--
-- Name: productos_orden_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.productos_orden_id_seq', 10, true);


--
-- Name: productos_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.productos_post_id_seq', 1, false);


--
-- Name: productos_producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.productos_producto_id_seq', 5, true);


--
-- Name: productos_usuario_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.productos_usuario_groups_id_seq', 1, false);


--
-- Name: productos_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.productos_usuario_id_seq', 2, true);


--
-- Name: productos_usuario_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sangurucho_user
--

SELECT pg_catalog.setval('public.productos_usuario_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: productos_combo productos_combo_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_combo
    ADD CONSTRAINT productos_combo_pkey PRIMARY KEY (id);


--
-- Name: productos_orden productos_orden_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_orden
    ADD CONSTRAINT productos_orden_pkey PRIMARY KEY (id);


--
-- Name: productos_post productos_post_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_post
    ADD CONSTRAINT productos_post_pkey PRIMARY KEY (id);


--
-- Name: productos_producto productos_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_producto
    ADD CONSTRAINT productos_producto_pkey PRIMARY KEY (id);


--
-- Name: productos_usuario_groups productos_usuario_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario_groups
    ADD CONSTRAINT productos_usuario_groups_pkey PRIMARY KEY (id);


--
-- Name: productos_usuario_groups productos_usuario_groups_usuario_id_group_id_50a362f9_uniq; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario_groups
    ADD CONSTRAINT productos_usuario_groups_usuario_id_group_id_50a362f9_uniq UNIQUE (usuario_id, group_id);


--
-- Name: productos_usuario productos_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario
    ADD CONSTRAINT productos_usuario_pkey PRIMARY KEY (id);


--
-- Name: productos_usuario_user_permissions productos_usuario_user_p_usuario_id_permission_id_4a48268b_uniq; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario_user_permissions
    ADD CONSTRAINT productos_usuario_user_p_usuario_id_permission_id_4a48268b_uniq UNIQUE (usuario_id, permission_id);


--
-- Name: productos_usuario_user_permissions productos_usuario_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario_user_permissions
    ADD CONSTRAINT productos_usuario_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: productos_usuario productos_usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario
    ADD CONSTRAINT productos_usuario_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: productos_orden_usuario_id_658ac5d1; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX productos_orden_usuario_id_658ac5d1 ON public.productos_orden USING btree (usuario_id);


--
-- Name: productos_post_autor_id_0869515c; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX productos_post_autor_id_0869515c ON public.productos_post USING btree (autor_id);


--
-- Name: productos_usuario_groups_group_id_ab7742d3; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX productos_usuario_groups_group_id_ab7742d3 ON public.productos_usuario_groups USING btree (group_id);


--
-- Name: productos_usuario_groups_usuario_id_cffb7994; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX productos_usuario_groups_usuario_id_cffb7994 ON public.productos_usuario_groups USING btree (usuario_id);


--
-- Name: productos_usuario_user_permissions_permission_id_86ca3844; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX productos_usuario_user_permissions_permission_id_86ca3844 ON public.productos_usuario_user_permissions USING btree (permission_id);


--
-- Name: productos_usuario_user_permissions_usuario_id_7904bdf6; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX productos_usuario_user_permissions_usuario_id_7904bdf6 ON public.productos_usuario_user_permissions USING btree (usuario_id);


--
-- Name: productos_usuario_username_6b51b07a_like; Type: INDEX; Schema: public; Owner: sangurucho_user
--

CREATE INDEX productos_usuario_username_6b51b07a_like ON public.productos_usuario USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_productos_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_productos_usuario_id FOREIGN KEY (user_id) REFERENCES public.productos_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: productos_orden productos_orden_usuario_id_658ac5d1_fk_productos_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_orden
    ADD CONSTRAINT productos_orden_usuario_id_658ac5d1_fk_productos_usuario_id FOREIGN KEY (usuario_id) REFERENCES public.productos_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: productos_post productos_post_autor_id_0869515c_fk_productos_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_post
    ADD CONSTRAINT productos_post_autor_id_0869515c_fk_productos_usuario_id FOREIGN KEY (autor_id) REFERENCES public.productos_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: productos_usuario_groups productos_usuario_gr_usuario_id_cffb7994_fk_productos; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario_groups
    ADD CONSTRAINT productos_usuario_gr_usuario_id_cffb7994_fk_productos FOREIGN KEY (usuario_id) REFERENCES public.productos_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: productos_usuario_groups productos_usuario_groups_group_id_ab7742d3_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario_groups
    ADD CONSTRAINT productos_usuario_groups_group_id_ab7742d3_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: productos_usuario_user_permissions productos_usuario_us_permission_id_86ca3844_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario_user_permissions
    ADD CONSTRAINT productos_usuario_us_permission_id_86ca3844_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: productos_usuario_user_permissions productos_usuario_us_usuario_id_7904bdf6_fk_productos; Type: FK CONSTRAINT; Schema: public; Owner: sangurucho_user
--

ALTER TABLE ONLY public.productos_usuario_user_permissions
    ADD CONSTRAINT productos_usuario_us_usuario_id_7904bdf6_fk_productos FOREIGN KEY (usuario_id) REFERENCES public.productos_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

