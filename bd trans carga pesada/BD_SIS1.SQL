--
-- PostgreSQL database cluster dump
--

-- Started on 2016-10-12 19:04:14

\connect postgres

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE "postgres";
ALTER ROLE "postgres" WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION PASSWORD 'md51b04cda1907bcf46065ee9b8a8b62c81';






--
-- Database creation
--

CREATE DATABASE "DB_TRANSPORTE" WITH TEMPLATE = template0 OWNER = "postgres";
REVOKE ALL ON DATABASE "template1" FROM PUBLIC;
REVOKE ALL ON DATABASE "template1" FROM "postgres";
GRANT ALL ON DATABASE "template1" TO "postgres";
GRANT CONNECT ON DATABASE "template1" TO PUBLIC;


\connect "DB_TRANSPORTE"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.23
-- Dumped by pg_dump version 9.1.23
-- Started on 2016-10-12 19:04:15

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1903 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


--
-- TOC entry 1 (class 3079 OID 11639)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";


--
-- TOC entry 1905 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION "plpgsql"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';


SET search_path = "public", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 165 (class 1259 OID 16452)
-- Dependencies: 6
-- Name: T_CARGOS_ROLES; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "T_CARGOS_ROLES" (
    "IDT_CARGOS_ROLES_PK" integer NOT NULL,
    "CRO_DESCRIPT" character(15) NOT NULL,
    "CRO_FECHA_CRE" "date" NOT NULL,
    "CRO_FECHA_EDITA" "date" NOT NULL,
    "CRO_FECHA_ANULA" "date" NOT NULL,
    "CRO_USER_CREA" integer NOT NULL,
    "CRO_USER_EDITA" integer NOT NULL,
    "CRO_USER_ANULA" integer NOT NULL
);


ALTER TABLE "public"."T_CARGOS_ROLES" OWNER TO "postgres";

--
-- TOC entry 164 (class 1259 OID 16450)
-- Dependencies: 6 165
-- Name: T_CARGOS_IDT_CARGOS_PK_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "T_CARGOS_IDT_CARGOS_PK_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."T_CARGOS_IDT_CARGOS_PK_seq" OWNER TO "postgres";

--
-- TOC entry 1906 (class 0 OID 0)
-- Dependencies: 164
-- Name: T_CARGOS_IDT_CARGOS_PK_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "T_CARGOS_IDT_CARGOS_PK_seq" OWNED BY "T_CARGOS_ROLES"."IDT_CARGOS_ROLES_PK";


--
-- TOC entry 169 (class 1259 OID 16475)
-- Dependencies: 6
-- Name: T_ESTADO_USER; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "T_ESTADO_USER" (
    "IDT_ESTADO_USER_PK" integer NOT NULL,
    "ESU_DETALLE" character varying(20) NOT NULL
);


ALTER TABLE "public"."T_ESTADO_USER" OWNER TO "postgres";

--
-- TOC entry 168 (class 1259 OID 16473)
-- Dependencies: 169 6
-- Name: T_ESTADO_USER_IDT_ESTADO_USER_PK_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "T_ESTADO_USER_IDT_ESTADO_USER_PK_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."T_ESTADO_USER_IDT_ESTADO_USER_PK_seq" OWNER TO "postgres";

--
-- TOC entry 1907 (class 0 OID 0)
-- Dependencies: 168
-- Name: T_ESTADO_USER_IDT_ESTADO_USER_PK_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "T_ESTADO_USER_IDT_ESTADO_USER_PK_seq" OWNED BY "T_ESTADO_USER"."IDT_ESTADO_USER_PK";


--
-- TOC entry 171 (class 1259 OID 16496)
-- Dependencies: 6
-- Name: T_INGRESO_SIS; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "T_INGRESO_SIS" (
    "IDT_INGRESO_SIS_PK" integer NOT NULL,
    "IGS_MSN_OBS" character(5000) NOT NULL,
    "IGS_USER_FK" integer NOT NULL,
    "IGS_FECHA" "date" NOT NULL,
    "IGS_IP_DIRECCION" character(2000) NOT NULL
);


ALTER TABLE "public"."T_INGRESO_SIS" OWNER TO "postgres";

--
-- TOC entry 1908 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN "T_INGRESO_SIS"."IGS_MSN_OBS"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN "T_INGRESO_SIS"."IGS_MSN_OBS" IS 'ACTIVIDAD O CAMBIO REALIZADO POR EL USUARIO';


--
-- TOC entry 170 (class 1259 OID 16494)
-- Dependencies: 171 6
-- Name: T_INGRESO_SIS_IDT_INGRESO_SIS_PK_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "T_INGRESO_SIS_IDT_INGRESO_SIS_PK_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."T_INGRESO_SIS_IDT_INGRESO_SIS_PK_seq" OWNER TO "postgres";

--
-- TOC entry 1909 (class 0 OID 0)
-- Dependencies: 170
-- Name: T_INGRESO_SIS_IDT_INGRESO_SIS_PK_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "T_INGRESO_SIS_IDT_INGRESO_SIS_PK_seq" OWNED BY "T_INGRESO_SIS"."IDT_INGRESO_SIS_PK";


--
-- TOC entry 167 (class 1259 OID 16467)
-- Dependencies: 6
-- Name: T_PRIVILEGES; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "T_PRIVILEGES" (
    "IDT_PRIVILEGES_PK" integer NOT NULL,
    "PRI_DESCRIPT" character(20) NOT NULL,
    "PRI_NIVEL" numeric(10,2) NOT NULL,
    "PRI_FECHA_CREA" "date" NOT NULL,
    "PRI_FECHA_EDITA" "date" NOT NULL,
    "PRI_FECHA_ANULA" "date" NOT NULL,
    "PRI_USER_CREA" integer NOT NULL,
    "PRI_USER_EDITA" integer NOT NULL,
    "PRI_USER_ANULA" integer NOT NULL
);


ALTER TABLE "public"."T_PRIVILEGES" OWNER TO "postgres";

--
-- TOC entry 166 (class 1259 OID 16465)
-- Dependencies: 6 167
-- Name: T_PRIVILEGES_IDT_PRIVILEGES_PK_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "T_PRIVILEGES_IDT_PRIVILEGES_PK_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."T_PRIVILEGES_IDT_PRIVILEGES_PK_seq" OWNER TO "postgres";

--
-- TOC entry 1910 (class 0 OID 0)
-- Dependencies: 166
-- Name: T_PRIVILEGES_IDT_PRIVILEGES_PK_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "T_PRIVILEGES_IDT_PRIVILEGES_PK_seq" OWNED BY "T_PRIVILEGES"."IDT_PRIVILEGES_PK";


--
-- TOC entry 163 (class 1259 OID 16443)
-- Dependencies: 6
-- Name: T_USER; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "T_USER" (
    "IDT_USER_PK" integer NOT NULL,
    "US_USUARIO" character(10) NOT NULL,
    "US_CLAVE" character(5000) NOT NULL,
    "US_FECHA_CRE" "date" NOT NULL,
    "US_FEHCA_EDITA" "date" NOT NULL,
    "US_FECHA_ANULA" "date" NOT NULL,
    "US_USER_CREA" integer NOT NULL,
    "US_USER_EDITA" integer NOT NULL,
    "US_USER_ANULA" integer NOT NULL,
    "US_CARGO_FK" integer NOT NULL,
    "US_PRIVILEG_FK" integer NOT NULL,
    "US_ESTADO_FK" integer NOT NULL
);


ALTER TABLE "public"."T_USER" OWNER TO "postgres";

--
-- TOC entry 162 (class 1259 OID 16441)
-- Dependencies: 163 6
-- Name: T_USER_IDT_USRE_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "T_USER_IDT_USRE_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."T_USER_IDT_USRE_seq" OWNER TO "postgres";

--
-- TOC entry 1911 (class 0 OID 0)
-- Dependencies: 162
-- Name: T_USER_IDT_USRE_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "T_USER_IDT_USRE_seq" OWNED BY "T_USER"."IDT_USER_PK";


--
-- TOC entry 1774 (class 2604 OID 16455)
-- Dependencies: 164 165 165
-- Name: IDT_CARGOS_ROLES_PK; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "T_CARGOS_ROLES" ALTER COLUMN "IDT_CARGOS_ROLES_PK" SET DEFAULT "nextval"('"T_CARGOS_IDT_CARGOS_PK_seq"'::"regclass");


--
-- TOC entry 1776 (class 2604 OID 16478)
-- Dependencies: 168 169 169
-- Name: IDT_ESTADO_USER_PK; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "T_ESTADO_USER" ALTER COLUMN "IDT_ESTADO_USER_PK" SET DEFAULT "nextval"('"T_ESTADO_USER_IDT_ESTADO_USER_PK_seq"'::"regclass");


--
-- TOC entry 1777 (class 2604 OID 16499)
-- Dependencies: 171 170 171
-- Name: IDT_INGRESO_SIS_PK; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "T_INGRESO_SIS" ALTER COLUMN "IDT_INGRESO_SIS_PK" SET DEFAULT "nextval"('"T_INGRESO_SIS_IDT_INGRESO_SIS_PK_seq"'::"regclass");


--
-- TOC entry 1775 (class 2604 OID 16470)
-- Dependencies: 167 166 167
-- Name: IDT_PRIVILEGES_PK; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "T_PRIVILEGES" ALTER COLUMN "IDT_PRIVILEGES_PK" SET DEFAULT "nextval"('"T_PRIVILEGES_IDT_PRIVILEGES_PK_seq"'::"regclass");


--
-- TOC entry 1773 (class 2604 OID 16446)
-- Dependencies: 163 162 163
-- Name: IDT_USER_PK; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "T_USER" ALTER COLUMN "IDT_USER_PK" SET DEFAULT "nextval"('"T_USER_IDT_USRE_seq"'::"regclass");


--
-- TOC entry 1912 (class 0 OID 0)
-- Dependencies: 164
-- Name: T_CARGOS_IDT_CARGOS_PK_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"T_CARGOS_IDT_CARGOS_PK_seq"', 1, false);


--
-- TOC entry 1891 (class 0 OID 16452)
-- Dependencies: 165 1898
-- Data for Name: T_CARGOS_ROLES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "T_CARGOS_ROLES" ("IDT_CARGOS_ROLES_PK", "CRO_DESCRIPT", "CRO_FECHA_CRE", "CRO_FECHA_EDITA", "CRO_FECHA_ANULA", "CRO_USER_CREA", "CRO_USER_EDITA", "CRO_USER_ANULA") FROM stdin;
\.


--
-- TOC entry 1895 (class 0 OID 16475)
-- Dependencies: 169 1898
-- Data for Name: T_ESTADO_USER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "T_ESTADO_USER" ("IDT_ESTADO_USER_PK", "ESU_DETALLE") FROM stdin;
\.


--
-- TOC entry 1913 (class 0 OID 0)
-- Dependencies: 168
-- Name: T_ESTADO_USER_IDT_ESTADO_USER_PK_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"T_ESTADO_USER_IDT_ESTADO_USER_PK_seq"', 1, false);


--
-- TOC entry 1897 (class 0 OID 16496)
-- Dependencies: 171 1898
-- Data for Name: T_INGRESO_SIS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "T_INGRESO_SIS" ("IDT_INGRESO_SIS_PK", "IGS_MSN_OBS", "IGS_USER_FK", "IGS_FECHA", "IGS_IP_DIRECCION") FROM stdin;
\.


--
-- TOC entry 1914 (class 0 OID 0)
-- Dependencies: 170
-- Name: T_INGRESO_SIS_IDT_INGRESO_SIS_PK_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"T_INGRESO_SIS_IDT_INGRESO_SIS_PK_seq"', 1, false);


--
-- TOC entry 1893 (class 0 OID 16467)
-- Dependencies: 167 1898
-- Data for Name: T_PRIVILEGES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "T_PRIVILEGES" ("IDT_PRIVILEGES_PK", "PRI_DESCRIPT", "PRI_NIVEL", "PRI_FECHA_CREA", "PRI_FECHA_EDITA", "PRI_FECHA_ANULA", "PRI_USER_CREA", "PRI_USER_EDITA", "PRI_USER_ANULA") FROM stdin;
\.


--
-- TOC entry 1915 (class 0 OID 0)
-- Dependencies: 166
-- Name: T_PRIVILEGES_IDT_PRIVILEGES_PK_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"T_PRIVILEGES_IDT_PRIVILEGES_PK_seq"', 1, false);


--
-- TOC entry 1889 (class 0 OID 16443)
-- Dependencies: 163 1898
-- Data for Name: T_USER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "T_USER" ("IDT_USER_PK", "US_USUARIO", "US_CLAVE", "US_FECHA_CRE", "US_FEHCA_EDITA", "US_FECHA_ANULA", "US_USER_CREA", "US_USER_EDITA", "US_USER_ANULA", "US_CARGO_FK", "US_PRIVILEG_FK", "US_ESTADO_FK") FROM stdin;
\.


--
-- TOC entry 1916 (class 0 OID 0)
-- Dependencies: 162
-- Name: T_USER_IDT_USRE_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"T_USER_IDT_USRE_seq"', 1, false);


--
-- TOC entry 1781 (class 2606 OID 16457)
-- Dependencies: 165 165 1899
-- Name: IDT_CARGO; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "T_CARGOS_ROLES"
    ADD CONSTRAINT "IDT_CARGO" PRIMARY KEY ("IDT_CARGOS_ROLES_PK");


--
-- TOC entry 1783 (class 2606 OID 16472)
-- Dependencies: 167 167 1899
-- Name: IDT_PRIVILEGES_PK; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "T_PRIVILEGES"
    ADD CONSTRAINT "IDT_PRIVILEGES_PK" PRIMARY KEY ("IDT_PRIVILEGES_PK");


--
-- TOC entry 1779 (class 2606 OID 16459)
-- Dependencies: 163 163 1899
-- Name: IDT_USER_PK; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "T_USER"
    ADD CONSTRAINT "IDT_USER_PK" PRIMARY KEY ("IDT_USER_PK");


--
-- TOC entry 1784 (class 2606 OID 16460)
-- Dependencies: 165 163 1780 1899
-- Name: US_CARGO_FK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "T_USER"
    ADD CONSTRAINT "US_CARGO_FK" FOREIGN KEY ("US_CARGO_FK") REFERENCES "T_CARGOS_ROLES"("IDT_CARGOS_ROLES_PK");


--
-- TOC entry 1786 (class 2606 OID 16489)
-- Dependencies: 163 1782 167 1899
-- Name: US_PRIVELEGES_FK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "T_USER"
    ADD CONSTRAINT "US_PRIVELEGES_FK" FOREIGN KEY ("US_ESTADO_FK") REFERENCES "T_PRIVILEGES"("IDT_PRIVILEGES_PK");


--
-- TOC entry 1785 (class 2606 OID 16484)
-- Dependencies: 167 1782 163 1899
-- Name: US_PRIVILEGES_FK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "T_USER"
    ADD CONSTRAINT "US_PRIVILEGES_FK" FOREIGN KEY ("US_CARGO_FK") REFERENCES "T_PRIVILEGES"("IDT_PRIVILEGES_PK");


--
-- TOC entry 1904 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA "public" FROM PUBLIC;
REVOKE ALL ON SCHEMA "public" FROM "postgres";
GRANT ALL ON SCHEMA "public" TO "postgres";
GRANT ALL ON SCHEMA "public" TO PUBLIC;


-- Completed on 2016-10-12 19:04:15

--
-- PostgreSQL database dump complete
--

\connect "postgres"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.23
-- Dumped by pg_dump version 9.1.23
-- Started on 2016-10-12 19:04:15

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1867 (class 1262 OID 11913)
-- Dependencies: 1866
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE "postgres" IS 'default administrative connection database';


--
-- TOC entry 1868 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


--
-- TOC entry 2 (class 3079 OID 11639)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";


--
-- TOC entry 1870 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "plpgsql"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "adminpack" WITH SCHEMA "pg_catalog";


--
-- TOC entry 1871 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION "adminpack"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "adminpack" IS 'administrative functions for PostgreSQL';


SET search_path = "public", pg_catalog;

--
-- TOC entry 177 (class 1255 OID 16423)
-- Dependencies: 497 7
-- Name: f_user(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION "f_user"("ids" integer) RETURNS "void"
    LANGUAGE "plpgsql"
    AS $$
declare red char(10);
begin
 red:=(select c_user  from t_user where idt_user = ids) ;
 -- select red;
 -- void := red;
 -- return red;
end
$$;


ALTER FUNCTION "public"."f_user"("ids" integer) OWNER TO "postgres";

--
-- TOC entry 176 (class 1255 OID 16424)
-- Dependencies: 497 7
-- Name: f_user1(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION "f_user1"("ids" integer) RETURNS character varying
    LANGUAGE "plpgsql"
    AS $$
declare red char(10);
begin
 red:=(select c_user  from t_user where idt_user = ids) ;
 -- select red;
 -- void := red;
 return red;
end
$$;


ALTER FUNCTION "public"."f_user1"("ids" integer) OWNER TO "postgres";

--
-- TOC entry 180 (class 1255 OID 16436)
-- Dependencies: 7 497
-- Name: inseruser(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION "inseruser"("us" character varying, "clave" character varying) RETURNS character varying
    LANGUAGE "plpgsql"
    AS $$
declare res varchar(1000);
begin
 insert into t_user (c_user,c_clave)values(us, clave);
 select  *  from t_user where idt_user = 6;
 -- return res;
end
$$;


ALTER FUNCTION "public"."inseruser"("us" character varying, "clave" character varying) OWNER TO "postgres";

--
-- TOC entry 178 (class 1255 OID 16432)
-- Dependencies: 7 497
-- Name: rellenar_datos(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION "rellenar_datos"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
NEW.cuadrado := power(2,2);

RETURN NEW;
END
$$;


ALTER FUNCTION "public"."rellenar_datos"() OWNER TO "postgres";

--
-- TOC entry 182 (class 1255 OID 16438)
-- Dependencies: 497 7
-- Name: sp_inseruser(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION "sp_inseruser"("tamano" integer) RETURNS character varying
    LANGUAGE "plpgsql"
    AS $$
declare res varchar(1000);
declare uno integer ;
declare dos integer;
declare matriz integer[][];
declare i integer;
begin
-- insert into t_user (c_user,c_clave)values(us, clave);
for i in 1..tamano loop
	matriz[i][1] = 1;
	matriz[i][2] = 2;
end loop;
 uno := 1;
 dos := 2;
 return 0;
end
$$;


ALTER FUNCTION "public"."sp_inseruser"("tamano" integer) OWNER TO "postgres";

--
-- TOC entry 181 (class 1255 OID 16437)
-- Dependencies: 7 497
-- Name: sp_inseruser(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION "sp_inseruser"("us" character varying, "clave" character varying) RETURNS character varying
    LANGUAGE "plpgsql"
    AS $$
declare res varchar(1000);
declare uno integer ;
declare dos integer;
declare matriz integer[][];
declare i integer;
begin
-- insert into t_user (c_user,c_clave)values(us, clave);
for i in 1..tamano loop
	matriz[i][1] = 1;
	matriz[i][2] = 2;
end loop;
 uno := 1;
 dos := 2;
 return 0;
end
$$;


ALTER FUNCTION "public"."sp_inseruser"("us" character varying, "clave" character varying) OWNER TO "postgres";

--
-- TOC entry 179 (class 1255 OID 16439)
-- Dependencies: 7 497
-- Name: sp_inseruser1(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION "sp_inseruser1"("tamano" integer) RETURNS integer
    LANGUAGE "plpgsql"
    AS $$
declare matriz integer[][];
begin

	matriz[1][1] := 1;
	matriz[1][2] := 2;

	matriz[2][1] := 1;
	matriz[2][2] := 2;
	
 return 0;
end
$$;


ALTER FUNCTION "public"."sp_inseruser1"("tamano" integer) OWNER TO "postgres";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 164 (class 1259 OID 16414)
-- Dependencies: 7
-- Name: t_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "t_user" (
    "idt_user" integer NOT NULL,
    "c_user" character(10) NOT NULL,
    "c_clave" character(2000) NOT NULL
);


ALTER TABLE "public"."t_user" OWNER TO "postgres";

--
-- TOC entry 163 (class 1259 OID 16412)
-- Dependencies: 7 164
-- Name: t_user_idt_user_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "t_user_idt_user_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."t_user_idt_user_seq" OWNER TO "postgres";

--
-- TOC entry 1872 (class 0 OID 0)
-- Dependencies: 163
-- Name: t_user_idt_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "t_user_idt_user_seq" OWNED BY "t_user"."idt_user";


--
-- TOC entry 1756 (class 2604 OID 16417)
-- Dependencies: 164 163 164
-- Name: idt_user; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "t_user" ALTER COLUMN "idt_user" SET DEFAULT "nextval"('"t_user_idt_user_seq"'::"regclass");


--
-- TOC entry 1861 (class 0 OID 16414)
-- Dependencies: 164 1862
-- Data for Name: t_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "t_user" ("idt_user", "c_user", "c_clave") FROM stdin;
1	go10      	cuastu                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
2	admin     	admin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
3	cuastu    	cuastu                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
4	sandy     	sandy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
6	sandy     	sandy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
7	sandy     	sandy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
8	sandy     	sandy                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
\.


--
-- TOC entry 1873 (class 0 OID 0)
-- Dependencies: 163
-- Name: t_user_idt_user_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"t_user_idt_user_seq"', 9, true);


--
-- TOC entry 1758 (class 2606 OID 16422)
-- Dependencies: 164 164 1863
-- Name: idt_user; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "t_user"
    ADD CONSTRAINT "idt_user" PRIMARY KEY ("idt_user");


--
-- TOC entry 1869 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA "public" FROM PUBLIC;
REVOKE ALL ON SCHEMA "public" FROM "postgres";
GRANT ALL ON SCHEMA "public" TO "postgres";
GRANT ALL ON SCHEMA "public" TO PUBLIC;


-- Completed on 2016-10-12 19:04:16

--
-- PostgreSQL database dump complete
--

\connect "template1"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.23
-- Dumped by pg_dump version 9.1.23
-- Started on 2016-10-12 19:04:16

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1847 (class 1262 OID 1)
-- Dependencies: 1846
-- Name: template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE "template1" IS 'default template for new databases';


--
-- TOC entry 1848 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


--
-- TOC entry 1 (class 3079 OID 11639)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";


--
-- TOC entry 1850 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION "plpgsql"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';


--
-- TOC entry 1849 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA "public" FROM PUBLIC;
REVOKE ALL ON SCHEMA "public" FROM "postgres";
GRANT ALL ON SCHEMA "public" TO "postgres";
GRANT ALL ON SCHEMA "public" TO PUBLIC;


-- Completed on 2016-10-12 19:04:16

--
-- PostgreSQL database dump complete
--

-- Completed on 2016-10-12 19:04:16

--
-- PostgreSQL database cluster dump complete
--

