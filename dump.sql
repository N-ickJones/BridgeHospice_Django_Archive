--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--





--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md532e12f215ba27cb750c9e093ce4b5127';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.3 (Debian 12.3-1.pgdg100+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.3 (Debian 12.3-1.pgdg100+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: background_task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.background_task (
    id integer NOT NULL,
    task_name character varying(190) NOT NULL,
    task_params text NOT NULL,
    task_hash character varying(40) NOT NULL,
    verbose_name character varying(255),
    priority integer NOT NULL,
    run_at timestamp with time zone NOT NULL,
    repeat bigint NOT NULL,
    repeat_until timestamp with time zone,
    queue character varying(190),
    attempts integer NOT NULL,
    failed_at timestamp with time zone,
    last_error text NOT NULL,
    locked_by character varying(64),
    locked_at timestamp with time zone,
    creator_object_id integer,
    creator_content_type_id integer,
    CONSTRAINT background_task_creator_object_id_check CHECK ((creator_object_id >= 0))
);


ALTER TABLE public.background_task OWNER TO postgres;

--
-- Name: background_task_completedtask; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.background_task_completedtask (
    id integer NOT NULL,
    task_name character varying(190) NOT NULL,
    task_params text NOT NULL,
    task_hash character varying(40) NOT NULL,
    verbose_name character varying(255),
    priority integer NOT NULL,
    run_at timestamp with time zone NOT NULL,
    repeat bigint NOT NULL,
    repeat_until timestamp with time zone,
    queue character varying(190),
    attempts integer NOT NULL,
    failed_at timestamp with time zone,
    last_error text NOT NULL,
    locked_by character varying(64),
    locked_at timestamp with time zone,
    creator_object_id integer,
    creator_content_type_id integer,
    CONSTRAINT background_task_completedtask_creator_object_id_check CHECK ((creator_object_id >= 0))
);


ALTER TABLE public.background_task_completedtask OWNER TO postgres;

--
-- Name: background_task_completedtask_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.background_task_completedtask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.background_task_completedtask_id_seq OWNER TO postgres;

--
-- Name: background_task_completedtask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.background_task_completedtask_id_seq OWNED BY public.background_task_completedtask.id;


--
-- Name: background_task_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.background_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.background_task_id_seq OWNER TO postgres;

--
-- Name: background_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.background_task_id_seq OWNED BY public.background_task.id;


--
-- Name: bootstrap4_alerts_bootstrap4alerts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_alerts_bootstrap4alerts (
    cmsplugin_ptr_id integer NOT NULL,
    alert_context character varying(255) NOT NULL,
    alert_dismissable boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_alerts_bootstrap4alerts OWNER TO postgres;

--
-- Name: bootstrap4_badge_bootstrap4badge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_badge_bootstrap4badge (
    cmsplugin_ptr_id integer NOT NULL,
    badge_text character varying(255) NOT NULL,
    badge_context character varying(255) NOT NULL,
    badge_pills boolean NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_badge_bootstrap4badge OWNER TO postgres;

--
-- Name: bootstrap4_card_bootstrap4card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_card_bootstrap4card (
    cmsplugin_ptr_id integer NOT NULL,
    card_type character varying(255) NOT NULL,
    card_context character varying(255) NOT NULL,
    card_alignment character varying(255) NOT NULL,
    card_outline boolean NOT NULL,
    card_text_color character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_card_bootstrap4card OWNER TO postgres;

--
-- Name: bootstrap4_card_bootstrap4cardinner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_card_bootstrap4cardinner (
    cmsplugin_ptr_id integer NOT NULL,
    inner_type character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_card_bootstrap4cardinner OWNER TO postgres;

--
-- Name: bootstrap4_carousel_bootstrap4carousel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_carousel_bootstrap4carousel (
    cmsplugin_ptr_id integer NOT NULL,
    template character varying(255) NOT NULL,
    carousel_interval integer NOT NULL,
    carousel_controls boolean NOT NULL,
    carousel_indicators boolean NOT NULL,
    carousel_keyboard boolean NOT NULL,
    carousel_pause character varying(255) NOT NULL,
    carousel_ride character varying(255) NOT NULL,
    carousel_wrap boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL,
    carousel_aspect_ratio character varying(255) NOT NULL
);


ALTER TABLE public.bootstrap4_carousel_bootstrap4carousel OWNER TO postgres;

--
-- Name: bootstrap4_carousel_bootstrap4carouselslide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_carousel_bootstrap4carouselslide (
    template character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    carousel_content text NOT NULL,
    tag_type character varying(255) NOT NULL,
    carousel_image_id integer,
    internal_link_id integer,
    file_link_id integer
);


ALTER TABLE public.bootstrap4_carousel_bootstrap4carouselslide OWNER TO postgres;

--
-- Name: bootstrap4_collapse_bootstrap4collapse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_collapse_bootstrap4collapse (
    cmsplugin_ptr_id integer NOT NULL,
    siblings character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_collapse_bootstrap4collapse OWNER TO postgres;

--
-- Name: bootstrap4_collapse_bootstrap4collapsecontainer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_collapse_bootstrap4collapsecontainer (
    cmsplugin_ptr_id integer NOT NULL,
    identifier character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_collapse_bootstrap4collapsecontainer OWNER TO postgres;

--
-- Name: bootstrap4_collapse_bootstrap4collapsetrigger; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_collapse_bootstrap4collapsetrigger (
    cmsplugin_ptr_id integer NOT NULL,
    identifier character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_collapse_bootstrap4collapsetrigger OWNER TO postgres;

--
-- Name: bootstrap4_content_bootstrap4blockquote; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_content_bootstrap4blockquote (
    cmsplugin_ptr_id integer NOT NULL,
    quote_content text NOT NULL,
    quote_origin text NOT NULL,
    quote_alignment character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_content_bootstrap4blockquote OWNER TO postgres;

--
-- Name: bootstrap4_content_bootstrap4code; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_content_bootstrap4code (
    cmsplugin_ptr_id integer NOT NULL,
    code_content text NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_content_bootstrap4code OWNER TO postgres;

--
-- Name: bootstrap4_content_bootstrap4figure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_content_bootstrap4figure (
    cmsplugin_ptr_id integer NOT NULL,
    figure_caption character varying(255) NOT NULL,
    figure_alignment character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_content_bootstrap4figure OWNER TO postgres;

--
-- Name: bootstrap4_grid_bootstrap4gridcolumn; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_grid_bootstrap4gridcolumn (
    cmsplugin_ptr_id integer NOT NULL,
    column_type character varying(255) NOT NULL,
    column_alignment character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL,
    xs_col integer,
    xs_order integer,
    xs_ml boolean NOT NULL,
    xs_mr boolean NOT NULL,
    sm_col integer,
    sm_order integer,
    sm_ml boolean NOT NULL,
    sm_mr boolean NOT NULL,
    md_col integer,
    md_order integer,
    md_ml boolean NOT NULL,
    md_mr boolean NOT NULL,
    lg_col integer,
    lg_order integer,
    lg_ml boolean NOT NULL,
    lg_mr boolean NOT NULL,
    xl_col integer,
    xl_order integer,
    xl_ml boolean NOT NULL,
    xl_mr boolean NOT NULL,
    lg_offset integer,
    md_offset integer,
    sm_offset integer,
    xl_offset integer,
    xs_offset integer
);


ALTER TABLE public.bootstrap4_grid_bootstrap4gridcolumn OWNER TO postgres;

--
-- Name: bootstrap4_grid_bootstrap4gridcontainer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_grid_bootstrap4gridcontainer (
    cmsplugin_ptr_id integer NOT NULL,
    container_type character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_grid_bootstrap4gridcontainer OWNER TO postgres;

--
-- Name: bootstrap4_grid_bootstrap4gridrow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_grid_bootstrap4gridrow (
    cmsplugin_ptr_id integer NOT NULL,
    vertical_alignment character varying(255) NOT NULL,
    horizontal_alignment character varying(255) NOT NULL,
    gutters boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_grid_bootstrap4gridrow OWNER TO postgres;

--
-- Name: bootstrap4_jumbotron_bootstrap4jumbotron; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_jumbotron_bootstrap4jumbotron (
    cmsplugin_ptr_id integer NOT NULL,
    fluid boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_jumbotron_bootstrap4jumbotron OWNER TO postgres;

--
-- Name: bootstrap4_link_bootstrap4link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_link_bootstrap4link (
    template character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    link_type character varying(255) NOT NULL,
    link_context character varying(255) NOT NULL,
    link_size character varying(255) NOT NULL,
    link_outline boolean NOT NULL,
    link_block boolean NOT NULL,
    internal_link_id integer,
    icon_left character varying(255) NOT NULL,
    icon_right character varying(255) NOT NULL,
    file_link_id integer
);


ALTER TABLE public.bootstrap4_link_bootstrap4link OWNER TO postgres;

--
-- Name: bootstrap4_listgroup_bootstrap4listgroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_listgroup_bootstrap4listgroup (
    cmsplugin_ptr_id integer NOT NULL,
    list_group_flush boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_listgroup_bootstrap4listgroup OWNER TO postgres;

--
-- Name: bootstrap4_listgroup_bootstrap4listgroupitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_listgroup_bootstrap4listgroupitem (
    cmsplugin_ptr_id integer NOT NULL,
    list_context character varying(255) NOT NULL,
    list_state character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_listgroup_bootstrap4listgroupitem OWNER TO postgres;

--
-- Name: bootstrap4_media_bootstrap4media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_media_bootstrap4media (
    cmsplugin_ptr_id integer NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_media_bootstrap4media OWNER TO postgres;

--
-- Name: bootstrap4_media_bootstrap4mediabody; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_media_bootstrap4mediabody (
    cmsplugin_ptr_id integer NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_media_bootstrap4mediabody OWNER TO postgres;

--
-- Name: bootstrap4_picture_bootstrap4picture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_picture_bootstrap4picture (
    template character varying(255) NOT NULL,
    external_picture character varying(255),
    width integer,
    height integer,
    alignment character varying(255) NOT NULL,
    caption_text text,
    attributes text NOT NULL,
    link_url character varying(2040),
    link_target character varying(255) NOT NULL,
    link_attributes text NOT NULL,
    use_automatic_scaling boolean NOT NULL,
    use_no_cropping boolean NOT NULL,
    use_crop boolean NOT NULL,
    use_upscale boolean NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    picture_fluid boolean NOT NULL,
    picture_rounded boolean NOT NULL,
    picture_thumbnail boolean NOT NULL,
    link_page_id integer,
    picture_id integer,
    thumbnail_options_id integer,
    use_responsive_image character varying(7) NOT NULL,
    CONSTRAINT bootstrap4_picture_bootstrap4picture_height_check CHECK ((height >= 0)),
    CONSTRAINT bootstrap4_picture_bootstrap4picture_width_check CHECK ((width >= 0))
);


ALTER TABLE public.bootstrap4_picture_bootstrap4picture OWNER TO postgres;

--
-- Name: bootstrap4_tabs_bootstrap4tab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_tabs_bootstrap4tab (
    cmsplugin_ptr_id integer NOT NULL,
    template character varying(255) NOT NULL,
    tab_type character varying(255) NOT NULL,
    tab_alignment character varying(255) NOT NULL,
    tab_index integer,
    tab_effect character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL,
    CONSTRAINT bootstrap4_tabs_bootstrap4tab_tab_index_check CHECK ((tab_index >= 0))
);


ALTER TABLE public.bootstrap4_tabs_bootstrap4tab OWNER TO postgres;

--
-- Name: bootstrap4_tabs_bootstrap4tabitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_tabs_bootstrap4tabitem (
    cmsplugin_ptr_id integer NOT NULL,
    tab_title character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_tabs_bootstrap4tabitem OWNER TO postgres;

--
-- Name: bootstrap4_utilities_bootstrap4spacing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bootstrap4_utilities_bootstrap4spacing (
    cmsplugin_ptr_id integer NOT NULL,
    space_property character varying(255) NOT NULL,
    space_sides character varying(255) NOT NULL,
    space_size character varying(255) NOT NULL,
    space_device character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_utilities_bootstrap4spacing OWNER TO postgres;

--
-- Name: cms_aliaspluginmodel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);


ALTER TABLE public.cms_aliaspluginmodel OWNER TO postgres;

--
-- Name: cms_cmsplugin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_cmsplugin (
    id integer NOT NULL,
    "position" smallint NOT NULL,
    language character varying(15) NOT NULL,
    plugin_type character varying(50) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    parent_id integer,
    placeholder_id integer,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    path character varying(255) NOT NULL,
    CONSTRAINT cms_cmsplugin_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_cmsplugin_numchild_check CHECK ((numchild >= 0)),
    CONSTRAINT cms_cmsplugin_position_check CHECK (("position" >= 0))
);


ALTER TABLE public.cms_cmsplugin OWNER TO postgres;

--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_cmsplugin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_cmsplugin_id_seq OWNER TO postgres;

--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_cmsplugin_id_seq OWNED BY public.cms_cmsplugin.id;


--
-- Name: cms_globalpagepermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_globalpagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    can_recover_page boolean NOT NULL,
    group_id integer,
    user_id integer
);


ALTER TABLE public.cms_globalpagepermission OWNER TO postgres;

--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_globalpagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_globalpagepermission_id_seq OWNER TO postgres;

--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_globalpagepermission_id_seq OWNED BY public.cms_globalpagepermission.id;


--
-- Name: cms_globalpagepermission_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.cms_globalpagepermission_sites OWNER TO postgres;

--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_globalpagepermission_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_globalpagepermission_sites_id_seq OWNER TO postgres;

--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_globalpagepermission_sites_id_seq OWNED BY public.cms_globalpagepermission_sites.id;


--
-- Name: cms_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_page (
    id integer NOT NULL,
    created_by character varying(255) NOT NULL,
    changed_by character varying(255) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    publication_date timestamp with time zone,
    publication_end_date timestamp with time zone,
    in_navigation boolean NOT NULL,
    soft_root boolean NOT NULL,
    reverse_id character varying(40),
    navigation_extenders character varying(80),
    template character varying(100) NOT NULL,
    login_required boolean NOT NULL,
    limit_visibility_in_menu smallint,
    is_home boolean NOT NULL,
    application_urls character varying(200),
    application_namespace character varying(200),
    publisher_is_draft boolean NOT NULL,
    languages character varying(255),
    xframe_options integer NOT NULL,
    publisher_public_id integer,
    is_page_type boolean NOT NULL,
    node_id integer NOT NULL
);


ALTER TABLE public.cms_page OWNER TO postgres;

--
-- Name: cms_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_page_id_seq OWNER TO postgres;

--
-- Name: cms_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_page_id_seq OWNED BY public.cms_page.id;


--
-- Name: cms_page_placeholders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);


ALTER TABLE public.cms_page_placeholders OWNER TO postgres;

--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_page_placeholders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_page_placeholders_id_seq OWNER TO postgres;

--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_page_placeholders_id_seq OWNED BY public.cms_page_placeholders.id;


--
-- Name: cms_pagepermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_pagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    grant_on integer NOT NULL,
    group_id integer,
    page_id integer,
    user_id integer
);


ALTER TABLE public.cms_pagepermission OWNER TO postgres;

--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_pagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_pagepermission_id_seq OWNER TO postgres;

--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_pagepermission_id_seq OWNED BY public.cms_pagepermission.id;


--
-- Name: cms_pageuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


ALTER TABLE public.cms_pageuser OWNER TO postgres;

--
-- Name: cms_pageusergroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


ALTER TABLE public.cms_pageusergroup OWNER TO postgres;

--
-- Name: cms_placeholder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);


ALTER TABLE public.cms_placeholder OWNER TO postgres;

--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_placeholder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_placeholder_id_seq OWNER TO postgres;

--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_placeholder_id_seq OWNED BY public.cms_placeholder.id;


--
-- Name: cms_placeholderreference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);


ALTER TABLE public.cms_placeholderreference OWNER TO postgres;

--
-- Name: cms_staticplaceholder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_staticplaceholder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    dirty boolean NOT NULL,
    creation_method character varying(20) NOT NULL,
    draft_id integer,
    public_id integer,
    site_id integer
);


ALTER TABLE public.cms_staticplaceholder OWNER TO postgres;

--
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_staticplaceholder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_staticplaceholder_id_seq OWNER TO postgres;

--
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_staticplaceholder_id_seq OWNED BY public.cms_staticplaceholder.id;


--
-- Name: cms_title; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_title (
    id integer NOT NULL,
    language character varying(15) NOT NULL,
    title character varying(255) NOT NULL,
    page_title character varying(255),
    menu_title character varying(255),
    meta_description text,
    slug character varying(255) NOT NULL,
    path character varying(255) NOT NULL,
    has_url_overwrite boolean NOT NULL,
    redirect character varying(2048),
    creation_date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    publisher_is_draft boolean NOT NULL,
    publisher_state smallint NOT NULL,
    page_id integer NOT NULL,
    publisher_public_id integer
);


ALTER TABLE public.cms_title OWNER TO postgres;

--
-- Name: cms_title_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_title_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_title_id_seq OWNER TO postgres;

--
-- Name: cms_title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_title_id_seq OWNED BY public.cms_title.id;


--
-- Name: cms_treenode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_treenode (
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    parent_id integer,
    site_id integer NOT NULL,
    CONSTRAINT cms_treenode_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_treenode_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.cms_treenode OWNER TO postgres;

--
-- Name: cms_treenode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_treenode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_treenode_id_seq OWNER TO postgres;

--
-- Name: cms_treenode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_treenode_id_seq OWNED BY public.cms_treenode.id;


--
-- Name: cms_urlconfrevision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);


ALTER TABLE public.cms_urlconfrevision OWNER TO postgres;

--
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_urlconfrevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_urlconfrevision_id_seq OWNER TO postgres;

--
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_urlconfrevision_id_seq OWNED BY public.cms_urlconfrevision.id;


--
-- Name: cms_usersettings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public.cms_usersettings OWNER TO postgres;

--
-- Name: cms_usersettings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cms_usersettings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_usersettings_id_seq OWNER TO postgres;

--
-- Name: cms_usersettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cms_usersettings_id_seq OWNED BY public.cms_usersettings.id;


--
-- Name: core_app_attachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_app_attachment (
    id integer NOT NULL,
    description text NOT NULL,
    attachment_type character varying(50) NOT NULL,
    url text NOT NULL,
    post_id character varying(50) NOT NULL
);


ALTER TABLE public.core_app_attachment OWNER TO postgres;

--
-- Name: core_app_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_app_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_app_attachment_id_seq OWNER TO postgres;

--
-- Name: core_app_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_app_attachment_id_seq OWNED BY public.core_app_attachment.id;


--
-- Name: core_app_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_app_image (
    id integer NOT NULL,
    height character varying(30) NOT NULL,
    width character varying(30) NOT NULL,
    src text NOT NULL,
    attachment_id integer NOT NULL
);


ALTER TABLE public.core_app_image OWNER TO postgres;

--
-- Name: core_app_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_app_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_app_image_id_seq OWNER TO postgres;

--
-- Name: core_app_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_app_image_id_seq OWNED BY public.core_app_image.id;


--
-- Name: core_app_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_app_post (
    id character varying(50) NOT NULL,
    message text NOT NULL,
    created_time timestamp with time zone NOT NULL
);


ALTER TABLE public.core_app_post OWNER TO postgres;

--
-- Name: core_app_target; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_app_target (
    id integer NOT NULL,
    url text NOT NULL,
    attachment_id integer NOT NULL
);


ALTER TABLE public.core_app_target OWNER TO postgres;

--
-- Name: core_app_target_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_app_target_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_app_target_id_seq OWNER TO postgres;

--
-- Name: core_app_target_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_app_target_id_seq OWNED BY public.core_app_target.id;


--
-- Name: core_forms_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_forms_profile (
    id integer NOT NULL,
    street_address character varying(128),
    city character varying(64),
    state character varying(2),
    zip_code character varying(10),
    mobile_phone character varying(128),
    user_id integer
);


ALTER TABLE public.core_forms_profile OWNER TO postgres;

--
-- Name: core_forms_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_forms_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_forms_profile_id_seq OWNER TO postgres;

--
-- Name: core_forms_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_forms_profile_id_seq OWNED BY public.core_forms_profile.id;


--
-- Name: core_forms_volunteerapplication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_forms_volunteerapplication (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    street_address character varying(128) NOT NULL,
    city character varying(64) NOT NULL,
    state character varying(2) NOT NULL,
    zip_code character varying(10) NOT NULL,
    home_phone character varying(128),
    work_phone character varying(128),
    mobile_phone character varying(128) NOT NULL,
    emergency_contact character varying(128) NOT NULL,
    email character varying(128) NOT NULL,
    marital_status character varying(1),
    source character varying(128) NOT NULL,
    volunteer_agency_1 character varying(64),
    volunteer_city_1 character varying(64),
    volunteer_state_1 character varying(2),
    volunteer_duties_1 character varying(64),
    volunteer_supervisor_1 character varying(64),
    volunteer_start_date_1 date,
    volunteer_end_date_1 date,
    volunteer_agency_2 character varying(64),
    volunteer_city_2 character varying(64),
    volunteer_state_2 character varying(2),
    volunteer_duties_2 character varying(64),
    volunteer_supervisor_2 character varying(64),
    volunteer_start_date_2 date,
    volunteer_end_date_2 date,
    volunteer_agency_3 character varying(64),
    volunteer_city_3 character varying(64),
    volunteer_state_3 character varying(2),
    volunteer_duties_3 character varying(64),
    volunteer_supervisor_3 character varying(64),
    volunteer_start_date_3 date,
    volunteer_end_date_3 date,
    employment_employer_1 character varying(64),
    employment_city_1 character varying(64),
    employment_state_1 character varying(2),
    employment_title_1 character varying(64),
    employment_start_date_1 date,
    employment_end_date_1 date,
    employment_employer_2 character varying(64),
    employment_city_2 character varying(64),
    employment_state_2 character varying(2),
    employment_title_2 character varying(64),
    employment_start_date_2 date,
    employment_end_date_2 date,
    employment_employer_3 character varying(64),
    employment_city_3 character varying(64),
    employment_state_3 character varying(2),
    employment_title_3 character varying(64),
    employment_start_date_3 date,
    employment_end_date_3 date,
    education_school_1 character varying(64),
    education_city_1 character varying(64),
    education_state_1 character varying(2),
    education_years_studied_1 integer,
    education_degree_1 character varying(64),
    education_date_completed_1 date,
    education_school_2 character varying(64),
    education_city_2 character varying(64),
    education_state_2 character varying(2),
    education_years_studied_2 integer,
    education_degree_2 character varying(64),
    education_date_completed_2 date,
    education_school_3 character varying(64),
    education_city_3 character varying(64),
    education_state_3 character varying(2),
    education_years_studied_3 integer,
    education_degree_3 character varying(64),
    education_date_completed_3 date,
    licenses text,
    training text,
    volunteer_type character varying(40),
    sunday_availability character varying(4),
    monday_availability character varying(4),
    tuesday_availability character varying(4),
    wednesday_availability character varying(4),
    thursday_availability character varying(4),
    friday_availability character varying(4),
    saturday_availability character varying(4),
    reason text NOT NULL,
    personal_loss text NOT NULL,
    felony character varying(1) NOT NULL,
    conviction text,
    CONSTRAINT core_forms_volunteerapplication_education_years_studied_1_check CHECK ((education_years_studied_1 >= 0)),
    CONSTRAINT core_forms_volunteerapplication_education_years_studied_2_check CHECK ((education_years_studied_2 >= 0)),
    CONSTRAINT core_forms_volunteerapplication_education_years_studied_3_check CHECK ((education_years_studied_3 >= 0))
);


ALTER TABLE public.core_forms_volunteerapplication OWNER TO postgres;

--
-- Name: core_forms_volunteerapplication_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_forms_volunteerapplication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_forms_volunteerapplication_id_seq OWNER TO postgres;

--
-- Name: core_forms_volunteerapplication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_forms_volunteerapplication_id_seq OWNED BY public.core_forms_volunteerapplication.id;


--
-- Name: core_plugins_test1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_plugins_test1 (
    cmsplugin_ptr_id integer NOT NULL,
    test_value character varying(50) NOT NULL
);


ALTER TABLE public.core_plugins_test1 OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: djangocms_file_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_file_file (
    cmsplugin_ptr_id integer NOT NULL,
    file_name character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    link_title character varying(255) NOT NULL,
    file_src_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL,
    show_file_size boolean NOT NULL
);


ALTER TABLE public.djangocms_file_file OWNER TO postgres;

--
-- Name: djangocms_file_folder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);


ALTER TABLE public.djangocms_file_folder OWNER TO postgres;

--
-- Name: djangocms_googlemap_googlemap; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_googlemap_googlemap (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    zoom smallint NOT NULL,
    lat double precision,
    lng double precision,
    width character varying(6) NOT NULL,
    height character varying(6) NOT NULL,
    scrollwheel boolean NOT NULL,
    double_click_zoom boolean NOT NULL,
    draggable boolean NOT NULL,
    keyboard_shortcuts boolean NOT NULL,
    pan_control boolean NOT NULL,
    zoom_control boolean NOT NULL,
    street_view_control boolean NOT NULL,
    style text NOT NULL,
    fullscreen_control boolean NOT NULL,
    map_type_control character varying(255) NOT NULL,
    rotate_control boolean NOT NULL,
    scale_control boolean NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_googlemap_googlemap_zoom_check CHECK ((zoom >= 0))
);


ALTER TABLE public.djangocms_googlemap_googlemap OWNER TO postgres;

--
-- Name: djangocms_googlemap_googlemapmarker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_googlemap_googlemapmarker (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    lat double precision,
    lng double precision,
    show_content boolean NOT NULL,
    info_content text NOT NULL,
    icon_id integer
);


ALTER TABLE public.djangocms_googlemap_googlemapmarker OWNER TO postgres;

--
-- Name: djangocms_googlemap_googlemaproute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);


ALTER TABLE public.djangocms_googlemap_googlemaproute OWNER TO postgres;

--
-- Name: djangocms_icon_icon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_icon_icon (
    cmsplugin_ptr_id integer NOT NULL,
    icon character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.djangocms_icon_icon OWNER TO postgres;

--
-- Name: djangocms_link_link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_link_link (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    internal_link_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL,
    file_link_id integer
);


ALTER TABLE public.djangocms_link_link OWNER TO postgres;

--
-- Name: djangocms_picture_picture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_picture_picture (
    cmsplugin_ptr_id integer NOT NULL,
    link_url character varying(2040),
    alignment character varying(255) NOT NULL,
    link_page_id integer,
    height integer,
    width integer,
    picture_id integer,
    attributes text NOT NULL,
    caption_text text,
    link_attributes text NOT NULL,
    link_target character varying(255) NOT NULL,
    use_automatic_scaling boolean NOT NULL,
    use_crop boolean NOT NULL,
    use_no_cropping boolean NOT NULL,
    use_upscale boolean NOT NULL,
    thumbnail_options_id integer,
    external_picture character varying(255),
    template character varying(255) NOT NULL,
    use_responsive_image character varying(7) NOT NULL,
    CONSTRAINT djangocms_picture_picture_height_3db3e080_check CHECK ((height >= 0)),
    CONSTRAINT djangocms_picture_picture_width_5bba3699_check CHECK ((width >= 0))
);


ALTER TABLE public.djangocms_picture_picture OWNER TO postgres;

--
-- Name: djangocms_snippet_snippet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.djangocms_snippet_snippet OWNER TO postgres;

--
-- Name: djangocms_snippet_snippet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.djangocms_snippet_snippet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djangocms_snippet_snippet_id_seq OWNER TO postgres;

--
-- Name: djangocms_snippet_snippet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.djangocms_snippet_snippet_id_seq OWNED BY public.djangocms_snippet_snippet.id;


--
-- Name: djangocms_snippet_snippetptr; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);


ALTER TABLE public.djangocms_snippet_snippetptr OWNER TO postgres;

--
-- Name: djangocms_style_style; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_style_style (
    cmsplugin_ptr_id integer NOT NULL,
    class_name character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    padding_left smallint,
    padding_right smallint,
    padding_top smallint,
    padding_bottom smallint,
    margin_left smallint,
    margin_right smallint,
    margin_top smallint,
    margin_bottom smallint,
    additional_classes character varying(255) NOT NULL,
    attributes text NOT NULL,
    id_name character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_style_style_margin_bottom_08e7c851_check CHECK ((margin_bottom >= 0)),
    CONSTRAINT djangocms_style_style_margin_left_e51dea0a_check CHECK ((margin_left >= 0)),
    CONSTRAINT djangocms_style_style_margin_right_40a4928b_check CHECK ((margin_right >= 0)),
    CONSTRAINT djangocms_style_style_margin_top_929f0506_check CHECK ((margin_top >= 0)),
    CONSTRAINT djangocms_style_style_padding_bottom_566948a6_check CHECK ((padding_bottom >= 0)),
    CONSTRAINT djangocms_style_style_padding_left_2426413b_check CHECK ((padding_left >= 0)),
    CONSTRAINT djangocms_style_style_padding_right_90146b20_check CHECK ((padding_right >= 0)),
    CONSTRAINT djangocms_style_style_padding_top_fbca5ac1_check CHECK ((padding_top >= 0))
);


ALTER TABLE public.djangocms_style_style OWNER TO postgres;

--
-- Name: djangocms_text_ckeditor_text; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);


ALTER TABLE public.djangocms_text_ckeditor_text OWNER TO postgres;

--
-- Name: djangocms_video_videoplayer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    parameters text NOT NULL
);


ALTER TABLE public.djangocms_video_videoplayer OWNER TO postgres;

--
-- Name: djangocms_video_videosource; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);


ALTER TABLE public.djangocms_video_videosource OWNER TO postgres;

--
-- Name: djangocms_video_videotrack; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);


ALTER TABLE public.djangocms_video_videotrack OWNER TO postgres;

--
-- Name: easy_thumbnails_source; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.easy_thumbnails_source OWNER TO postgres;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_source_id_seq OWNER TO postgres;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;


--
-- Name: easy_thumbnails_thumbnail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.easy_thumbnails_thumbnail OWNER TO postgres;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnail_id_seq OWNER TO postgres;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;


--
-- Name: easy_thumbnails_thumbnaildimensions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);


ALTER TABLE public.easy_thumbnails_thumbnaildimensions OWNER TO postgres;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnaildimensions_id_seq OWNER TO postgres;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;


--
-- Name: filer_clipboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.filer_clipboard OWNER TO postgres;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filer_clipboard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboard_id_seq OWNER TO postgres;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filer_clipboard_id_seq OWNED BY public.filer_clipboard.id;


--
-- Name: filer_clipboarditem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);


ALTER TABLE public.filer_clipboarditem OWNER TO postgres;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filer_clipboarditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboarditem_id_seq OWNER TO postgres;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filer_clipboarditem_id_seq OWNED BY public.filer_clipboarditem.id;


--
-- Name: filer_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size bigint,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer
);


ALTER TABLE public.filer_file OWNER TO postgres;

--
-- Name: filer_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filer_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_file_id_seq OWNER TO postgres;

--
-- Name: filer_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filer_file_id_seq OWNED BY public.filer_file.id;


--
-- Name: filer_folder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.filer_folder OWNER TO postgres;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filer_folder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folder_id_seq OWNER TO postgres;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filer_folder_id_seq OWNED BY public.filer_folder.id;


--
-- Name: filer_folderpermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);


ALTER TABLE public.filer_folderpermission OWNER TO postgres;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filer_folderpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folderpermission_id_seq OWNER TO postgres;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filer_folderpermission_id_seq OWNED BY public.filer_folderpermission.id;


--
-- Name: filer_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64) NOT NULL
);


ALTER TABLE public.filer_image OWNER TO postgres;

--
-- Name: filer_thumbnailoption; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);


ALTER TABLE public.filer_thumbnailoption OWNER TO postgres;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filer_thumbnailoption_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_thumbnailoption_id_seq OWNER TO postgres;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filer_thumbnailoption_id_seq OWNED BY public.filer_thumbnailoption.id;


--
-- Name: menus_cachekey; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);


ALTER TABLE public.menus_cachekey OWNER TO postgres;

--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.menus_cachekey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menus_cachekey_id_seq OWNER TO postgres;

--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.menus_cachekey_id_seq OWNED BY public.menus_cachekey.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: background_task id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.background_task ALTER COLUMN id SET DEFAULT nextval('public.background_task_id_seq'::regclass);


--
-- Name: background_task_completedtask id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.background_task_completedtask ALTER COLUMN id SET DEFAULT nextval('public.background_task_completedtask_id_seq'::regclass);


--
-- Name: cms_cmsplugin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('public.cms_cmsplugin_id_seq'::regclass);


--
-- Name: cms_globalpagepermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_id_seq'::regclass);


--
-- Name: cms_globalpagepermission_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_sites_id_seq'::regclass);


--
-- Name: cms_page id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page ALTER COLUMN id SET DEFAULT nextval('public.cms_page_id_seq'::regclass);


--
-- Name: cms_page_placeholders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('public.cms_page_placeholders_id_seq'::regclass);


--
-- Name: cms_pagepermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_pagepermission_id_seq'::regclass);


--
-- Name: cms_placeholder id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_placeholder ALTER COLUMN id SET DEFAULT nextval('public.cms_placeholder_id_seq'::regclass);


--
-- Name: cms_staticplaceholder id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('public.cms_staticplaceholder_id_seq'::regclass);


--
-- Name: cms_title id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_title ALTER COLUMN id SET DEFAULT nextval('public.cms_title_id_seq'::regclass);


--
-- Name: cms_treenode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_treenode ALTER COLUMN id SET DEFAULT nextval('public.cms_treenode_id_seq'::regclass);


--
-- Name: cms_urlconfrevision id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('public.cms_urlconfrevision_id_seq'::regclass);


--
-- Name: cms_usersettings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_usersettings ALTER COLUMN id SET DEFAULT nextval('public.cms_usersettings_id_seq'::regclass);


--
-- Name: core_app_attachment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_attachment ALTER COLUMN id SET DEFAULT nextval('public.core_app_attachment_id_seq'::regclass);


--
-- Name: core_app_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_image ALTER COLUMN id SET DEFAULT nextval('public.core_app_image_id_seq'::regclass);


--
-- Name: core_app_target id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_target ALTER COLUMN id SET DEFAULT nextval('public.core_app_target_id_seq'::regclass);


--
-- Name: core_forms_profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_forms_profile ALTER COLUMN id SET DEFAULT nextval('public.core_forms_profile_id_seq'::regclass);


--
-- Name: core_forms_volunteerapplication id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_forms_volunteerapplication ALTER COLUMN id SET DEFAULT nextval('public.core_forms_volunteerapplication_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: djangocms_snippet_snippet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('public.djangocms_snippet_snippet_id_seq'::regclass);


--
-- Name: easy_thumbnails_source id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnail id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnaildimensions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);


--
-- Name: filer_clipboard id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_clipboard ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboard_id_seq'::regclass);


--
-- Name: filer_clipboarditem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboarditem_id_seq'::regclass);


--
-- Name: filer_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_file ALTER COLUMN id SET DEFAULT nextval('public.filer_file_id_seq'::regclass);


--
-- Name: filer_folder id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folder ALTER COLUMN id SET DEFAULT nextval('public.filer_folder_id_seq'::regclass);


--
-- Name: filer_folderpermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('public.filer_folderpermission_id_seq'::regclass);


--
-- Name: filer_thumbnailoption id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('public.filer_thumbnailoption_id_seq'::regclass);


--
-- Name: menus_cachekey id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menus_cachekey ALTER COLUMN id SET DEFAULT nextval('public.menus_cachekey_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
309	Can add completed task	79	add_completedtask
310	Can change completed task	79	change_completedtask
311	Can delete completed task	79	delete_completedtask
312	Can view completed task	79	view_completedtask
313	Can add task	80	add_task
314	Can change task	80	change_task
315	Can delete task	80	delete_task
316	Can view task	80	view_task
317	Can add image	81	add_image
318	Can change image	81	change_image
319	Can delete image	81	delete_image
320	Can view image	81	view_image
321	Can add attachment	82	add_attachment
322	Can change attachment	82	change_attachment
323	Can delete attachment	82	delete_attachment
324	Can view attachment	82	view_attachment
325	Can add post	83	add_post
326	Can change post	83	change_post
327	Can delete post	83	delete_post
328	Can view post	83	view_post
329	Can add target	84	add_target
330	Can change target	84	change_target
331	Can delete target	84	delete_target
332	Can view target	84	view_target
1	Can use Structure mode	1	use_structure
2	Can change page	2	change_page
3	Can add permission	3	add_permission
4	Can change permission	3	change_permission
5	Can delete permission	3	delete_permission
6	Can view permission	3	view_permission
7	Can add group	4	add_group
8	Can change group	4	change_group
9	Can delete group	4	delete_group
10	Can view group	4	view_group
11	Can add user	5	add_user
12	Can change user	5	change_user
13	Can delete user	5	delete_user
14	Can view user	5	view_user
15	Can add content type	6	add_contenttype
16	Can change content type	6	change_contenttype
17	Can delete content type	6	delete_contenttype
18	Can view content type	6	view_contenttype
19	Can add session	7	add_session
20	Can change session	7	change_session
21	Can delete session	7	delete_session
22	Can view session	7	view_session
23	Can add log entry	8	add_logentry
24	Can change log entry	8	change_logentry
25	Can delete log entry	8	delete_logentry
26	Can view log entry	8	view_logentry
27	Can add site	9	add_site
28	Can change site	9	change_site
29	Can delete site	9	delete_site
30	Can view site	9	view_site
31	Can add cms plugin	10	add_cmsplugin
32	Can change cms plugin	10	change_cmsplugin
33	Can delete cms plugin	10	delete_cmsplugin
34	Can view cms plugin	10	view_cmsplugin
35	Can add alias plugin model	11	add_aliaspluginmodel
36	Can change alias plugin model	11	change_aliaspluginmodel
37	Can delete alias plugin model	11	delete_aliaspluginmodel
38	Can view alias plugin model	11	view_aliaspluginmodel
39	Can add Page global permission	12	add_globalpagepermission
40	Can change Page global permission	12	change_globalpagepermission
41	Can delete Page global permission	12	delete_globalpagepermission
42	Can view Page global permission	12	view_globalpagepermission
43	Can add page	2	add_page
44	Can delete page	2	delete_page
45	Can view page	2	view_page
46	Can publish page	2	publish_page
47	Can edit static placeholders	2	edit_static_placeholder
48	Can add Page permission	13	add_pagepermission
49	Can change Page permission	13	change_pagepermission
50	Can delete Page permission	13	delete_pagepermission
51	Can view Page permission	13	view_pagepermission
52	Can add User (page)	14	add_pageuser
53	Can change User (page)	14	change_pageuser
54	Can delete User (page)	14	delete_pageuser
55	Can view User (page)	14	view_pageuser
56	Can add User group (page)	15	add_pageusergroup
57	Can change User group (page)	15	change_pageusergroup
58	Can delete User group (page)	15	delete_pageusergroup
59	Can view User group (page)	15	view_pageusergroup
60	Can add placeholder	1	add_placeholder
61	Can change placeholder	1	change_placeholder
62	Can delete placeholder	1	delete_placeholder
63	Can view placeholder	1	view_placeholder
64	Can add placeholder reference	16	add_placeholderreference
65	Can change placeholder reference	16	change_placeholderreference
66	Can delete placeholder reference	16	delete_placeholderreference
67	Can view placeholder reference	16	view_placeholderreference
68	Can add static placeholder	17	add_staticplaceholder
69	Can change static placeholder	17	change_staticplaceholder
70	Can delete static placeholder	17	delete_staticplaceholder
71	Can view static placeholder	17	view_staticplaceholder
72	Can add title	18	add_title
73	Can change title	18	change_title
74	Can delete title	18	delete_title
75	Can view title	18	view_title
76	Can add user setting	19	add_usersettings
77	Can change user setting	19	change_usersettings
78	Can delete user setting	19	delete_usersettings
79	Can view user setting	19	view_usersettings
80	Can add urlconf revision	20	add_urlconfrevision
81	Can change urlconf revision	20	change_urlconfrevision
82	Can delete urlconf revision	20	delete_urlconfrevision
284	Can view video source	72	view_videosource
83	Can view urlconf revision	20	view_urlconfrevision
84	Can add cache key	23	add_cachekey
85	Can change cache key	23	change_cachekey
86	Can delete cache key	23	delete_cachekey
87	Can view cache key	23	view_cachekey
88	Can add text	24	add_text
89	Can change text	24	change_text
90	Can delete text	24	delete_text
91	Can view text	24	view_text
92	Can add clipboard	25	add_clipboard
93	Can change clipboard	25	change_clipboard
94	Can delete clipboard	25	delete_clipboard
95	Can view clipboard	25	view_clipboard
96	Can add clipboard item	26	add_clipboarditem
97	Can change clipboard item	26	change_clipboarditem
98	Can delete clipboard item	26	delete_clipboarditem
99	Can view clipboard item	26	view_clipboarditem
100	Can add file	27	add_file
101	Can change file	27	change_file
102	Can delete file	27	delete_file
103	Can view file	27	view_file
104	Can add Folder	28	add_folder
105	Can change Folder	28	change_folder
106	Can delete Folder	28	delete_folder
107	Can view Folder	28	view_folder
108	Can use directory listing	28	can_use_directory_listing
109	Can add folder permission	29	add_folderpermission
110	Can change folder permission	29	change_folderpermission
111	Can delete folder permission	29	delete_folderpermission
112	Can view folder permission	29	view_folderpermission
113	Can add image	30	add_image
114	Can change image	30	change_image
115	Can delete image	30	delete_image
116	Can view image	30	view_image
117	Can add thumbnail option	31	add_thumbnailoption
118	Can change thumbnail option	31	change_thumbnailoption
119	Can delete thumbnail option	31	delete_thumbnailoption
120	Can view thumbnail option	31	view_thumbnailoption
121	Can add source	32	add_source
122	Can change source	32	change_source
123	Can delete source	32	delete_source
124	Can view source	32	view_source
125	Can add thumbnail	33	add_thumbnail
126	Can change thumbnail	33	change_thumbnail
127	Can delete thumbnail	33	delete_thumbnail
128	Can view thumbnail	33	view_thumbnail
129	Can add thumbnail dimensions	34	add_thumbnaildimensions
130	Can change thumbnail dimensions	34	change_thumbnaildimensions
131	Can delete thumbnail dimensions	34	delete_thumbnaildimensions
132	Can view thumbnail dimensions	34	view_thumbnaildimensions
133	Can add bootstrap4 alerts	35	add_bootstrap4alerts
134	Can change bootstrap4 alerts	35	change_bootstrap4alerts
135	Can delete bootstrap4 alerts	35	delete_bootstrap4alerts
136	Can view bootstrap4 alerts	35	view_bootstrap4alerts
137	Can add bootstrap4 badge	36	add_bootstrap4badge
138	Can change bootstrap4 badge	36	change_bootstrap4badge
139	Can delete bootstrap4 badge	36	delete_bootstrap4badge
140	Can view bootstrap4 badge	36	view_bootstrap4badge
141	Can add bootstrap4 card	37	add_bootstrap4card
142	Can change bootstrap4 card	37	change_bootstrap4card
143	Can delete bootstrap4 card	37	delete_bootstrap4card
144	Can view bootstrap4 card	37	view_bootstrap4card
145	Can add bootstrap4 card inner	38	add_bootstrap4cardinner
146	Can change bootstrap4 card inner	38	change_bootstrap4cardinner
147	Can delete bootstrap4 card inner	38	delete_bootstrap4cardinner
148	Can view bootstrap4 card inner	38	view_bootstrap4cardinner
149	Can add bootstrap4 carousel	39	add_bootstrap4carousel
150	Can change bootstrap4 carousel	39	change_bootstrap4carousel
151	Can delete bootstrap4 carousel	39	delete_bootstrap4carousel
152	Can view bootstrap4 carousel	39	view_bootstrap4carousel
153	Can add bootstrap4 carousel slide	40	add_bootstrap4carouselslide
154	Can change bootstrap4 carousel slide	40	change_bootstrap4carouselslide
155	Can delete bootstrap4 carousel slide	40	delete_bootstrap4carouselslide
156	Can view bootstrap4 carousel slide	40	view_bootstrap4carouselslide
157	Can add bootstrap4 collapse	41	add_bootstrap4collapse
158	Can change bootstrap4 collapse	41	change_bootstrap4collapse
159	Can delete bootstrap4 collapse	41	delete_bootstrap4collapse
160	Can view bootstrap4 collapse	41	view_bootstrap4collapse
161	Can add bootstrap4 collapse container	42	add_bootstrap4collapsecontainer
162	Can change bootstrap4 collapse container	42	change_bootstrap4collapsecontainer
163	Can delete bootstrap4 collapse container	42	delete_bootstrap4collapsecontainer
164	Can view bootstrap4 collapse container	42	view_bootstrap4collapsecontainer
165	Can add bootstrap4 collapse trigger	43	add_bootstrap4collapsetrigger
166	Can change bootstrap4 collapse trigger	43	change_bootstrap4collapsetrigger
167	Can delete bootstrap4 collapse trigger	43	delete_bootstrap4collapsetrigger
168	Can view bootstrap4 collapse trigger	43	view_bootstrap4collapsetrigger
169	Can add bootstrap4 blockquote	44	add_bootstrap4blockquote
170	Can change bootstrap4 blockquote	44	change_bootstrap4blockquote
171	Can delete bootstrap4 blockquote	44	delete_bootstrap4blockquote
172	Can view bootstrap4 blockquote	44	view_bootstrap4blockquote
173	Can add bootstrap4 code	45	add_bootstrap4code
174	Can change bootstrap4 code	45	change_bootstrap4code
175	Can delete bootstrap4 code	45	delete_bootstrap4code
176	Can view bootstrap4 code	45	view_bootstrap4code
177	Can add bootstrap4 figure	46	add_bootstrap4figure
178	Can change bootstrap4 figure	46	change_bootstrap4figure
179	Can delete bootstrap4 figure	46	delete_bootstrap4figure
180	Can view bootstrap4 figure	46	view_bootstrap4figure
181	Can add bootstrap4 grid column	47	add_bootstrap4gridcolumn
182	Can change bootstrap4 grid column	47	change_bootstrap4gridcolumn
183	Can delete bootstrap4 grid column	47	delete_bootstrap4gridcolumn
184	Can view bootstrap4 grid column	47	view_bootstrap4gridcolumn
185	Can add bootstrap4 grid container	48	add_bootstrap4gridcontainer
186	Can change bootstrap4 grid container	48	change_bootstrap4gridcontainer
187	Can delete bootstrap4 grid container	48	delete_bootstrap4gridcontainer
188	Can view bootstrap4 grid container	48	view_bootstrap4gridcontainer
189	Can add bootstrap4 grid row	49	add_bootstrap4gridrow
190	Can change bootstrap4 grid row	49	change_bootstrap4gridrow
191	Can delete bootstrap4 grid row	49	delete_bootstrap4gridrow
192	Can view bootstrap4 grid row	49	view_bootstrap4gridrow
193	Can add bootstrap4 jumbotron	50	add_bootstrap4jumbotron
194	Can change bootstrap4 jumbotron	50	change_bootstrap4jumbotron
195	Can delete bootstrap4 jumbotron	50	delete_bootstrap4jumbotron
196	Can view bootstrap4 jumbotron	50	view_bootstrap4jumbotron
197	Can add bootstrap4 link	51	add_bootstrap4link
198	Can change bootstrap4 link	51	change_bootstrap4link
199	Can delete bootstrap4 link	51	delete_bootstrap4link
200	Can view bootstrap4 link	51	view_bootstrap4link
201	Can add bootstrap4 list group	52	add_bootstrap4listgroup
202	Can change bootstrap4 list group	52	change_bootstrap4listgroup
203	Can delete bootstrap4 list group	52	delete_bootstrap4listgroup
204	Can view bootstrap4 list group	52	view_bootstrap4listgroup
205	Can add bootstrap4 list group item	53	add_bootstrap4listgroupitem
206	Can change bootstrap4 list group item	53	change_bootstrap4listgroupitem
207	Can delete bootstrap4 list group item	53	delete_bootstrap4listgroupitem
208	Can view bootstrap4 list group item	53	view_bootstrap4listgroupitem
209	Can add bootstrap4 media	54	add_bootstrap4media
210	Can change bootstrap4 media	54	change_bootstrap4media
211	Can delete bootstrap4 media	54	delete_bootstrap4media
212	Can view bootstrap4 media	54	view_bootstrap4media
213	Can add bootstrap4 media body	55	add_bootstrap4mediabody
214	Can change bootstrap4 media body	55	change_bootstrap4mediabody
215	Can delete bootstrap4 media body	55	delete_bootstrap4mediabody
216	Can view bootstrap4 media body	55	view_bootstrap4mediabody
217	Can add bootstrap4 picture	56	add_bootstrap4picture
218	Can change bootstrap4 picture	56	change_bootstrap4picture
219	Can delete bootstrap4 picture	56	delete_bootstrap4picture
220	Can view bootstrap4 picture	56	view_bootstrap4picture
221	Can add bootstrap4 tab	57	add_bootstrap4tab
222	Can change bootstrap4 tab	57	change_bootstrap4tab
223	Can delete bootstrap4 tab	57	delete_bootstrap4tab
224	Can view bootstrap4 tab	57	view_bootstrap4tab
225	Can add bootstrap4 tab item	58	add_bootstrap4tabitem
226	Can change bootstrap4 tab item	58	change_bootstrap4tabitem
227	Can delete bootstrap4 tab item	58	delete_bootstrap4tabitem
228	Can view bootstrap4 tab item	58	view_bootstrap4tabitem
229	Can add bootstrap4 spacing	59	add_bootstrap4spacing
230	Can change bootstrap4 spacing	59	change_bootstrap4spacing
231	Can delete bootstrap4 spacing	59	delete_bootstrap4spacing
232	Can view bootstrap4 spacing	59	view_bootstrap4spacing
233	Can add file	60	add_file
234	Can change file	60	change_file
235	Can delete file	60	delete_file
236	Can view file	60	view_file
237	Can add folder	61	add_folder
238	Can change folder	61	change_folder
239	Can delete folder	61	delete_folder
240	Can view folder	61	view_folder
241	Can add icon	62	add_icon
242	Can change icon	62	change_icon
243	Can delete icon	62	delete_icon
244	Can view icon	62	view_icon
245	Can add link	63	add_link
246	Can change link	63	change_link
247	Can delete link	63	delete_link
248	Can view link	63	view_link
249	Can add picture	64	add_picture
250	Can change picture	64	change_picture
251	Can delete picture	64	delete_picture
252	Can view picture	64	view_picture
253	Can add style	65	add_style
254	Can change style	65	change_style
255	Can delete style	65	delete_style
256	Can view style	65	view_style
257	Can add Snippet	66	add_snippet
258	Can change Snippet	66	change_snippet
259	Can delete Snippet	66	delete_snippet
260	Can view Snippet	66	view_snippet
261	Can add Snippet Ptr	67	add_snippetptr
262	Can change Snippet Ptr	67	change_snippetptr
263	Can delete Snippet Ptr	67	delete_snippetptr
264	Can view Snippet Ptr	67	view_snippetptr
265	Can add google map	68	add_googlemap
266	Can change google map	68	change_googlemap
267	Can delete google map	68	delete_googlemap
268	Can view google map	68	view_googlemap
269	Can add google map marker	69	add_googlemapmarker
270	Can change google map marker	69	change_googlemapmarker
271	Can delete google map marker	69	delete_googlemapmarker
272	Can view google map marker	69	view_googlemapmarker
273	Can add google map route	70	add_googlemaproute
274	Can change google map route	70	change_googlemaproute
275	Can delete google map route	70	delete_googlemaproute
276	Can view google map route	70	view_googlemaproute
277	Can add video player	71	add_videoplayer
278	Can change video player	71	change_videoplayer
279	Can delete video player	71	delete_videoplayer
280	Can view video player	71	view_videoplayer
281	Can add video source	72	add_videosource
282	Can change video source	72	change_videosource
283	Can delete video source	72	delete_videosource
285	Can add video track	73	add_videotrack
286	Can change video track	73	change_videotrack
287	Can delete video track	73	delete_videotrack
288	Can view video track	73	view_videotrack
289	Can add test1	74	add_test1
290	Can change test1	74	change_test1
291	Can delete test1	74	delete_test1
292	Can view test1	74	view_test1
293	Can add volunteer application	75	add_volunteerapplication
294	Can change volunteer application	75	change_volunteerapplication
295	Can delete volunteer application	75	delete_volunteerapplication
296	Can view volunteer application	75	view_volunteerapplication
297	Can add profile	76	add_profile
298	Can change profile	76	change_profile
299	Can delete profile	76	delete_profile
300	Can view profile	76	view_profile
301	Can add test1	77	add_test1
302	Can change test1	77	change_test1
303	Can delete test1	77	delete_test1
304	Can view test1	77	view_test1
305	Can add volunteer application	78	add_volunteerapplication
306	Can change volunteer application	78	change_volunteerapplication
307	Can delete volunteer application	78	delete_volunteerapplication
308	Can view volunteer application	78	view_volunteerapplication
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$150000$uV6qVsE6GJ06$aGgq/2kwDaP84H6gOJlEEyAFpbslJn1XJfp05i3zvj4=	2020-10-11 19:36:01.104134+00	t	webmaster	Nicholas	Jones	webmaster@bridge-hospice.com	t	t	2020-05-18 07:10:42+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: background_task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.background_task (id, task_name, task_params, task_hash, verbose_name, priority, run_at, repeat, repeat_until, queue, attempts, failed_at, last_error, locked_by, locked_at, creator_object_id, creator_content_type_id) FROM stdin;
\.


--
-- Data for Name: background_task_completedtask; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.background_task_completedtask (id, task_name, task_params, task_hash, verbose_name, priority, run_at, repeat, repeat_until, queue, attempts, failed_at, last_error, locked_by, locked_at, creator_object_id, creator_content_type_id) FROM stdin;
\.


--
-- Data for Name: bootstrap4_alerts_bootstrap4alerts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_alerts_bootstrap4alerts (cmsplugin_ptr_id, alert_context, alert_dismissable, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_badge_bootstrap4badge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_badge_bootstrap4badge (cmsplugin_ptr_id, badge_text, badge_context, badge_pills, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_card_bootstrap4card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_card_bootstrap4card (cmsplugin_ptr_id, card_type, card_context, card_alignment, card_outline, card_text_color, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_card_bootstrap4cardinner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_card_bootstrap4cardinner (cmsplugin_ptr_id, inner_type, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_carousel_bootstrap4carousel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_carousel_bootstrap4carousel (cmsplugin_ptr_id, template, carousel_interval, carousel_controls, carousel_indicators, carousel_keyboard, carousel_pause, carousel_ride, carousel_wrap, tag_type, attributes, carousel_aspect_ratio) FROM stdin;
783	default	10000	f	f	f	false	carousel	t	div	{"class": "p-0"}	
3594	default	10000	f	f	f	false	carousel	t	div	{"class": "p-0"}	
\.


--
-- Data for Name: bootstrap4_carousel_bootstrap4carouselslide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_carousel_bootstrap4carouselslide (template, name, external_link, anchor, mailto, phone, target, attributes, cmsplugin_ptr_id, carousel_content, tag_type, carousel_image_id, internal_link_id, file_link_id) FROM stdin;
default							{}	784		div	1	\N	\N
default							{}	785		div	5	\N	\N
default							{}	786		div	3	\N	\N
default							{}	787		div	4	\N	\N
default							{}	788		div	2	\N	\N
default							{}	3595		div	1	\N	\N
default							{}	3596		div	5	\N	\N
default							{}	3597		div	3	\N	\N
default							{}	3598		div	4	\N	\N
default							{}	3599		div	2	\N	\N
\.


--
-- Data for Name: bootstrap4_collapse_bootstrap4collapse; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_collapse_bootstrap4collapse (cmsplugin_ptr_id, siblings, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_collapse_bootstrap4collapsecontainer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_collapse_bootstrap4collapsecontainer (cmsplugin_ptr_id, identifier, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_collapse_bootstrap4collapsetrigger; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_collapse_bootstrap4collapsetrigger (cmsplugin_ptr_id, identifier, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_content_bootstrap4blockquote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_content_bootstrap4blockquote (cmsplugin_ptr_id, quote_content, quote_origin, quote_alignment, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_content_bootstrap4code; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_content_bootstrap4code (cmsplugin_ptr_id, code_content, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_content_bootstrap4figure; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_content_bootstrap4figure (cmsplugin_ptr_id, figure_caption, figure_alignment, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_grid_bootstrap4gridcolumn; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_grid_bootstrap4gridcolumn (cmsplugin_ptr_id, column_type, column_alignment, tag_type, attributes, xs_col, xs_order, xs_ml, xs_mr, sm_col, sm_order, sm_ml, sm_mr, md_col, md_order, md_ml, md_mr, lg_col, lg_order, lg_ml, lg_mr, xl_col, xl_order, xl_ml, xl_mr, lg_offset, md_offset, sm_offset, xl_offset, xs_offset) FROM stdin;
55	col		div	{}	12	\N	f	f	\N	\N	f	f	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
260	col	align-self-center	div	{"class": "d-none"}	12	\N	f	f	\N	\N	f	f	6	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
633	col	align-self-center	div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
756	col	align-self-center	div	{"style": "line-height: 1.0;", "class": "text-center my-auto pb-2"}	12	\N	f	f	12	\N	f	f	4	\N	f	f	5	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
758	col	align-self-center	div	{"class": "p-0"}	12	\N	f	f	12	\N	f	f	8	\N	f	f	7	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
761	col	align-self-center	div	{"class": "col-12 col-md"}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
763	col	align-self-center	div	{"class": "col-12 col-md"}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
765	col	align-self-center	div	{"class": "col-12 col-md"}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
767	col		div	{}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
770	col		div	{"class": "text-right"}	4	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
772	col	align-self-center	div	{"class": "text-light text-center text-lg-left mx-auto ml-lg-0", "style": "line-height: 1.1;"}	8	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
775	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
780	col	align-self-center	div	{"class": "text-center"}	8	\N	f	f	7	\N	f	f	6	\N	f	f	5	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
1130	col	align-self-center	div	{"class": "text-center"}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
1138	col	align-self-center	div	{"class": "text-center"}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
1186	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
1235	col		div	{"class": "mt-3"}	12	\N	f	f	\N	\N	f	f	6	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
1240	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
1345	col		div	{"class": "p-5"}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
1349	col		div	{"class": "p-5"}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
1361	col		div	{"class": "mt-3"}	12	\N	f	f	\N	\N	f	f	6	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3325	col		div	{"class": "mt-3"}	12	\N	f	f	\N	\N	f	f	6	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3327	col		div	{"class": "mt-3"}	12	\N	f	f	\N	\N	f	f	6	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3331	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3335	col	align-self-center	div	{"class": "text-center"}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3339	col	align-self-center	div	{"class": "text-center"}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3393	col		div	{}	12	\N	f	f	\N	\N	f	f	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3411	col	align-self-center	div	{"class": "d-none"}	12	\N	f	f	\N	\N	f	f	6	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3414	col	align-self-center	div	{}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3419	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3472	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3480	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3544	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3552	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3556	col		div	{"class": "p-5"}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3565	col	align-self-center	div	{"style": "line-height: 1.0;", "class": "text-center my-auto pb-2"}	12	\N	f	f	12	\N	f	f	4	\N	f	f	5	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3568	col	align-self-center	div	{"class": "p-0"}	12	\N	f	f	12	\N	f	f	8	\N	f	f	7	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3571	col	align-self-center	div	{"class": "col-12 col-md"}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3573	col	align-self-center	div	{"class": "col-12 col-md"}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3575	col	align-self-center	div	{"class": "col-12 col-md"}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3577	col		div	{}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3580	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3585	col	align-self-center	div	{"class": "text-center"}	8	\N	f	f	7	\N	f	f	6	\N	f	f	5	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3589	col		div	{"class": "text-right"}	4	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3591	col	align-self-center	div	{"class": "text-light text-center text-lg-left mx-auto ml-lg-0", "style": "line-height: 1.1;"}	8	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3602	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3606	col	align-self-center	div	{}	12	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3610	col		div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
3641	col	align-self-center	div	{}	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	f	f	\N	\N	\N	\N	\N
\.


--
-- Data for Name: bootstrap4_grid_bootstrap4gridcontainer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_grid_bootstrap4gridcontainer (cmsplugin_ptr_id, container_type, tag_type, attributes) FROM stdin;
53	container	div	{}
480	container	div	{"class": "d-none"}
630	container	div	{}
753	container	div	{"class": "shadow"}
782	container	div	{"class": "p-0"}
1116	container	div	{"class": "hero-container text-center"}
1128	container	div	{"class": ""}
1136	container	div	{"class": ""}
1233	container	div	{}
1238	container	div	{}
1343	container	div	{}
1347	container	div	{}
3323	container	div	{}
3329	container	div	{}
3333	container	div	{"class": ""}
3337	container	div	{"class": ""}
3389	container	div	{"class": "d-none"}
3391	container	div	{}
3470	container	div	{}
3478	container	div	{}
3542	container	div	{}
3550	container	div	{}
3554	container	div	{}
3563	container	div	{"class": "shadow"}
3593	container	div	{"class": "p-0"}
3600	container	div	{"class": "hero-container text-center"}
3632	container	div	{}
3639	container	div	{}
3671	container	div	{}
\.


--
-- Data for Name: bootstrap4_grid_bootstrap4gridrow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_grid_bootstrap4gridrow (cmsplugin_ptr_id, vertical_alignment, horizontal_alignment, gutters, tag_type, attributes) FROM stdin;
54			f	div	{"class": "py-3"}
631	align-items-center	justify-content-center	f	div	{}
755		justify-content-center	f	div	{"class": "nav-box bg-purple"}
760	align-items-center	justify-content-center	f	div	{"class": "nav-box bg-cyan "}
769	align-items-center	justify-content-center	f	div	{"class": "nav-box bg-darkblue hover-dim"}
774	align-items-center	justify-content-center	f	div	{"class": "nav-box bg-orange"}
779	align-items-center	justify-content-center	f	div	{"class": "nav-box bg-yellow hover-dim"}
1129	align-items-center	justify-content-center	f	div	{}
1137	align-items-center	justify-content-center	f	div	{}
1185			f	div	{}
1234			f	div	{}
1239			f	div	{}
1344			f	div	{}
1348			f	div	{}
3324			f	div	{}
3330			f	div	{}
3334	align-items-center	justify-content-center	f	div	{}
3338	align-items-center	justify-content-center	f	div	{}
3392			f	div	{"class": "py-3"}
3413			f	div	{}
3418			f	div	{"class": "px-3"}
3471			f	div	{}
3479			f	div	{}
3543			f	div	{}
3551			f	div	{}
3555			f	div	{}
3564		justify-content-center	f	div	{"class": "nav-box bg-purple"}
3570	align-items-center	justify-content-center	f	div	{"class": "nav-box bg-cyan "}
3579	align-items-center	justify-content-center	f	div	{"class": "nav-box bg-orange"}
3584	align-items-center	justify-content-center	f	div	{"class": "nav-box bg-yellow hover-dim"}
3588	align-items-center	justify-content-center	f	div	{"class": "nav-box bg-darkblue hover-dim"}
3601			f	div	{}
3605			f	div	{}
3609			f	div	{"class": "px-3"}
3640	align-items-center	justify-content-center	f	div	{}
\.


--
-- Data for Name: bootstrap4_jumbotron_bootstrap4jumbotron; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_jumbotron_bootstrap4jumbotron (cmsplugin_ptr_id, fluid, tag_type, attributes) FROM stdin;
3415	t	div	{"class": "bg-secondary text-white mb-0 pt-0 pb-3", "id": "motd"}
3607	t	div	{"class": "bg-secondary text-white mb-0 pt-0 pb-3", "id": "motd"}
\.


--
-- Data for Name: bootstrap4_link_bootstrap4link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_link_bootstrap4link (template, name, external_link, anchor, mailto, phone, target, attributes, cmsplugin_ptr_id, link_type, link_context, link_size, link_outline, link_block, internal_link_id, icon_left, icon_right, file_link_id) FROM stdin;
default							{}	778	link			f	f	8			\N
default							{}	789	link			f	f	7			\N
default	Click here to apply to be a Volunteer						{}	1346	link			f	f	\N			\N
default	Click here to apply						{}	1350	btn	primary		f	f	37			\N
default	Privacy Policy						{}	3482	link			f	f	42			\N
default	Click here to apply						{}	3557	btn	primary		f	f	37			\N
default	Terms of Service						{}	3562	link			f	f	44			\N
default							{}	3583	link			f	f	8			\N
default							{}	3587	link			f	f	7			\N
default	Privacy Policy						{}	3643	link			f	f	42			\N
default	Terms of Service						{}	3644	link			f	f	44			\N
\.


--
-- Data for Name: bootstrap4_listgroup_bootstrap4listgroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_listgroup_bootstrap4listgroup (cmsplugin_ptr_id, list_group_flush, tag_type, attributes) FROM stdin;
56	f	div	{}
3394	f	div	{}
\.


--
-- Data for Name: bootstrap4_listgroup_bootstrap4listgroupitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_listgroup_bootstrap4listgroupitem (cmsplugin_ptr_id, list_context, list_state, tag_type, attributes) FROM stdin;
57			div	{}
59			div	{}
61			div	{}
63			div	{}
65			div	{}
3395			div	{}
3397			div	{}
3402			div	{}
3405			div	{}
3408			div	{}
\.


--
-- Data for Name: bootstrap4_media_bootstrap4media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_media_bootstrap4media (cmsplugin_ptr_id, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_media_bootstrap4mediabody; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_media_bootstrap4mediabody (cmsplugin_ptr_id, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_picture_bootstrap4picture; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_picture_bootstrap4picture (template, external_picture, width, height, alignment, caption_text, attributes, link_url, link_target, link_attributes, use_automatic_scaling, use_no_cropping, use_crop, use_upscale, cmsplugin_ptr_id, picture_fluid, picture_rounded, picture_thumbnail, link_page_id, picture_id, thumbnail_options_id, use_responsive_image) FROM stdin;
default	\N	\N	\N			{"alt": "Valor", "class": ""}	\N		{}	t	f	f	f	771	t	f	f	\N	6	\N	inherit
default	\N	\N	\N			{}	\N		{}	t	f	f	f	781	t	f	f	\N	7	\N	inherit
default	\N	\N	\N			{"alt": "Bridge Hospice", "style": "width: 30%; max-width: 500px;"}	\N		{}	t	f	f	f	1119	t	f	f	\N	13	\N	inherit
default	\N	\N	\N	center		{"class": "text-center"}	\N		{}	t	f	f	f	1131	t	f	f	\N	10	\N	inherit
default	\N	\N	\N	center		{"class": "text-center"}	\N		{}	t	f	f	f	1139	t	f	f	\N	10	\N	inherit
default	\N	\N	\N	center		{"class": "text-center"}	\N		{}	t	f	f	f	3336	t	f	f	\N	10	\N	inherit
default	\N	\N	\N	center		{"class": "text-center"}	\N		{}	t	f	f	f	3340	t	f	f	\N	10	\N	inherit
default	\N	\N	\N			{}	\N		{}	t	f	f	f	3586	t	f	f	\N	7	\N	inherit
default	\N	\N	\N			{"alt": "Valor", "class": ""}	\N		{}	t	f	f	f	3590	t	f	f	\N	6	\N	inherit
default	\N	\N	\N			{"alt": "Bridge Hospice", "style": "width: 30%; max-width: 500px;"}	\N		{}	t	f	f	f	3604	t	f	f	\N	13	\N	inherit
\.


--
-- Data for Name: bootstrap4_tabs_bootstrap4tab; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_tabs_bootstrap4tab (cmsplugin_ptr_id, template, tab_type, tab_alignment, tab_index, tab_effect, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_tabs_bootstrap4tabitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_tabs_bootstrap4tabitem (cmsplugin_ptr_id, tab_title, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_utilities_bootstrap4spacing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bootstrap4_utilities_bootstrap4spacing (cmsplugin_ptr_id, space_property, space_sides, space_size, space_device, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: cms_aliaspluginmodel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
\.


--
-- Data for Name: cms_cmsplugin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
53	1	en	Bootstrap4GridContainerPlugin	2020-05-16 11:38:32.807+00	2020-05-16 11:38:32.81+00	\N	6	1	0	000Y
54	1	en	Bootstrap4GridRowPlugin	2020-05-16 11:38:39.096+00	2020-05-19 02:53:59.451+00	53	6	2	1	000Y0001
55	0	en	Bootstrap4GridColumnPlugin	2020-05-16 11:38:44.663+00	2020-05-19 22:46:31.312+00	54	6	3	1	000Y00010001
56	0	en	Bootstrap4ListGroupPlugin	2020-05-16 11:39:25.947+00	2020-05-16 11:39:25.949+00	55	6	4	5	000Y000100010001
57	0	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:39:40.371+00	2020-05-16 11:39:40.373+00	56	6	5	1	000Y0001000100010001
58	0	en	TextPlugin	2020-05-16 11:39:46.585+00	2020-08-28 05:03:39.671+00	57	6	6	0	000Y00010001000100010001
59	1	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:40:32.515+00	2020-05-16 11:40:32.518+00	56	6	5	1	000Y0001000100010002
60	0	en	TextPlugin	2020-05-16 11:40:34.914+00	2020-05-19 22:47:42.437+00	59	6	6	0	000Y00010001000100020001
61	2	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:40:51.688+00	2020-05-16 11:40:51.691+00	56	6	5	1	000Y0001000100010003
62	0	en	TextPlugin	2020-05-16 11:40:54.407+00	2020-05-19 22:48:25.126+00	61	6	6	0	000Y00010001000100030001
63	3	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:41:08.698+00	2020-05-16 11:41:08.702+00	56	6	5	1	000Y0001000100010004
64	0	en	TextPlugin	2020-05-16 11:41:15.603+00	2020-05-19 22:48:42.046+00	63	6	6	0	000Y00010001000100040001
65	4	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:41:26.19+00	2020-05-16 11:41:26.194+00	56	6	5	1	000Y0001000100010005
66	0	en	TextPlugin	2020-05-16 11:41:29.046+00	2020-05-19 22:48:03.591+00	65	6	6	0	000Y00010001000100050001
244	0	en	GoogleMapPlugin	2020-05-18 05:18:14.212+00	2020-05-18 06:17:16.84+00	480	6	2	0	000X0001
260	1	en	Bootstrap4GridColumnPlugin	2020-05-18 05:52:20.158+00	2020-05-19 22:37:56.795+00	54	6	3	1	000Y00010002
409	0	en	SnippetPlugin	2020-05-18 06:13:01.558+00	2020-05-18 06:19:25.057+00	260	6	4	0	000Y000100020001
480	0	en	Bootstrap4GridContainerPlugin	2020-05-19 02:52:33.89+00	2020-05-19 22:37:34.507+00	\N	6	1	1	000X
630	1	en	Bootstrap4GridContainerPlugin	2020-05-19 22:17:21.254+00	2020-05-19 22:17:21.262+00	\N	4	1	1	0018
631	0	en	Bootstrap4GridRowPlugin	2020-05-19 22:17:54.41+00	2020-05-19 22:19:25.241+00	630	4	2	1	00180001
633	0	en	Bootstrap4GridColumnPlugin	2020-05-19 22:18:12.797+00	2020-07-27 14:29:45.513+00	631	4	3	1	001800010002
753	1	en	Bootstrap4GridContainerPlugin	2020-05-16 08:30:43.899+00	2020-05-19 22:27:21.756+00	\N	2	1	5	001H
755	1	en	Bootstrap4GridRowPlugin	2020-05-16 10:19:58.676+00	2020-05-19 22:27:21.761+00	753	2	2	2	001H0002
756	0	en	Bootstrap4GridColumnPlugin	2020-05-16 10:23:37.425+00	2020-05-19 22:27:21.764+00	755	2	3	2	001H00020001
757	1	en	TextPlugin	2020-05-16 10:24:08.247+00	2020-06-17 05:18:01.999+00	756	2	4	0	001H000200010001
758	1	en	Bootstrap4GridColumnPlugin	2020-05-16 10:23:58.595+00	2020-05-19 23:06:38.249+00	755	2	3	1	001H00020002
759	0	en	TextPlugin	2020-05-16 10:55:28.09+00	2020-06-17 05:18:19.806+00	758	2	4	0	001H000200020001
760	3	en	Bootstrap4GridRowPlugin	2020-05-16 10:59:01.962+00	2020-05-19 22:27:21.787+00	753	2	2	4	001H0003
761	0	en	Bootstrap4GridColumnPlugin	2020-05-16 10:59:01.967+00	2020-05-19 22:27:21.789+00	760	2	3	1	001H00030001
762	0	en	TextPlugin	2020-05-16 11:02:11.678+00	2020-06-17 05:19:05.452+00	761	2	4	0	001H000300010001
763	1	en	Bootstrap4GridColumnPlugin	2020-05-16 10:59:01.969+00	2020-05-19 22:27:21.8+00	760	2	3	1	001H00030002
764	0	en	TextPlugin	2020-05-16 11:03:24.601+00	2020-06-17 05:19:18.509+00	763	2	4	0	001H000300020001
765	2	en	Bootstrap4GridColumnPlugin	2020-05-16 10:59:01.971+00	2020-05-19 22:27:21.813+00	760	2	3	1	001H00030003
766	0	en	TextPlugin	2020-05-16 11:04:20.938+00	2020-06-17 05:19:33.803+00	765	2	4	0	001H000300030001
767	3	en	Bootstrap4GridColumnPlugin	2020-05-19 21:32:30.209+00	2020-05-19 22:33:04.798+00	760	2	3	1	001H00030004
768	0	en	TextPlugin	2020-05-19 21:32:43.858+00	2020-05-19 22:34:27.89+00	767	2	4	0	001H000300040001
769	0	en	Bootstrap4GridRowPlugin	2020-05-16 11:12:17.558+00	2020-05-19 22:27:21.833+00	789	2	3	2	001H00070001
770	0	en	Bootstrap4GridColumnPlugin	2020-05-16 11:20:04.8+00	2020-05-19 22:27:21.835+00	769	2	4	1	001H000700010001
771	0	en	Bootstrap4PicturePlugin	2020-05-16 11:23:20.853+00	2020-05-19 22:28:26.42+00	770	2	5	0	001H0007000100010001
772	1	en	Bootstrap4GridColumnPlugin	2020-05-16 11:20:04.803+00	2020-05-19 22:27:21.844+00	769	2	4	1	001H000700010002
773	0	en	TextPlugin	2020-05-16 11:26:05.387+00	2020-05-19 22:27:21.971+00	772	2	5	0	001H0007000100020001
774	0	en	Bootstrap4GridRowPlugin	2020-05-16 11:31:46.559+00	2020-05-19 22:27:21.855+00	753	2	2	1	001H0005
775	0	en	Bootstrap4GridColumnPlugin	2020-05-16 11:31:46.565+00	2020-05-19 22:27:21.859+00	774	2	3	2	001H00050001
776	0	en	TextPlugin	2020-05-16 11:33:03.958+00	2020-06-17 05:10:12.579+00	775	2	4	0	001H000500010001
777	1	en	TextPlugin	2020-05-18 03:00:15.674+00	2020-05-19 22:27:21.986+00	775	2	4	0	001H000500010002
778	5	en	Bootstrap4LinkPlugin	2020-05-19 22:24:23.224+00	2020-05-21 04:27:49.177+00	753	2	2	1	001H0006
779	0	en	Bootstrap4GridRowPlugin	2020-05-16 11:13:12.805+00	2020-05-19 22:42:36.475+00	778	2	3	1	001H00060001
780	0	en	Bootstrap4GridColumnPlugin	2020-05-16 11:20:26.328+00	2020-05-19 22:43:38.339+00	779	2	4	1	001H000600010001
781	0	en	Bootstrap4PicturePlugin	2020-05-16 11:31:10.099+00	2020-05-19 22:42:15.1+00	780	2	5	0	001H0006000100010001
782	0	en	Bootstrap4GridContainerPlugin	2020-05-19 02:47:53.795+00	2020-05-21 03:56:42.731+00	\N	2	1	3	001I
783	1	en	Bootstrap4CarouselPlugin	2020-05-16 08:32:06.27+00	2020-10-06 15:55:03.759+00	782	2	2	5	001I0001
784	0	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:43:19.355+00	2020-05-19 22:27:21.899+00	783	2	3	0	001I00010001
785	1	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:45:55.891+00	2020-05-19 22:27:21.904+00	783	2	3	0	001I00010002
786	2	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:46:11.472+00	2020-05-19 22:27:21.908+00	783	2	3	0	001I00010003
787	3	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:46:35.592+00	2020-05-19 22:27:21.912+00	783	2	3	0	001I00010004
788	4	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:46:49.607+00	2020-05-19 22:27:21.917+00	783	2	3	0	001I00010005
789	4	en	Bootstrap4LinkPlugin	2020-05-19 22:28:08.898+00	2020-05-21 04:27:28.453+00	753	2	2	1	001H0007
1037	0	en	SnippetPlugin	2020-05-19 23:12:52.586+00	2020-05-19 23:17:44.006+00	756	2	4	0	001H000200010002
1116	2	en	Bootstrap4GridContainerPlugin	2020-05-21 03:52:20.109+00	2020-05-21 04:30:20.742+00	782	2	2	1	001I0004
1118	0	en	TextPlugin	2020-05-21 03:54:56.977+00	2020-06-17 05:35:56.318+00	1186	2	5	0	001I0004000200010001
1119	1	en	Bootstrap4PicturePlugin	2020-05-21 03:56:31.302+00	2020-06-12 19:12:17.799+00	1186	2	5	0	001I0004000200010002
1128	0	en	Bootstrap4GridContainerPlugin	2020-05-19 22:05:06.583+00	2020-05-21 04:23:42.462+00	\N	19	1	1	0021
1129	0	en	Bootstrap4GridRowPlugin	2020-05-19 22:05:19.409+00	2020-05-21 04:23:42.469+00	1128	19	2	1	00210001
1130	0	en	Bootstrap4GridColumnPlugin	2020-05-19 22:05:30.64+00	2020-05-21 04:23:42.476+00	1129	19	3	1	002100010001
1131	0	en	Bootstrap4PicturePlugin	2020-05-19 22:11:13.322+00	2020-05-21 04:23:42.482+00	1130	19	4	0	0021000100010001
1136	0	en	Bootstrap4GridContainerPlugin	2020-05-19 22:05:06.583+00	2020-05-21 04:23:58.612+00	\N	21	1	1	0023
1137	0	en	Bootstrap4GridRowPlugin	2020-05-19 22:05:19.409+00	2020-05-21 04:23:58.618+00	1136	21	2	1	00230001
1138	0	en	Bootstrap4GridColumnPlugin	2020-05-19 22:05:30.64+00	2020-05-21 04:23:58.627+00	1137	21	3	1	002300010001
1139	0	en	Bootstrap4PicturePlugin	2020-05-19 22:11:13.322+00	2020-05-21 04:23:58.634+00	1138	21	4	0	0023000100010001
1185	0	en	Bootstrap4GridRowPlugin	2020-05-21 04:29:21.27+00	2020-05-21 04:29:21.273+00	1116	2	3	1	001I00040002
1186	0	en	Bootstrap4GridColumnPlugin	2020-05-21 04:29:21.276+00	2020-05-21 04:30:14.431+00	1185	2	4	2	001I000400020001
1233	1	en	Bootstrap4GridContainerPlugin	2020-05-22 15:38:32.135+00	2020-06-01 20:50:07.079+00	\N	27	1	1	0028
1234	0	en	Bootstrap4GridRowPlugin	2020-05-22 15:38:42.373+00	2020-06-01 20:48:48.652+00	1233	27	2	2	00280001
1235	0	en	Bootstrap4GridColumnPlugin	2020-05-22 15:38:42.377+00	2020-06-01 20:50:24.477+00	1234	27	3	1	002800010001
1236	0	en	SnippetPlugin	2020-05-22 15:39:16.053+00	2020-06-01 20:53:09.807+00	1235	27	4	0	0028000100010001
1238	0	en	Bootstrap4GridContainerPlugin	2020-05-22 15:56:32.885+00	2020-05-22 15:56:32.888+00	\N	27	1	1	0029
1239	0	en	Bootstrap4GridRowPlugin	2020-05-22 15:56:42.153+00	2020-05-22 15:56:42.156+00	1238	27	2	1	00290001
1240	0	en	Bootstrap4GridColumnPlugin	2020-05-22 15:56:42.158+00	2020-05-31 03:38:56.482+00	1239	27	3	2	002900010001
1241	0	en	TextPlugin	2020-05-22 15:56:48.453+00	2020-05-22 15:56:48.453+00	1240	27	4	0	0029000100010001
1245	1	en	SnippetPlugin	2020-05-22 16:17:29.78+00	2020-06-01 20:54:15.861+00	1240	27	4	0	0029000100010002
1246	0	en	SnippetPlugin	2020-05-22 16:22:06.235+00	2020-06-01 20:46:42.618+00	1361	27	4	0	0028000100020001
1343	0	en	Bootstrap4GridContainerPlugin	2020-05-31 21:54:21.923+00	2020-05-31 21:58:39.146+00	\N	12	1	1	002D
1344	0	en	Bootstrap4GridRowPlugin	2020-05-31 21:54:25.859+00	2020-05-31 21:58:39.159+00	1343	12	2	1	002D0001
1345	0	en	Bootstrap4GridColumnPlugin	2020-05-31 21:54:30.971+00	2020-05-31 21:58:39.173+00	1344	12	3	1	002D00010001
1346	0	en	Bootstrap4LinkPlugin	2020-05-31 21:55:00.372+00	2020-05-31 21:58:39.186+00	1345	12	4	0	002D000100010001
1347	0	en	Bootstrap4GridContainerPlugin	2020-05-31 21:54:21.923+00	2020-05-31 21:58:56.236+00	\N	55	1	1	002E
1348	0	en	Bootstrap4GridRowPlugin	2020-05-31 21:54:25.859+00	2020-05-31 21:58:56.249+00	1347	55	2	1	002E0001
1349	0	en	Bootstrap4GridColumnPlugin	2020-05-31 21:54:30.971+00	2020-05-31 21:58:56.26+00	1348	55	3	3	002E00010001
1350	1	en	Bootstrap4LinkPlugin	2020-05-31 21:55:00.372+00	2020-07-27 14:27:45.73+00	1349	55	4	0	002E000100010001
1351	0	en	TextPlugin	2020-05-31 21:59:18.875+00	2020-06-11 23:05:31.827+00	1349	55	4	0	002E000100010002
1361	1	en	Bootstrap4GridColumnPlugin	2020-06-01 20:44:26.281+00	2020-06-01 20:50:35.55+00	1234	27	3	1	002800010002
1851	2	en	SnippetPlugin	2020-06-11 21:42:14.85+00	2020-06-11 22:50:36.066+00	\N	2	1	0	003C
1853	2	en	TextPlugin	2020-06-11 22:52:10.901+00	2020-06-11 22:52:16.382+00	1349	55	4	0	002E000100010003
1999	0	en	IconPlugin	2020-06-12 23:01:57.645+00	2020-06-12 23:01:57.647+00	60	6	7	0	000Y000100010001000200010001
2000	1	en	IconPlugin	2020-06-12 23:02:38.184+00	2020-06-12 23:02:38.187+00	60	6	7	0	000Y000100010001000200010002
2001	2	en	IconPlugin	2020-06-12 23:04:08.988+00	2020-06-12 23:04:08.991+00	60	6	7	0	000Y000100010001000200010003
2002	0	en	IconPlugin	2020-06-12 23:04:42.607+00	2020-06-12 23:04:42.608+00	62	6	7	0	000Y000100010001000300010001
2003	0	en	IconPlugin	2020-06-12 23:07:32.463+00	2020-06-12 23:07:32.465+00	64	6	7	0	000Y000100010001000400010001
2004	0	en	IconPlugin	2020-06-12 23:10:37.501+00	2020-06-12 23:10:37.503+00	66	6	7	0	000Y000100010001000500010001
2030	0	en	IconPlugin	2020-06-12 23:12:22.883+00	2020-06-12 23:12:22.885+00	1351	55	5	0	002E0001000100020001
3323	1	en	Bootstrap4GridContainerPlugin	2020-05-22 15:38:32.135+00	2020-07-27 14:26:54.385+00	\N	60	1	1	005G
3324	0	en	Bootstrap4GridRowPlugin	2020-05-22 15:38:42.373+00	2020-07-27 14:26:54.387+00	3323	60	2	2	005G0001
3325	0	en	Bootstrap4GridColumnPlugin	2020-05-22 15:38:42.377+00	2020-07-27 14:26:54.39+00	3324	60	3	1	005G00010001
3326	0	en	SnippetPlugin	2020-05-22 15:39:16.053+00	2020-07-27 14:26:54.392+00	3325	60	4	0	005G000100010001
3327	1	en	Bootstrap4GridColumnPlugin	2020-06-01 20:44:26.281+00	2020-07-27 14:26:54.397+00	3324	60	3	1	005G00010002
3328	0	en	SnippetPlugin	2020-05-22 16:22:06.235+00	2020-07-27 14:26:54.399+00	3327	60	4	0	005G000100020001
3329	0	en	Bootstrap4GridContainerPlugin	2020-05-22 15:56:32.885+00	2020-07-27 14:26:54.402+00	\N	60	1	1	005H
3330	0	en	Bootstrap4GridRowPlugin	2020-05-22 15:56:42.153+00	2020-07-27 14:26:54.404+00	3329	60	2	1	005H0001
3331	0	en	Bootstrap4GridColumnPlugin	2020-05-22 15:56:42.158+00	2020-07-27 14:26:54.406+00	3330	60	3	1	005H00010001
3332	1	en	SnippetPlugin	2020-05-22 16:17:29.78+00	2020-07-27 14:26:54.409+00	3331	60	4	0	005H000100010001
3333	0	en	Bootstrap4GridContainerPlugin	2020-05-19 22:05:06.583+00	2020-07-27 14:26:57.816+00	\N	23	1	1	005I
3334	0	en	Bootstrap4GridRowPlugin	2020-05-19 22:05:19.409+00	2020-07-27 14:26:57.818+00	3333	23	2	1	005I0001
3335	0	en	Bootstrap4GridColumnPlugin	2020-05-19 22:05:30.64+00	2020-07-27 14:26:57.821+00	3334	23	3	1	005I00010001
3336	0	en	Bootstrap4PicturePlugin	2020-05-19 22:11:13.322+00	2020-07-27 14:26:57.824+00	3335	23	4	0	005I000100010001
3337	0	en	Bootstrap4GridContainerPlugin	2020-05-19 22:05:06.583+00	2020-07-27 14:27:01.092+00	\N	25	1	1	005J
3338	0	en	Bootstrap4GridRowPlugin	2020-05-19 22:05:19.409+00	2020-07-27 14:27:01.093+00	3337	25	2	1	005J0001
3339	0	en	Bootstrap4GridColumnPlugin	2020-05-19 22:05:30.64+00	2020-07-27 14:27:01.096+00	3338	25	3	1	005J00010001
3340	0	en	Bootstrap4PicturePlugin	2020-05-19 22:11:13.322+00	2020-07-27 14:27:01.099+00	3339	25	4	0	005J000100010001
3341	0	en	TextPlugin	2020-07-27 14:29:55.12+00	2020-10-06 17:20:19.004+00	633	4	4	2	0018000100020001
3389	0	en	Bootstrap4GridContainerPlugin	2020-05-19 02:52:33.89+00	2020-08-28 05:04:06.71+00	\N	7	1	1	005O
3390	0	en	GoogleMapPlugin	2020-05-18 05:18:14.212+00	2020-08-28 05:04:06.712+00	3389	7	2	0	005O0001
3391	1	en	Bootstrap4GridContainerPlugin	2020-05-16 11:38:32.807+00	2020-08-28 05:04:06.716+00	\N	7	1	1	005P
3392	1	en	Bootstrap4GridRowPlugin	2020-05-16 11:38:39.096+00	2020-08-28 05:04:06.717+00	3391	7	2	2	005P0001
3393	0	en	Bootstrap4GridColumnPlugin	2020-05-16 11:38:44.663+00	2020-08-28 05:04:06.72+00	3392	7	3	1	005P00010001
3394	0	en	Bootstrap4ListGroupPlugin	2020-05-16 11:39:25.947+00	2020-08-28 05:04:06.722+00	3393	7	4	5	005P000100010001
3395	0	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:39:40.371+00	2020-08-28 05:04:06.725+00	3394	7	5	1	005P0001000100010001
3396	0	en	TextPlugin	2020-05-16 11:39:46.585+00	2020-08-28 05:04:06.807+00	3395	7	6	0	005P00010001000100010001
3397	1	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:40:32.515+00	2020-08-28 05:04:06.736+00	3394	7	5	1	005P0001000100010002
3398	0	en	TextPlugin	2020-05-16 11:40:34.914+00	2020-08-28 05:04:06.816+00	3397	7	6	3	005P00010001000100020001
3399	0	en	IconPlugin	2020-06-12 23:01:57.645+00	2020-08-28 05:04:06.747+00	3398	7	7	0	005P000100010001000200010001
3400	1	en	IconPlugin	2020-06-12 23:02:38.184+00	2020-08-28 05:04:06.751+00	3398	7	7	0	005P000100010001000200010002
3401	2	en	IconPlugin	2020-06-12 23:04:08.988+00	2020-08-28 05:04:06.756+00	3398	7	7	0	005P000100010001000200010003
3402	2	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:40:51.688+00	2020-08-28 05:04:06.761+00	3394	7	5	1	005P0001000100010003
3403	0	en	TextPlugin	2020-05-16 11:40:54.407+00	2020-08-28 05:04:06.824+00	3402	7	6	1	005P00010001000100030001
3404	0	en	IconPlugin	2020-06-12 23:04:42.607+00	2020-08-28 05:04:06.769+00	3403	7	7	0	005P000100010001000300010001
3405	3	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:41:08.698+00	2020-08-28 05:04:06.773+00	3394	7	5	1	005P0001000100010004
3406	0	en	TextPlugin	2020-05-16 11:41:15.603+00	2020-08-28 05:04:06.831+00	3405	7	6	1	005P00010001000100040001
3407	0	en	IconPlugin	2020-06-12 23:07:32.463+00	2020-08-28 05:04:06.783+00	3406	7	7	0	005P000100010001000400010001
3408	4	en	Bootstrap4ListGroupItemPlugin	2020-05-16 11:41:26.19+00	2020-08-28 05:04:06.787+00	3394	7	5	1	005P0001000100010005
3409	0	en	TextPlugin	2020-05-16 11:41:29.046+00	2020-08-28 05:04:06.838+00	3408	7	6	1	005P00010001000100050001
3410	0	en	IconPlugin	2020-06-12 23:10:37.501+00	2020-08-28 05:04:06.795+00	3409	7	7	0	005P000100010001000500010001
3411	1	en	Bootstrap4GridColumnPlugin	2020-05-18 05:52:20.158+00	2020-08-28 05:04:06.799+00	3392	7	3	1	005P00010002
3412	0	en	SnippetPlugin	2020-05-18 06:13:01.558+00	2020-08-28 05:04:06.802+00	3411	7	4	0	005P000100020001
3413	0	en	Bootstrap4GridRowPlugin	2020-10-06 15:39:49.079+00	2020-10-06 15:46:04.481+00	782	2	2	1	001I0005
3414	0	en	Bootstrap4GridColumnPlugin	2020-10-06 15:40:04.774+00	2020-10-06 15:45:36.941+00	3413	2	3	1	001I00050001
3415	0	en	Bootstrap4JumbotronPlugin	2020-10-06 15:40:28.016+00	2020-10-06 16:11:18.69+00	3414	2	4	2	001I000500010001
3416	0	en	TextPlugin	2020-10-06 15:40:46.578+00	2020-10-06 16:09:51.195+00	3419	2	7	0	001I000500010001000300010001
3417	0	en	SnippetPlugin	2020-10-06 15:43:59.336+00	2020-10-06 16:05:24.786+00	3415	2	5	0	001I0005000100010002
3418	2	en	Bootstrap4GridRowPlugin	2020-10-06 16:11:02.507+00	2020-10-06 16:11:43.186+00	3415	2	5	1	001I0005000100010003
3419	0	en	Bootstrap4GridColumnPlugin	2020-10-06 16:11:02.519+00	2020-10-06 16:11:02.519+00	3418	2	6	1	001I00050001000100030001
3470	0	en	Bootstrap4GridContainerPlugin	2020-10-06 17:09:21.133+00	2020-10-06 17:09:21.137+00	\N	90	1	1	005T
3471	0	en	Bootstrap4GridRowPlugin	2020-10-06 17:09:26.931+00	2020-10-06 17:09:26.934+00	3470	90	2	1	005T0001
3472	0	en	Bootstrap4GridColumnPlugin	2020-10-06 17:09:30.636+00	2020-10-06 17:09:30.642+00	3471	90	3	1	005T00010001
3473	0	en	TextPlugin	2020-10-06 17:09:39.234+00	2020-10-06 17:10:25.819+00	3472	90	4	0	005T000100010001
3478	0	en	Bootstrap4GridContainerPlugin	2020-10-06 17:09:21.133+00	2020-10-06 17:11:13.282+00	\N	92	1	1	005U
3479	0	en	Bootstrap4GridRowPlugin	2020-10-06 17:09:26.931+00	2020-10-06 17:11:13.283+00	3478	92	2	1	005U0001
3480	0	en	Bootstrap4GridColumnPlugin	2020-10-06 17:09:30.636+00	2020-10-06 17:11:13.286+00	3479	92	3	1	005U00010001
3481	0	en	TextPlugin	2020-10-06 17:09:39.234+00	2020-10-06 17:11:13.346+00	3480	92	4	0	005U000100010001
3482	0	en	Bootstrap4LinkPlugin	2020-10-06 17:12:12.9+00	2020-10-06 17:12:12.915+00	3341	4	5	0	00180001000200010001
3542	0	en	Bootstrap4GridContainerPlugin	2020-10-06 17:09:21.133+00	2020-10-06 17:17:04.472+00	\N	94	1	1	005Z
3543	0	en	Bootstrap4GridRowPlugin	2020-10-06 17:09:26.931+00	2020-10-06 17:17:04.474+00	3542	94	2	1	005Z0001
3544	0	en	Bootstrap4GridColumnPlugin	2020-10-06 17:09:30.636+00	2020-10-06 17:17:04.477+00	3543	94	3	1	005Z00010001
3545	0	en	TextPlugin	2020-10-06 17:09:39.234+00	2020-10-06 17:17:24.851+00	3544	94	4	0	005Z000100010001
3550	0	en	Bootstrap4GridContainerPlugin	2020-10-06 17:09:21.133+00	2020-10-06 17:17:56.216+00	\N	96	1	1	0060
3551	0	en	Bootstrap4GridRowPlugin	2020-10-06 17:09:26.931+00	2020-10-06 17:17:56.218+00	3550	96	2	1	00600001
3552	0	en	Bootstrap4GridColumnPlugin	2020-10-06 17:09:30.636+00	2020-10-06 17:17:56.221+00	3551	96	3	1	006000010001
3553	0	en	TextPlugin	2020-10-06 17:09:39.234+00	2020-10-06 17:17:56.255+00	3552	96	4	0	0060000100010001
3554	0	en	Bootstrap4GridContainerPlugin	2020-05-31 21:54:21.923+00	2020-10-06 17:18:22.027+00	\N	57	1	1	0061
3555	0	en	Bootstrap4GridRowPlugin	2020-05-31 21:54:25.859+00	2020-10-06 17:18:22.029+00	3554	57	2	1	00610001
3556	0	en	Bootstrap4GridColumnPlugin	2020-05-31 21:54:30.971+00	2020-10-06 17:18:22.031+00	3555	57	3	3	006100010001
3557	1	en	Bootstrap4LinkPlugin	2020-05-31 21:55:00.372+00	2020-10-06 17:18:22.034+00	3556	57	4	0	0061000100010001
3558	0	en	TextPlugin	2020-05-31 21:59:18.875+00	2020-10-06 17:18:22.055+00	3556	57	4	1	0061000100010002
3559	0	en	IconPlugin	2020-06-12 23:12:22.883+00	2020-10-06 17:18:22.044+00	3558	57	5	0	00610001000100020001
3560	2	en	TextPlugin	2020-06-11 22:52:10.901+00	2020-10-06 17:18:22.063+00	3556	57	4	0	0061000100010003
3562	1	en	Bootstrap4LinkPlugin	2020-10-06 17:20:05.647+00	2020-10-06 17:20:05.663+00	3341	4	5	0	00180001000200010002
3563	1	en	Bootstrap4GridContainerPlugin	2020-05-16 08:30:43.899+00	2020-10-06 17:20:27.423+00	\N	3	1	5	0062
3564	1	en	Bootstrap4GridRowPlugin	2020-05-16 10:19:58.676+00	2020-10-06 17:20:27.425+00	3563	3	2	2	00620001
3565	0	en	Bootstrap4GridColumnPlugin	2020-05-16 10:23:37.425+00	2020-10-06 17:20:27.427+00	3564	3	3	2	006200010001
3566	1	en	TextPlugin	2020-05-16 10:24:08.247+00	2020-10-06 17:20:27.648+00	3565	3	4	0	0062000100010001
3567	0	en	SnippetPlugin	2020-05-19 23:12:52.586+00	2020-10-06 17:20:27.438+00	3565	3	4	0	0062000100010002
3568	1	en	Bootstrap4GridColumnPlugin	2020-05-16 10:23:58.595+00	2020-10-06 17:20:27.443+00	3564	3	3	1	006200010002
3569	0	en	TextPlugin	2020-05-16 10:55:28.09+00	2020-10-06 17:20:27.657+00	3568	3	4	0	0062000100020001
3570	3	en	Bootstrap4GridRowPlugin	2020-05-16 10:59:01.962+00	2020-10-06 17:20:27.457+00	3563	3	2	4	00620002
3571	0	en	Bootstrap4GridColumnPlugin	2020-05-16 10:59:01.967+00	2020-10-06 17:20:27.46+00	3570	3	3	1	006200020001
3572	0	en	TextPlugin	2020-05-16 11:02:11.678+00	2020-10-06 17:20:27.666+00	3571	3	4	0	0062000200010001
3573	1	en	Bootstrap4GridColumnPlugin	2020-05-16 10:59:01.969+00	2020-10-06 17:20:27.473+00	3570	3	3	1	006200020002
3574	0	en	TextPlugin	2020-05-16 11:03:24.601+00	2020-10-06 17:20:27.674+00	3573	3	4	0	0062000200020001
3575	2	en	Bootstrap4GridColumnPlugin	2020-05-16 10:59:01.971+00	2020-10-06 17:20:27.485+00	3570	3	3	1	006200020003
3576	0	en	TextPlugin	2020-05-16 11:04:20.938+00	2020-10-06 17:20:27.685+00	3575	3	4	0	0062000200030001
3577	3	en	Bootstrap4GridColumnPlugin	2020-05-19 21:32:30.209+00	2020-10-06 17:20:27.495+00	3570	3	3	1	006200020004
3578	0	en	TextPlugin	2020-05-19 21:32:43.858+00	2020-10-06 17:20:27.699+00	3577	3	4	0	0062000200040001
3579	0	en	Bootstrap4GridRowPlugin	2020-05-16 11:31:46.559+00	2020-10-06 17:20:27.506+00	3563	3	2	1	00620003
3580	0	en	Bootstrap4GridColumnPlugin	2020-05-16 11:31:46.565+00	2020-10-06 17:20:27.508+00	3579	3	3	2	006200030001
3581	0	en	TextPlugin	2020-05-16 11:33:03.958+00	2020-10-06 17:20:27.707+00	3580	3	4	0	0062000300010001
3582	1	en	TextPlugin	2020-05-18 03:00:15.674+00	2020-10-06 17:20:27.714+00	3580	3	4	0	0062000300010002
3583	5	en	Bootstrap4LinkPlugin	2020-05-19 22:24:23.224+00	2020-10-06 17:20:27.524+00	3563	3	2	1	00620004
3584	0	en	Bootstrap4GridRowPlugin	2020-05-16 11:13:12.805+00	2020-10-06 17:20:27.528+00	3583	3	3	1	006200040001
3585	0	en	Bootstrap4GridColumnPlugin	2020-05-16 11:20:26.328+00	2020-10-06 17:20:27.531+00	3584	3	4	1	0062000400010001
3586	0	en	Bootstrap4PicturePlugin	2020-05-16 11:31:10.099+00	2020-10-06 17:20:27.534+00	3585	3	5	0	00620004000100010001
3587	4	en	Bootstrap4LinkPlugin	2020-05-19 22:28:08.898+00	2020-10-06 17:20:27.542+00	3563	3	2	1	00620005
3588	0	en	Bootstrap4GridRowPlugin	2020-05-16 11:12:17.558+00	2020-10-06 17:20:27.544+00	3587	3	3	2	006200050001
3589	0	en	Bootstrap4GridColumnPlugin	2020-05-16 11:20:04.8+00	2020-10-06 17:20:27.546+00	3588	3	4	1	0062000500010001
3590	0	en	Bootstrap4PicturePlugin	2020-05-16 11:23:20.853+00	2020-10-06 17:20:27.55+00	3589	3	5	0	00620005000100010001
3591	1	en	Bootstrap4GridColumnPlugin	2020-05-16 11:20:04.803+00	2020-10-06 17:20:27.558+00	3588	3	4	1	0062000500010002
3592	0	en	TextPlugin	2020-05-16 11:26:05.387+00	2020-10-06 17:20:27.722+00	3591	3	5	0	00620005000100020001
3593	0	en	Bootstrap4GridContainerPlugin	2020-05-19 02:47:53.795+00	2020-10-06 17:20:27.568+00	\N	3	1	3	0063
3594	1	en	Bootstrap4CarouselPlugin	2020-05-16 08:32:06.27+00	2020-10-06 17:20:27.57+00	3593	3	2	5	00630001
3595	0	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:43:19.355+00	2020-10-06 17:20:27.574+00	3594	3	3	0	006300010001
3596	1	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:45:55.891+00	2020-10-06 17:20:27.579+00	3594	3	3	0	006300010002
3597	2	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:46:11.472+00	2020-10-06 17:20:27.583+00	3594	3	3	0	006300010003
3598	3	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:46:35.592+00	2020-10-06 17:20:27.587+00	3594	3	3	0	006300010004
3599	4	en	Bootstrap4CarouselSlidePlugin	2020-05-16 08:46:49.607+00	2020-10-06 17:20:27.593+00	3594	3	3	0	006300010005
3600	2	en	Bootstrap4GridContainerPlugin	2020-05-21 03:52:20.109+00	2020-10-06 17:20:27.598+00	3593	3	2	1	00630002
3601	0	en	Bootstrap4GridRowPlugin	2020-05-21 04:29:21.27+00	2020-10-06 17:20:27.601+00	3600	3	3	1	006300020001
3602	0	en	Bootstrap4GridColumnPlugin	2020-05-21 04:29:21.276+00	2020-10-06 17:20:27.604+00	3601	3	4	2	0063000200010001
3603	0	en	TextPlugin	2020-05-21 03:54:56.977+00	2020-10-06 17:20:27.731+00	3602	3	5	0	00630002000100010001
3604	1	en	Bootstrap4PicturePlugin	2020-05-21 03:56:31.302+00	2020-10-06 17:20:27.614+00	3602	3	5	0	00630002000100010002
3605	0	en	Bootstrap4GridRowPlugin	2020-10-06 15:39:49.079+00	2020-10-06 17:20:27.62+00	3593	3	2	1	00630003
3606	0	en	Bootstrap4GridColumnPlugin	2020-10-06 15:40:04.774+00	2020-10-06 17:20:27.622+00	3605	3	3	1	006300030001
3607	0	en	Bootstrap4JumbotronPlugin	2020-10-06 15:40:28.016+00	2020-10-06 17:20:27.625+00	3606	3	4	2	0063000300010001
3608	0	en	SnippetPlugin	2020-10-06 15:43:59.336+00	2020-10-06 17:20:27.627+00	3607	3	5	0	00630003000100010001
3609	2	en	Bootstrap4GridRowPlugin	2020-10-06 16:11:02.507+00	2020-10-06 17:20:27.631+00	3607	3	5	1	00630003000100010002
3610	0	en	Bootstrap4GridColumnPlugin	2020-10-06 16:11:02.519+00	2020-10-06 17:20:27.633+00	3609	3	6	1	006300030001000100020001
3611	0	en	TextPlugin	2020-10-06 15:40:46.578+00	2020-10-06 17:20:27.739+00	3610	3	7	0	0063000300010001000200010001
3612	2	en	SnippetPlugin	2020-06-11 21:42:14.85+00	2020-10-06 17:20:27.644+00	\N	3	1	0	0064
3630	1	en	SnippetPlugin	2020-10-10 19:07:51.093+00	2020-10-10 19:36:39.195+00	3632	102	2	0	006C0002
3632	0	en	Bootstrap4GridContainerPlugin	2020-10-10 19:52:44.453+00	2020-10-11 19:11:44.148+00	\N	102	1	2	006C
3639	1	en	Bootstrap4GridContainerPlugin	2020-05-19 22:17:21.254+00	2020-10-10 21:55:56.392+00	\N	5	1	1	006E
3640	0	en	Bootstrap4GridRowPlugin	2020-05-19 22:17:54.41+00	2020-10-10 21:55:56.403+00	3639	5	2	1	006E0001
3641	0	en	Bootstrap4GridColumnPlugin	2020-05-19 22:18:12.797+00	2020-10-10 21:55:56.416+00	3640	5	3	1	006E00010001
3642	0	en	TextPlugin	2020-07-27 14:29:55.12+00	2020-10-10 21:55:56.477+00	3641	5	4	2	006E000100010001
3643	0	en	Bootstrap4LinkPlugin	2020-10-06 17:12:12.9+00	2020-10-10 21:55:56.446+00	3642	5	5	0	006E0001000100010001
3644	1	en	Bootstrap4LinkPlugin	2020-10-06 17:20:05.647+00	2020-10-10 21:55:56.458+00	3642	5	5	0	006E0001000100010002
3673	1	en	SnippetPlugin	2020-10-10 19:07:51.093+00	2020-10-11 20:48:01.547613+00	3671	104	2	0	006F0002
3671	0	en	Bootstrap4GridContainerPlugin	2020-10-10 19:52:44.453+00	2020-10-11 20:48:01.543347+00	\N	104	1	2	006F
3622	0	en	SnippetPlugin	2020-10-10 19:06:08.545+00	2020-10-11 20:42:45.981244+00	3632	102	2	0	006C0001
3672	0	en	SnippetPlugin	2020-10-10 19:06:08.545+00	2020-10-11 20:48:01.544572+00	3671	104	2	0	006F0001
\.


--
-- Data for Name: cms_globalpagepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
\.


--
-- Data for Name: cms_globalpagepermission_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
\.


--
-- Data for Name: cms_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
1	admin	webmaster	2020-05-16 08:19:51.384+00	2020-06-11 21:08:44.055+00	2020-05-16 08:19:51.395+00	\N	f	f	\N	\N	landing-page.html	f	\N	t	\N	\N	t	en	0	2	f	1
2	admin	webmaster	2020-05-16 08:19:51.396+00	2020-10-06 17:20:27.153+00	2020-05-16 08:19:51.395+00	\N	f	f	\N	\N	landing-page.html	f	\N	t	\N	\N	f	en	0	1	f	1
3	admin	webmaster	2020-05-16 08:20:12.067+00	2020-06-11 21:16:12.765+00	2020-05-16 11:41:45.67+00	\N	t	f	\N	\N	basic-page.html	f	\N	f	\N	\N	t	en	0	4	f	2
4	admin	webmaster	2020-05-16 11:41:45.67+00	2020-08-28 05:04:06.497+00	2020-05-16 11:41:45.67+00	\N	t	f	\N	\N	basic-page.html	f	\N	f	\N	\N	f	en	0	3	f	2
7	webmaster	webmaster	2020-05-21 04:13:16.323+00	2020-06-17 05:40:59.813+00	2020-05-21 04:14:18.11+00	\N	f	f	\N	\N	basic-page.html	f	\N	f	\N	\N	t	en	0	10	f	4
8	webmaster	webmaster	2020-05-21 04:13:52.498+00	2020-06-17 05:40:58.464+00	2020-05-21 04:13:58.914+00	\N	f	f	\N	\N	basic-page.html	f	\N	f	\N	\N	t	en	0	9	f	5
9	webmaster	webmaster	2020-05-21 04:13:58.914+00	2020-07-27 14:26:57.786+00	2020-05-21 04:13:58.914+00	\N	f	f	\N	\N	basic-page.html	f	\N	f	\N	\N	f	en	0	8	f	5
10	webmaster	webmaster	2020-05-21 04:14:18.11+00	2020-07-27 14:27:01.063+00	2020-05-21 04:14:18.11+00	\N	f	f	\N	\N	basic-page.html	f	\N	f	\N	\N	f	en	0	7	f	4
11	webmaster	webmaster	2020-05-22 15:38:14.008+00	2020-06-11 21:19:34.661+00	2020-06-01 20:54:34.725+00	\N	t	f	\N	\N	basic-page.html	f	\N	f	\N	\N	t	en	0	27	f	6
25	webmaster	webmaster	2020-05-31 21:58:18.453+00	2020-06-13 01:42:44.484+00	2020-05-31 22:01:29.795+00	\N	t	f	\N	\N	basic-page.html	f	\N	f	\N	\N	t	en	0	26	f	15
26	webmaster	webmaster	2020-05-31 22:01:29.795+00	2020-10-06 17:18:21.875+00	2020-05-31 22:01:29.795+00	\N	t	f	\N	\N	basic-page.html	f	\N	f	\N	\N	f	en	0	25	f	15
27	webmaster	webmaster	2020-06-01 20:54:34.726+00	2020-07-27 14:26:54.352+00	2020-06-01 20:54:34.725+00	\N	t	f	\N	\N	basic-page.html	f	\N	f	\N	\N	f	en	0	11	f	6
36	webmaster	webmaster	2020-06-17 02:56:43.387+00	2020-06-17 02:56:59+00	2020-06-17 02:57:19.044+00	\N	f	f	\N	\N	INHERIT	f	\N	f	Formhook	core_forms	t	en	0	39	f	20
37	webmaster	webmaster	2020-06-17 02:57:06.219+00	2020-06-17 02:57:06.231+00	2020-06-17 02:57:38.881+00	\N	t	f	\N	\N	INHERIT	f	\N	f	\N	\N	t	en	0	40	f	21
38	webmaster	webmaster	2020-06-17 02:57:14.15+00	2020-06-17 02:58:08.892+00	2020-06-17 02:57:43.386+00	\N	t	f	\N	\N	INHERIT	f	\N	f	\N	\N	t	en	0	41	f	22
39	webmaster	webmaster	2020-06-17 02:57:19.044+00	2020-09-15 21:28:10.41+00	2020-06-17 02:57:19.044+00	\N	f	f	\N	\N	INHERIT	f	\N	f	Formhook	core_forms	f	en	0	36	f	20
40	webmaster	webmaster	2020-06-17 02:57:38.882+00	2020-09-15 21:28:20.234+00	2020-06-17 02:57:38.881+00	\N	t	f	\N	\N	INHERIT	f	\N	f	\N	\N	f	en	0	37	f	21
41	webmaster	webmaster	2020-06-17 02:57:43.386+00	2020-06-17 02:58:12.052+00	2020-06-17 02:57:43.386+00	\N	t	f	\N	\N	INHERIT	f	\N	f	\N	\N	f	en	0	38	f	22
42	webmaster	webmaster	2020-10-06 17:09:02.151+00	2020-10-06 17:11:08.503+00	2020-10-06 17:09:10.398+00	\N	f	f	\N	\N	INHERIT	f	\N	f	\N	\N	t	en	0	43	f	23
43	webmaster	webmaster	2020-10-06 17:09:10.398+00	2020-10-06 17:11:13.143+00	2020-10-06 17:09:10.398+00	\N	f	f	\N	\N	INHERIT	f	\N	f	\N	\N	f	en	0	42	f	23
44	webmaster	webmaster	2020-10-06 17:17:04.184+00	2020-10-06 17:17:53.199+00	2020-10-06 17:17:48.721+00	\N	f	f	\N	\N	INHERIT	f	\N	f	\N	\N	t	en	0	45	f	24
45	webmaster	webmaster	2020-10-06 17:17:48.721+00	2020-10-06 17:17:56.086+00	2020-10-06 17:17:48.721+00	\N	f	f	\N	\N	INHERIT	f	\N	f	\N	\N	f	en	0	44	f	24
49	webmaster	webmaster	2020-10-10 19:06:35.442+00	2020-10-11 20:48:01.466076+00	2020-10-10 19:06:35.442+00	\N	f	f	\N	\N	INHERIT	f	\N	f	\N	\N	f	en	0	48	f	26
48	webmaster	webmaster	2020-10-10 19:06:27.537+00	2020-10-10 21:55:49.243+00	2020-10-10 19:06:35.442+00	\N	f	f	\N	\N	INHERIT	f	\N	f	\N	\N	t	en	0	49	f	26
53	webmaster	webmaster	2020-10-12 20:04:05.436525+00	2020-10-12 20:04:25.937452+00	2020-10-12 20:04:05.436362+00	\N	t	f	\N	\N	INHERIT	f	\N	f	CoreAppHook	core_app	f	en	0	52	f	28
52	webmaster	webmaster	2020-10-12 20:03:59.775055+00	2020-10-12 20:04:22.346072+00	2020-10-12 20:04:05.436362+00	\N	t	f	\N	\N	INHERIT	f	\N	f	CoreAppHook	core_app	t	en	0	53	f	28
55	webmaster	webmaster	2020-10-12 20:04:59.842196+00	2020-10-12 20:04:59.842209+00	2020-10-12 20:04:59.842018+00	\N	t	f	\N	\N	INHERIT	f	\N	f	\N	\N	f	en	0	54	f	29
54	webmaster	webmaster	2020-10-12 20:04:52.309388+00	2020-10-12 20:04:52.324997+00	2020-10-12 20:04:59.842018+00	\N	t	f	\N	\N	INHERIT	f	\N	f	\N	\N	t	en	0	55	f	29
\.


--
-- Data for Name: cms_page_placeholders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
1	1	2
2	2	3
3	3	10
4	3	6
5	4	11
6	4	7
7	7	18
8	7	19
9	8	20
10	8	21
11	9	22
12	9	23
13	10	24
14	10	25
15	11	26
16	11	27
17	25	54
18	25	55
19	26	56
20	26	57
21	27	59
22	27	60
27	36	77
28	36	78
29	37	80
30	37	79
31	38	81
32	38	82
33	39	83
34	39	84
35	40	85
36	40	86
37	41	88
38	41	87
39	42	89
40	42	90
41	43	91
42	43	92
43	44	93
44	44	94
45	45	96
46	45	95
47	48	101
48	48	102
49	49	104
50	49	103
55	52	109
56	52	110
57	53	111
58	53	112
59	54	113
60	54	114
61	55	115
62	55	116
\.


--
-- Data for Name: cms_pagepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
\.


--
-- Data for Name: cms_pageuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
\.


--
-- Data for Name: cms_pageusergroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
\.


--
-- Data for Name: cms_placeholder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_placeholder (id, slot, default_width) FROM stdin;
1	clipboard	\N
2	content	\N
3	content	\N
4	Footer	\N
5	Footer	\N
6	content	\N
7	content	\N
8	subheading	\N
9	subheading	\N
10	subheading	\N
11	subheading	\N
12	clipboard	\N
13	clipboard	\N
18	subheading	\N
19	content	\N
20	subheading	\N
21	content	\N
22	subheading	\N
23	content	\N
24	subheading	\N
25	content	\N
26	subheading	\N
27	content	\N
54	subheading	\N
55	content	\N
56	subheading	\N
57	content	\N
58	clipboard	\N
59	subheading	\N
60	content	\N
77	subheading	\N
78	content	\N
79	subheading	\N
80	content	\N
81	subheading	\N
82	content	\N
83	subheading	\N
84	content	\N
85	subheading	\N
86	content	\N
87	subheading	\N
88	content	\N
89	subheading	\N
90	content	\N
91	subheading	\N
92	content	\N
93	subheading	\N
94	content	\N
95	subheading	\N
96	content	\N
101	subheading	\N
102	content	\N
103	subheading	\N
104	content	\N
109	subheading	\N
110	content	\N
111	subheading	\N
112	content	\N
113	subheading	\N
114	content	\N
115	subheading	\N
116	content	\N
\.


--
-- Data for Name: cms_placeholderreference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
\.


--
-- Data for Name: cms_staticplaceholder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
1		Footer	f	template	4	5	\N
\.


--
-- Data for Name: cms_title; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
1	en	Bridge Hospice: Uniting the Patient and Family		Home	Bridge Hospice Lubbock, Tx offers the following: Pre-Admission Consultation, Hospice Aides for Personal Care, Trained Volunteers, Medical Equipment and Supplies, Continuous Care Requiring Intense Intervention, Hospice Nursing Care, Social Work and Pastoral Care, Pain and Symptom Management, Available 24 hours	home		f	\N	2020-05-16 08:19:51.386+00	t	t	0	1	2
2	en	Bridge Hospice: Uniting the Patient and Family		Home	Bridge Hospice Lubbock, Tx offers the following: Pre-Admission Consultation, Hospice Aides for Personal Care, Trained Volunteers, Medical Equipment and Supplies, Continuous Care Requiring Intense Intervention, Hospice Nursing Care, Social Work and Pastoral Care, Pain and Symptom Management, Available 24 hours	home		f	\N	2020-05-16 08:19:51.386+00	t	f	0	2	1
3	en	Contact Us - Address, Phone, & Email | Bridge Hospice	Contact Us	Contact	Bridge Hospice Contact Information 8212 Ithaca Suite W2 Lubbock, Tx 79423, 8069933900, support@bridge-hospice.com, Hours of Operation, Office Hours, Availability, Inquiries	contact	contact	f	\N	2020-05-16 08:20:12.068+00	t	t	0	3	4
4	en	Contact Us - Address, Phone, & Email | Bridge Hospice	Contact Us	Contact	Bridge Hospice Contact Information 8212 Ithaca Suite W2 Lubbock, Tx 79423, 8069933900, support@bridge-hospice.com, Hours of Operation, Office Hours, Availability, Inquiries	contact	contact	f	\N	2020-05-16 08:20:12.068+00	t	f	0	4	3
7	en	Valor - Military & Public Safety | Bridge Hospice	Valor - Military & Public Safety	Valor	Our admiration for veterans in the military and public safety branches and providing community events for appreciation.	valor	valor	f	\N	2020-05-21 04:13:16.325+00	t	t	0	7	10
8	en	Donations - Dave's Wish | Bridge Hospice	Donations and Dave's Wish	Donation	Providing for patients can be expensive and connecting patients with their community is our goal. Please help by providing donations to ensure that patients get the best experience.	donation	donation	f	\N	2020-05-21 04:13:52.498+00	t	t	0	8	9
9	en	Donations - Dave's Wish | Bridge Hospice	Donations and Dave's Wish	Donation	Providing for patients can be expensive and connecting patients with their community is our goal. Please help by providing donations to ensure that patients get the best experience.	donation	donation	f	\N	2020-05-21 04:13:52.498+00	t	f	0	9	8
10	en	Valor - Military & Public Safety | Bridge Hospice	Valor - Military & Public Safety	Valor	Our admiration for veterans in the military and public safety branches and providing community events for appreciation.	valor	valor	f	\N	2020-05-21 04:13:16.325+00	t	f	0	10	7
11	en	Social Media - Community Information | Bridge Hospice	Social Media	Social	Information about the work we accomplish with patients, the responses from family, and the volunteer events in the community.	social	social	f	\N	2020-05-22 15:38:14.009+00	t	t	0	11	27
25	en	Volunteer - Community Development | Bridge Hospice	Volunteer Opportunities	Volunteer	Assist our staff and the community in providing excellent care to patients and their family.	volunteer	volunteer	f	\N	2020-05-31 21:58:18.454+00	t	t	0	25	26
26	en	Volunteer - Community Development | Bridge Hospice	Volunteer Opportunities	Volunteer	Assist our staff and the community in providing excellent care to patients and their family.	volunteer	volunteer	f	\N	2020-05-31 21:58:18.454+00	t	f	0	26	25
27	en	Social Media - Community Information | Bridge Hospice	Social Media	Social	Information about the work we accomplish with patients, the responses from family, and the volunteer events in the community.	social	social	f	\N	2020-05-22 15:38:14.009+00	t	f	0	27	11
36	en	Forms				forms	forms	f	\N	2020-06-17 02:56:43.387+00	t	t	0	36	39
37	en	Volunteer				volunteer	forms/volunteer	f	\N	2020-06-17 02:57:06.22+00	t	t	0	37	40
38	en	Signup				signup	forms/signup	f	\N	2020-06-17 02:57:14.151+00	f	t	1	38	41
39	en	Forms				forms	forms	f	\N	2020-06-17 02:56:43.387+00	t	f	0	39	36
40	en	Volunteer				volunteer	forms/volunteer	f	\N	2020-06-17 02:57:06.22+00	t	f	0	40	37
41	en	Signup				signup	forms/signup	f	\N	2020-06-17 02:57:14.151+00	f	f	0	41	38
42	en	Privacy Policy				privacy-policy	privacy-policy	f	\N	2020-10-06 17:09:02.191+00	t	t	0	42	43
43	en	Privacy Policy				privacy-policy	privacy-policy	f	\N	2020-10-06 17:09:02.191+00	t	f	0	43	42
44	en	Terms of Service				terms-of-service	terms-of-service	f	\N	2020-10-06 17:17:04.598+00	t	t	0	44	45
45	en	Terms of Service				terms-of-service	terms-of-service	f	\N	2020-10-06 17:17:04.598+00	t	f	0	45	44
49	en	Social Media Development Page				social-media-dev	social-media-dev	f	\N	2020-10-10 19:06:27.538+00	t	f	0	49	48
48	en	Social Media Development Page				social-media-dev	social-media-dev	f	\N	2020-10-10 19:06:27.538+00	t	t	0	48	49
53	en	App				app	app	f	\N	2020-10-12 20:03:59.776278+00	t	f	0	53	52
52	en	App				app	app	f	\N	2020-10-12 20:03:59.776278+00	t	t	0	52	53
55	en	Social Media				social-media	app/social-media	f	\N	2020-10-12 20:04:52.310773+00	t	f	0	55	54
54	en	Social Media				social-media	app/social-media	f	\N	2020-10-12 20:04:52.310773+00	t	t	0	54	55
\.


--
-- Data for Name: cms_treenode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
1	0001	1	0	\N	1
2	0002	1	0	\N	1
4	0007	1	0	\N	1
5	0006	1	0	\N	1
6	0005	1	0	\N	1
15	0003	1	0	\N	1
20	000B	1	2	\N	1
21	000B0001	2	0	20	1
22	000B0002	2	0	20	1
23	000C	1	0	\N	1
24	000D	1	0	\N	1
26	000E	1	0	\N	1
29	000F0001	2	0	28	1
28	000F	1	1	\N	1
\.


--
-- Data for Name: cms_urlconfrevision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_urlconfrevision (id, revision) FROM stdin;
1	f6575387-d38a-4080-8734-603ccfa35f35
\.


--
-- Data for Name: cms_usersettings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
2	en	12	2
\.


--
-- Data for Name: core_app_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_app_attachment (id, description, attachment_type, url, post_id) FROM stdin;
300	There are many misconceptions surrounding hospice care. We are back with another #MythMonday to give you the truth! \n\nGive us a call if you have any questions! 🧡	photo	https://www.facebook.com/109396157226181/photos/a.192597648906031/192597628906033/?type=3	109396157226181_192597662239363
301	There are many misconceptions surrounding hospice care. We are back with another #MythMonday to give you the truth! \n\nGive us a call if you have any questions! 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/192597512239378/?type=3	109396157226181_192597528906043
302	Did you know? 🤔\n\nWe care about YOU. We would love to serve as your advocate. \n\nWhether it be communication with your doctor, support for your family, or just a word of encouragement- we want to be there for you! 🧡\n\nGive us a call today for any questions or a free consultation.	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/191684842330645/?type=3	109396157226181_191684868997309
303	It’s so important to make the most of every day! \n\nOur  mission is to help everyone feel loved and taken care of. You matter to us. \n\nAt Bridge Hospice, you are family. 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/191430519022744/?type=3	109396157226181_191430545689408
304	LUBBOCK, Texas – Hospice is something most people think of as a bad thing, a place where people go when they are dying. Well at Bridge Hospice they do not do that. They want to help make them…	share	https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.everythinglubbock.com%2Fnews%2Ftrends-and-friends%2Fbridge-hospice-treats-your-loved-ones-like-their-own%2F&h=AT3Ryw_SVDQb5dGtHzeAoAEvq8bfr7Oum-2kQ716doPp6Y_1WrK6nOlawJ968VhmS_vLmgadF-t9tf23Y2XUjiowlvqr3x257Lo6csAb3161xxdBqjlwffPTR5nM-w&s=1	109396157226181_190865972412532
305	Happy Friday! \n\nWe want to give a shout out to our incredible staff! Our nurses, social workers, administrators, and volunteers are truly the best 🧡 \n\nWe are thankful to have a staff that is hardworking, compassionate, and intentional! THANK YOU! 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/189987519167044/?type=3	109396157226181_189987545833708
306	Today and every day we are thankful for the lights in our life! 🧡 \n\nWhat are you thankful for?	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/189289985903464/?type=3	109396157226181_189290005903462
307	The best care happens when we listen first and coordinate with the patient, family and your doctor. 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/189031235929339/?type=3	109396157226181_189031255929337
308	A study into the health benefits of residents of a Mildura aged care residence recounting their life stories has led to changes in the way medical students are trained in the care of the elderly.	share	https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.monash.edu%2Fmedicine%2Fnews%2Flatest%2F2020-articles%2Fhealth-benefits-of-listening-to-elders-stories&h=AT0A4hu1iV0nTURkCoFVRC4ldsB_jq_6vjsLGzvV-prfQFeo1CYKXQErY-jq43qWjeLCraMKSB_a_JtgiAcxUR6ovxFE81YN7xS6f1XknPoMBYHMQ1WE2eLBj9Ibpw&s=1	109396157226181_188194826012980
309	Grief is a process that is different for everyone. We will be there for you every step of the way. \n\nAt Bridge Hospice, you are family. 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/187766949389101/?type=3	109396157226181_187766966055766
310	It’s #MythMonday and we are glad to shed some more light on the truth about hospice! \n\nGive us a call today and we can help you figure out the next step. We are here for you. 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/187470849418711/?type=3	109396157226181_187470869418709
311	Our logo was created to showcase our commitment to you. Here’s a little insight into what inspired us! \n\nWhat inspires you on this Friday? We hope you have an incredible weekend! Be kind. 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/186739829491813/?type=3	109396157226181_186739849491811
312	Why should you choose Bridge Hospice? \n\nBecause we put you first. \n\nYour wishes are front and center at our facility. To Bridge Hospice, you are family. 🧡 #5ReasonsWhy	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/186471759518620/?type=3	109396157226181_186471782851951
313	It’s a great day to spread some love! We encourage you to do something kind for someone you love today. \n\nLove is strong. Love lives on. 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/185951509570645/?type=3	109396157226181_185951539570642
314	At Bridge Hospice, our goal is to help our patients live their life to the fullest. Give us a call today and we will be there for you. 🧡 #MythMonday	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/185675686264894/?type=3	109396157226181_185675712931558
315		album	https://www.facebook.com/109396157226181/posts/184973693001760/	109396157226181_184973693001760
316	We remember and we honor those who were lost. Never forget. 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/184952863003843/?type=3	109396157226181_184952886337174
317	Putting a smile on someone’s face is an invaluable moment. Do you have a calling for helping others? \n\nBridge Hospice is looking for volunteers! \n\nIf you are ready to be a helping hand in changing someone’s life, give us a call! 🧡	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/184720679693728/?type=3	109396157226181_184720696360393
318	Happy Labor Day from Bridge Hospice! \n\nYour hard work is appreciated and we hope you have a great day! Stay safe out there, friends! 💙❤️	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/184048253094304/?type=3	109396157226181_184048273094302
319		video_direct_response	https://www.facebook.com/109396157226181/videos/1531325173737733/	109396157226181_183068226525640
320	Bridge Hospice has moved! 🙌🏼\n\nWe are now at:\n3409 19th Street next to Covenant Medical Center 📍\n\nWe can’t wait to host an open house and see everyone as soon as we can start having large group gatherings again. 🧡 see you soon!	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/182588939906902/?type=3	109396157226181_182588973240232
321		share	https://www.facebook.com/109396157226181	109396157226181_168956744603455
322	Happy Fourth of July! Have fun and be safe 💙🎇❤️	photo	https://www.facebook.com/109396157226181/photos/a.126174405548356/168015251364271/?type=3	109396157226181_168015278030935
323		video_inline	https://www.facebook.com/109396157226181/videos/310411237020427/	109396157226181_164706101695186
324	This is "Phil Memorial Vid" by The Price Group on Vimeo, the home for high quality videos and the people who love them.	share	https://l.facebook.com/l.php?u=https%3A%2F%2Fvimeo.com%2F289754637&h=AT3S3llkJYCcj26dUUys4v2C2ra__L7bu4abIZGLcfveAvN4SizqWyhpS8SodQ-EsJHXNG0434uAuerUZiWS_Xb1ZkHRDykh4EFuKfEYb6tKzoC-jBOMylqSLSzHLA&s=1	109396157226181_162459355253194
\.


--
-- Data for Name: core_app_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_app_image (id, height, width, src, attachment_id) FROM stdin;
178	720	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/p720x720/121429390_192597632239366_2249366885247227666_o.jpg?_nc_cat=102&_nc_sid=9e2e56&_nc_ohc=m0IeNwYBgyAAX9Pg00g&_nc_ht=scontent-dfw5-2.xx&tp=6&oh=f9c51d1479b1aefe7adf7068d7ce5f69&oe=5FAAFCED	300
179	720	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/p720x720/121472769_192597515572711_5961467128422109521_o.jpg?_nc_cat=104&_nc_sid=110474&_nc_ohc=zWCk7aMg9QgAX83j5x7&_nc_ht=scontent-dfw5-2.xx&tp=6&oh=9ca6c9569b4cc020d2ee6e339f5b1d08&oe=5FAA9922	301
180	274	494	https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/120998554_191684845663978_8514013322075325173_n.jpg?_nc_cat=111&_nc_sid=110474&_nc_ohc=yF_QlO7BHOoAX8FlZU9&_nc_ht=scontent-dfw5-1.xx&oh=7771931a09962e41a8b1dd5e9940abdc&oe=5FA90252	302
181	720	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/p720x720/120889700_191430522356077_2418020433176013819_o.jpg?_nc_cat=109&_nc_sid=110474&_nc_ohc=7ELdScQ8HP0AX9gEJWH&_nc_ht=scontent-dfw5-2.xx&tp=6&oh=46deb572e442cb3e0706be30950c8a47&oe=5FA8E4BF	303
182	720	720	https://external-dfw5-1.xx.fbcdn.net/safe_image.php?d=AQBH5jm5Pg7KoOon&w=720&h=720&url=https%3A%2F%2Fwww.everythinglubbock.com%2Fwp-content%2Fuploads%2Fsites%2F35%2F2020%2F10%2Fhospice.jpg%3Fw%3D1280&cfs=1&_nc_cb=1&_nc_hash=AQBOpnDkWnoJj5oC	304
183	397	559	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/120459264_189987522500377_4834831592251309238_n.jpg?_nc_cat=109&_nc_sid=110474&_nc_ohc=6ltDjAph1tQAX9fKanW&_nc_ht=scontent-dfw5-2.xx&oh=673e3cef1c8844b546e1220e5f8201ec&oe=5FAA448B	305
184	604	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/s720x720/120351433_189289989236797_2489772646836903914_o.jpg?_nc_cat=104&_nc_sid=110474&_nc_ohc=wFd4SJaN9UkAX8ro90X&_nc_ht=scontent-dfw5-2.xx&tp=7&oh=19e5e59938946dec99cb5f71dc38f5eb&oe=5FA8FEF0	306
185	720	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/p720x720/120135181_189031239262672_9141374499662069548_o.jpg?_nc_cat=102&_nc_sid=110474&_nc_ohc=4n9IcgSmNiwAX8IORIE&_nc_ht=scontent-dfw5-2.xx&tp=6&oh=20bf8cf4250c746ec8b0756e1a556b22&oe=5FA84CA2	307
186	230	230	https://external-dfw5-1.xx.fbcdn.net/safe_image.php?d=AQBEuvKfuU8yFCNL&w=230&h=230&url=https%3A%2F%2Fwww.monash.edu%2F__data%2Fassets%2Fimage%2F0003%2F2231076%2Faged-care-mildura.jpg&cfs=1&sx=109&sy=0&sw=230&sh=230&_nc_cb=1&_nc_hash=AQCyHE25sbMquXUw	308
187	720	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/p720x720/120123346_187766952722434_5575772415371159997_o.jpg?_nc_cat=102&_nc_sid=110474&_nc_ohc=LyApJ5dI8J4AX8qpFss&_nc_ht=scontent-dfw5-2.xx&tp=6&oh=f40e8dac38e39008bc87c8f343247705&oe=5FA8506D	309
188	720	720	https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/p720x720/119878235_187470852752044_3384797065212352227_o.jpg?_nc_cat=101&_nc_sid=110474&_nc_ohc=JbD_ODJjI9MAX9-l8nM&_nc_ht=scontent-dfw5-1.xx&tp=6&oh=1e196c04956389d6e7f93250e34e904f&oe=5FAA3A1B	310
189	720	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/p720x720/119481822_186739832825146_8229787016537679380_o.jpg?_nc_cat=107&_nc_sid=110474&_nc_ohc=ZBNIr1f0tnwAX8LuVH0&_nc_ht=scontent-dfw5-2.xx&tp=6&oh=ceda59e1490ff9b5bfdab74a36dfae25&oe=5FAB810D	311
190	720	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/p720x720/119465597_186471762851953_8648517406506120849_o.jpg?_nc_cat=104&_nc_sid=110474&_nc_ohc=tJ9lYWlBne4AX9pDV6B&_nc_ht=scontent-dfw5-2.xx&tp=6&oh=79331052f20a62ac4a73bf792e8a38b2&oe=5FAA5FB7	312
191	720	720	https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/p720x720/119170530_185951512903978_6926738208629401566_o.jpg?_nc_cat=105&_nc_sid=110474&_nc_ohc=CPBppEolTGAAX8Z2SvZ&_nc_ht=scontent-dfw5-1.xx&tp=6&oh=b8654198b7a615c9202f86d52aceaa6c&oe=5FA9849F	313
192	720	509	https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/s720x720/119632080_185675689598227_1509701415193560667_o.jpg?_nc_cat=105&_nc_sid=110474&_nc_ohc=U2xs1XCirhgAX8qj9zP&_nc_ht=scontent-dfw5-1.xx&tp=7&oh=1ea733004e55e4e8325a2834281c04ad&oe=5FA8936F	314
193	540	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-0/p180x540/118999299_184973573001772_5989246599089262653_o.jpg?_nc_cat=100&_nc_sid=110474&_nc_ohc=xwLgEBTcwwQAX9JWghe&_nc_oc=AQmHc1DiUdhSU2S336UlaSlv4ohlEW9zJv7gP-4W4r2m2xO3lMnbmUmydhgeOt4R3Ro&_nc_ht=scontent-dfw5-2.xx&tp=6&oh=f3a0e30d599c83acc37379304ebea689&oe=5FA84982	315
194	716	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/s720x720/119018064_184952866337176_5807459778178856242_n.jpg?_nc_cat=104&_nc_sid=110474&_nc_ohc=1C2zLKV-yo4AX_b_vcT&_nc_ht=scontent-dfw5-2.xx&tp=7&oh=2413e14c318c0531cfd2067a76e7f059&oe=5FAB04A5	316
195	341	480	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/119060292_184720683027061_2766856626641779088_n.jpg?_nc_cat=109&_nc_sid=110474&_nc_ohc=tJABLQaiotIAX9mG-pe&_nc_ht=scontent-dfw5-2.xx&oh=509fc05e75bc5b70fd0d219bee4fe7ff&oe=5FA9E6FC	317
196	336	672	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/118911737_184048256427637_6100673250621449731_n.jpg?_nc_cat=100&_nc_sid=110474&_nc_ohc=v46T3Ru42PAAX8GHNb5&_nc_ht=scontent-dfw5-2.xx&oh=13d8f5f1ee01b4f5c7b9b437ca6b405e&oe=5FA959A9	318
197	720	405	https://scontent-dfw5-2.xx.fbcdn.net/v/t15.5256-10/s720x720/118622796_1531330783737172_6139491416534921767_n.jpg?_nc_cat=108&_nc_sid=ad6a45&_nc_ohc=pFuDeaS6E9YAX_Krjwr&_nc_ht=scontent-dfw5-2.xx&oh=bd0e372492d539ad41197af161450b7a&oe=5FA9765A	319
198	540	720	https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-0/p180x540/118397251_182588943240235_7168832018016128876_n.jpg?_nc_cat=103&_nc_sid=110474&_nc_ohc=-r5f8cSxPLwAX_Fn4ze&_nc_oc=AQn4vHstAD1H0qBk2fVTk9sBbjhwj8J7sCR-A0wNy6VLMRZDJ2HCQ1mO7w0VbkDMRuk&_nc_ht=scontent-dfw5-1.xx&tp=6&oh=92f0f02d61c5c89a2b03061f8350e9aa&oe=5FA87989	320
199	274	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/s720x720/82621593_126152085550588_2685928828722741248_n.jpg?_nc_cat=107&_nc_sid=dd9801&_nc_ohc=lKyQ2abKyYsAX9groSr&_nc_ht=scontent-dfw5-2.xx&tp=7&oh=010cb9366c96443aeaab32353c45fcf4&oe=5FAC274A	321
200	720	720	https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/p720x720/106691603_168015254697604_1103540419539209772_o.jpg?_nc_cat=103&_nc_sid=110474&_nc_ohc=ttDqxW6K-OUAX-D-5Qc&_nc_ht=scontent-dfw5-1.xx&tp=6&oh=79acdbb9aacbc18f4e9c788114465700&oe=5FAB3F94	322
201	720	720	https://scontent-dfw5-2.xx.fbcdn.net/v/t15.5256-10/104343604_310411353687082_1153335421354500009_n.jpg?_nc_cat=109&_nc_sid=ad6a45&_nc_ohc=samgeW-Dh28AX9wIuhO&_nc_oc=AQlx6aWS-0-flfyQ32_dYk22z94UO-drk59AU1ivGL6YZH_5A0Ovg4W6JNQskXKfyMo&_nc_ht=scontent-dfw5-2.xx&oh=49fc5267224d88d8086dc821231cc032&oe=5FA9DC86	323
202	720	720	https://external-dfw5-1.xx.fbcdn.net/safe_image.php?d=AQA3eHSeHVhqHaco&w=720&h=720&url=https%3A%2F%2Fi.vimeocdn.com%2Ffilter%2Foverlay%3Fsrc0%3Dhttps%253A%252F%252Fi.vimeocdn.com%252Fvideo%252F726741107_1280x720.jpg%26src1%3Dhttps%253A%252F%252Ff.vimeocdn.com%252Fimages_v6%252Fshare%252Fplay_icon_overlay.png&cfs=1&sx=319&sy=0&sw=720&sh=720&_nc_cb=1&_nc_hash=AQDeTJBW3ePHGKeL	324
\.


--
-- Data for Name: core_app_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_app_post (id, message, created_time) FROM stdin;
109396157226181_192597662239363	There are many misconceptions surrounding hospice care. We are back with another #MythMonday to give you the truth! \n\nGive us a call if you have any questions! 🧡	2020-10-12 19:06:47+00
109396157226181_192597528906043	There are many misconceptions surrounding hospice care. We are back with another #MythMonday to give you the truth! \n\nGive us a call if you have any questions! 🧡	2020-10-12 19:05:58+00
109396157226181_191684868997309	Did you know? 🤔\n\nWe care about YOU. We would love to serve as your advocate. \n\nWhether it be communication with your doctor, support for your family, or just a word of encouragement- we want to be there for you! 🧡\n\nGive us a call today for any questions or a free consultation.	2020-10-08 22:02:08+00
109396157226181_191430545689408	It’s so important to make the most of every day! \n\nOur  mission is to help everyone feel loved and taken care of. You matter to us. \n\nAt Bridge Hospice, you are family. 🧡	2020-10-07 21:28:30+00
109396157226181_190865972412532	Thank you to Trends & Friends at 5pm for having us on today! It was amazing to have the opportunity to share our mission as an organization. To Bridge Hospice, you are family. 🧡	2020-10-05 23:15:10+00
109396157226181_189987545833708	Happy Friday! \n\nWe want to give a shout out to our incredible staff! Our nurses, social workers, administrators, and volunteers are truly the best 🧡 \n\nWe are thankful to have a staff that is hardworking, compassionate, and intentional! THANK YOU! 🧡	2020-10-02 17:53:57+00
109396157226181_189290005903462	Today and every day we are thankful for the lights in our life! 🧡 \n\nWhat are you thankful for?	2020-09-29 17:58:56+00
109396157226181_189031255929337	The best care happens when we listen first and coordinate with the patient, family and your doctor. 🧡	2020-09-28 17:19:33+00
109396157226181_188194826012980	What an amazing read! This article shows that even the smallest acts of kindness can impact someone’s life. \n\nSpread the love today! 🧡	2020-09-24 18:45:33+00
109396157226181_187766966055766	Grief is a process that is different for everyone. We will be there for you every step of the way. \n\nAt Bridge Hospice, you are family. 🧡	2020-09-22 18:07:56+00
109396157226181_187470869418709	It’s #MythMonday and we are glad to shed some more light on the truth about hospice! \n\nGive us a call today and we can help you figure out the next step. We are here for you. 🧡	2020-09-21 16:43:06+00
109396157226181_186739849491811	Our logo was created to showcase our commitment to you. Here’s a little insight into what inspired us! \n\nWhat inspires you on this Friday? We hope you have an incredible weekend! Be kind. 🧡	2020-09-18 19:26:25+00
109396157226181_186471782851951	Why should you choose Bridge Hospice? \n\nBecause we put you first. \n\nYour wishes are front and center at our facility. To Bridge Hospice, you are family. 🧡 #5ReasonsWhy	2020-09-17 18:32:50+00
109396157226181_185951539570642	It’s a great day to spread some love! We encourage you to do something kind for someone you love today. \n\nLove is strong. Love lives on. 🧡	2020-09-15 17:13:00+00
109396157226181_185675712931558	At Bridge Hospice, our goal is to help our patients live their life to the fullest. Give us a call today and we will be there for you. 🧡 #MythMonday	2020-09-14 16:00:46+00
109396157226181_184973693001760	Thank you Brookdale Monterey for letting us be a part of honoring local first responders today!\n\nThank you for your service. 🧡\nWe’ve got your Six!	2020-09-11 20:33:43+00
109396157226181_184952886337174	We remember and we honor those who were lost. Never forget. 🧡	2020-09-11 18:13:28+00
109396157226181_184720696360393	Putting a smile on someone’s face is an invaluable moment. Do you have a calling for helping others? \n\nBridge Hospice is looking for volunteers! \n\nIf you are ready to be a helping hand in changing someone’s life, give us a call! 🧡	2020-09-10 17:13:40+00
109396157226181_184048273094302	Happy Labor Day from Bridge Hospice! \n\nYour hard work is appreciated and we hope you have a great day! Stay safe out there, friends! 💙❤️	2020-09-07 17:55:55+00
109396157226181_183068226525640	At Bridge Hospice, we have a variety of services and resources to help you every step of the way. 🧡\n\nWe are proud to serve Lubbock and the surrounding areas.\n\nPlease feel free to contact Bruce with any questions you may have!\n806-993-3900 • bruce.rocap@bridge-hospice.com	2020-09-03 17:25:18+00
109396157226181_182588973240232	Bridge Hospice has moved! 🙌🏼\n\nWe are now at:\n3409 19th Street next to Covenant Medical Center 📍\n\nWe can’t wait to host an open house and see everyone as soon as we can start having large group gatherings again. 🧡 see you soon!	2020-09-01 18:16:45+00
109396157226181_168956744603455		2020-07-08 17:38:21+00
109396157226181_168015278030935	Happy Fourth of July! Have fun and be safe 💙🎇❤️	2020-07-04 18:52:08+00
109396157226181_164706101695186	Happy Father’s Day from Bridge Hospice! \n\nWishing everyone a happy and blessed day 🧡	2020-06-21 17:51:26+00
109396157226181_162459355253194	What a beautiful tribute from The Price Group for an incredible man! We are grateful to have known Phil! 🧡	2020-06-12 18:45:23+00
\.


--
-- Data for Name: core_app_target; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_app_target (id, url, attachment_id) FROM stdin;
179	https://www.facebook.com/109396157226181/photos/a.192597648906031/192597628906033/?type=3	300
180	https://www.facebook.com/109396157226181/photos/a.126174405548356/192597512239378/?type=3	301
181	https://www.facebook.com/109396157226181/photos/a.126174405548356/191684842330645/?type=3	302
182	https://www.facebook.com/109396157226181/photos/a.126174405548356/191430519022744/?type=3	303
183	https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.everythinglubbock.com%2Fnews%2Ftrends-and-friends%2Fbridge-hospice-treats-your-loved-ones-like-their-own%2F&h=AT3Ryw_SVDQb5dGtHzeAoAEvq8bfr7Oum-2kQ716doPp6Y_1WrK6nOlawJ968VhmS_vLmgadF-t9tf23Y2XUjiowlvqr3x257Lo6csAb3161xxdBqjlwffPTR5nM-w&s=1	304
184	https://www.facebook.com/109396157226181/photos/a.126174405548356/189987519167044/?type=3	305
185	https://www.facebook.com/109396157226181/photos/a.126174405548356/189289985903464/?type=3	306
186	https://www.facebook.com/109396157226181/photos/a.126174405548356/189031235929339/?type=3	307
187	https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.monash.edu%2Fmedicine%2Fnews%2Flatest%2F2020-articles%2Fhealth-benefits-of-listening-to-elders-stories&h=AT0A4hu1iV0nTURkCoFVRC4ldsB_jq_6vjsLGzvV-prfQFeo1CYKXQErY-jq43qWjeLCraMKSB_a_JtgiAcxUR6ovxFE81YN7xS6f1XknPoMBYHMQ1WE2eLBj9Ibpw&s=1	308
188	https://www.facebook.com/109396157226181/photos/a.126174405548356/187766949389101/?type=3	309
189	https://www.facebook.com/109396157226181/photos/a.126174405548356/187470849418711/?type=3	310
190	https://www.facebook.com/109396157226181/photos/a.126174405548356/186739829491813/?type=3	311
191	https://www.facebook.com/109396157226181/photos/a.126174405548356/186471759518620/?type=3	312
192	https://www.facebook.com/109396157226181/photos/a.126174405548356/185951509570645/?type=3	313
193	https://www.facebook.com/109396157226181/photos/a.126174405548356/185675686264894/?type=3	314
194	https://www.facebook.com/109396157226181/posts/184973693001760/	315
195	https://www.facebook.com/109396157226181/photos/a.126174405548356/184952863003843/?type=3	316
196	https://www.facebook.com/109396157226181/photos/a.126174405548356/184720679693728/?type=3	317
197	https://www.facebook.com/109396157226181/photos/a.126174405548356/184048253094304/?type=3	318
198	https://www.facebook.com/109396157226181/videos/1531325173737733/	319
199	https://www.facebook.com/109396157226181/photos/a.126174405548356/182588939906902/?type=3	320
200	https://www.facebook.com/109396157226181	321
201	https://www.facebook.com/109396157226181/photos/a.126174405548356/168015251364271/?type=3	322
202	https://www.facebook.com/109396157226181/videos/310411237020427/	323
203	https://l.facebook.com/l.php?u=https%3A%2F%2Fvimeo.com%2F289754637&h=AT3S3llkJYCcj26dUUys4v2C2ra__L7bu4abIZGLcfveAvN4SizqWyhpS8SodQ-EsJHXNG0434uAuerUZiWS_Xb1ZkHRDykh4EFuKfEYb6tKzoC-jBOMylqSLSzHLA&s=1	324
\.


--
-- Data for Name: core_forms_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_forms_profile (id, street_address, city, state, zip_code, mobile_phone, user_id) FROM stdin;
1			TX			2
\.


--
-- Data for Name: core_forms_volunteerapplication; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_forms_volunteerapplication (id, first_name, last_name, street_address, city, state, zip_code, home_phone, work_phone, mobile_phone, emergency_contact, email, marital_status, source, volunteer_agency_1, volunteer_city_1, volunteer_state_1, volunteer_duties_1, volunteer_supervisor_1, volunteer_start_date_1, volunteer_end_date_1, volunteer_agency_2, volunteer_city_2, volunteer_state_2, volunteer_duties_2, volunteer_supervisor_2, volunteer_start_date_2, volunteer_end_date_2, volunteer_agency_3, volunteer_city_3, volunteer_state_3, volunteer_duties_3, volunteer_supervisor_3, volunteer_start_date_3, volunteer_end_date_3, employment_employer_1, employment_city_1, employment_state_1, employment_title_1, employment_start_date_1, employment_end_date_1, employment_employer_2, employment_city_2, employment_state_2, employment_title_2, employment_start_date_2, employment_end_date_2, employment_employer_3, employment_city_3, employment_state_3, employment_title_3, employment_start_date_3, employment_end_date_3, education_school_1, education_city_1, education_state_1, education_years_studied_1, education_degree_1, education_date_completed_1, education_school_2, education_city_2, education_state_2, education_years_studied_2, education_degree_2, education_date_completed_2, education_school_3, education_city_3, education_state_3, education_years_studied_3, education_degree_3, education_date_completed_3, licenses, training, volunteer_type, sunday_availability, monday_availability, tuesday_availability, wednesday_availability, thursday_availability, friday_availability, saturday_availability, reason, personal_loss, felony, conviction) FROM stdin;
\.


--
-- Data for Name: core_plugins_test1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_plugins_test1 (cmsplugin_ptr_id, test_value) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
47	2020-05-18 07:11:13.924+00	1	admin	3		5	2
48	2020-05-18 07:11:42.575+00	3	kasey_cox	1	[{"added": {}}]	5	2
49	2020-05-18 07:11:49.351+00	3	kasey_cox	2	[{"changed": {"fields": ["is_staff", "is_superuser"]}}]	5	2
50	2020-05-19 02:46:41.028+00	427	427	3		48	2
51	2020-05-19 02:48:48.934+00	1	Home	2		2	2
52	2020-05-19 02:51:46.181+00	3	Contact Us	2		2	2
53	2020-05-19 02:54:18.501+00	3	Contact Us	2		2	2
54	2020-05-19 02:56:06.1+00	3	Contact Us	2		2	2
55	2020-05-19 21:20:57.722+00	12	Home Page Banner	3		67	2
56	2020-05-19 21:22:19.181+00	1	Home	2		2	2
57	2020-05-19 21:52:51.738+00	552	552	3		47	2
58	2020-05-19 21:52:57.929+00	553	553	3		47	2
59	2020-05-19 21:56:22.202+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
60	2020-05-19 21:56:56.659+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
61	2020-05-19 21:57:36.783+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
62	2020-05-19 21:58:23.407+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
63	2020-05-19 21:58:41.288+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
64	2020-05-19 21:59:34.724+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
65	2020-05-19 22:00:35.496+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
66	2020-05-19 22:02:57.52+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
67	2020-05-19 22:03:21.715+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
68	2020-05-19 22:03:51.042+00	1	Home	2		2	2
69	2020-05-19 22:04:48.786+00	5	Development	1	[{"added": {}}]	2	2
70	2020-05-19 22:11:39.743+00	592	592	3		47	2
71	2020-05-19 22:14:01.437+00	1	Home	2		2	2
72	2020-05-19 22:15:16.944+00	629	629	3		48	2
73	2020-05-19 22:19:25.358+00	632	632	3		47	2
74	2020-05-19 22:19:45.738+00	1	Home	2		2	2
75	2020-05-19 22:21:27.716+00	5	Development	2		2	2
76	2020-05-19 22:22:19.984+00	1	Home	2		2	2
77	2020-05-19 22:25:42.548+00	1	Home	2		2	2
78	2020-05-19 22:32:14.01+00	1	Home	2		2	2
79	2020-05-19 22:35:01.902+00	1	Home	2		2	2
80	2020-05-19 22:35:31.312+00	5	Development	2		2	2
81	2020-05-19 22:38:01.759+00	3	Contact Us	2		2	2
82	2020-05-19 22:43:45.094+00	1	Home	2		2	2
83	2020-05-19 22:44:25.153+00	5	Development	2		2	2
84	2020-05-19 22:45:17.309+00	3	Contact	2	[{"changed": {"fields": ["title", "slug"]}}]	2	2
85	2020-05-19 22:45:37.179+00	3	Contact	2	[]	2	2
86	2020-05-19 22:45:42.857+00	3	Contact	2		2	2
87	2020-05-19 22:49:58.498+00	3	Contact	2		2	2
88	2020-05-19 22:51:56.36+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
89	2020-05-19 22:52:26.099+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
90	2020-05-19 22:53:12.57+00	1	Home Page Banner	2	[{"changed": {"fields": ["html"]}}]	66	2
91	2020-05-19 22:53:24.736+00	1	Home	2		2	2
92	2020-05-19 23:03:40.355+00	1	Home	2		2	2
93	2020-05-19 23:12:05.27+00	4	TempFix	1	[{"added": {}}]	66	2
94	2020-05-19 23:13:57.173+00	5	TempFix1	1	[{"added": {}}]	66	2
95	2020-05-19 23:15:17.031+00	5	TempFix1	2	[{"changed": {"fields": ["html"]}}]	66	2
96	2020-05-19 23:16:37.136+00	5	TempFix1	2	[{"changed": {"fields": ["html"]}}]	66	2
97	2020-05-19 23:17:42.885+00	5	TempFix1	2	[{"changed": {"fields": ["html"]}}]	66	2
98	2020-05-19 23:18:25.457+00	1	Home	2		2	2
99	2020-05-21 03:20:12.797+00	1	Home	2		2	2
100	2020-05-21 03:45:59.748+00	1115	1115	3		74	2
101	2020-05-21 03:56:42.781+00	1114	1114	3		10	2
102	2020-05-21 03:57:31.387+00	754	Home Page Banner	3		67	2
103	2020-05-21 04:13:16.341+00	7	Valor	1	[{"added": {}}]	2	2
104	2020-05-21 04:13:52.511+00	8	Donation	1	[{"added": {}}]	2	2
105	2020-05-21 04:13:58.943+00	8	Donation	2		2	2
106	2020-05-21 04:14:18.143+00	7	Valor	2		2	2
107	2020-05-21 04:15:33.047+00	8	coming-soon-2461832_960_720.jpg	3		30	2
108	2020-05-21 04:22:57.891+00	5	Development	2		2	2
109	2020-05-21 04:23:45.54+00	7	Valor	2		2	2
110	2020-05-21 04:24:01.269+00	8	Donation	2		2	2
111	2020-05-21 04:26:34.019+00	1	Home	2		2	2
112	2020-05-21 04:30:20.803+00	1117	1117	3		51	2
113	2020-05-21 04:31:16.186+00	1	Home	2		2	2
114	2020-05-22 15:38:14.053+00	11	Social	1	[{"added": {}}]	2	2
115	2020-05-22 15:39:14.905+00	6	Facebook Feed	1	[{"added": {}}]	66	2
116	2020-05-22 15:57:24.344+00	1242	&lt;script&gt; &lt;/script&gt;	3		24	2
117	2020-05-22 15:58:00.609+00	7	Facebook GraphApi	1	[{"added": {}}]	66	2
118	2020-05-22 15:59:25.554+00	7	Facebook GraphApi	2	[{"changed": {"fields": ["html"]}}]	66	2
119	2020-05-22 16:16:43.237+00	1243	Facebook GraphApi	3		67	2
120	2020-05-22 16:17:10.08+00	1244	Tweets by BridgeHospice1...	3		24	2
121	2020-05-22 16:17:28.689+00	8	twitter feed	1	[{"added": {}}]	66	2
122	2020-05-22 16:22:05.289+00	9	instagram feed	1	[{"added": {}}]	66	2
123	2020-05-30 18:37:55.72+00	12	test	1	[{"added": {}}]	2	2
124	2020-05-30 18:38:04.366+00	12	test	2		2	2
125	2020-05-30 19:19:29.867+00	14	forms	1	[{"added": {}}]	2	2
126	2020-05-30 19:20:06.832+00	15	volunteer	1	[{"added": {}}]	2	2
127	2020-05-30 19:20:31.23+00	15	volunteer	3		2	2
128	2020-05-30 19:20:36.96+00	14	forms	3		2	2
129	2020-05-30 19:23:25.46+00	14	Forms	1	[{"added": {}}]	2	2
130	2020-05-30 19:23:35.116+00	14	Forms	2		2	2
131	2020-05-30 19:24:02.286+00	14	Forms	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
132	2020-05-30 19:24:23.385+00	14	Forms	2	[{"changed": {"fields": ["xframe_options"]}}]	2	2
133	2020-05-30 19:27:44.235+00	16	Volunteer	1	[{"added": {}}]	2	2
134	2020-05-31 03:37:48.768+00	8	twitter feed	2	[]	66	2
135	2020-05-31 03:38:56.657+00	1248	Twitter	3		24	2
136	2020-05-31 03:39:36.9+00	9	instagram feed	2	[{"changed": {"fields": ["html"]}}]	66	2
137	2020-05-31 20:36:30.64+00	1	VolunteerApplication object (1)	3		75	2
138	2020-05-31 21:05:14.359+00	12	test	2	The en page "test" was successfully unpublished	2	2
139	2020-05-31 21:05:20.309+00	14	Forms	2	The en page "Forms" was successfully unpublished	2	2
140	2020-05-31 21:05:54.771+00	1	Home	2	The en page "Home" was successfully unpublished	2	2
141	2020-05-31 21:05:57.951+00	1	Home	2		2	2
142	2020-05-31 21:20:05.566+00	14	Forms	2		2	2
143	2020-05-31 21:23:10.4+00	1293	1293	3		37	2
144	2020-05-31 21:23:33.894+00	16	Volunteer	2		2	2
145	2020-05-31 21:27:48.854+00	14	Forms	2	[{"changed": {"fields": ["xframe_options"]}}]	2	2
146	2020-05-31 21:28:29.177+00	16	Volunteer	3		2	2
147	2020-05-31 21:28:45.324+00	18	Volunteer	1	[{"added": {}}]	2	2
148	2020-05-31 21:29:31.767+00	14	Forms	3		2	2
149	2020-05-31 21:29:36.765+00	12	test	3		2	2
150	2020-05-31 21:29:48.221+00	19	Forms	1	[{"added": {}}]	2	2
151	2020-05-31 21:30:20.516+00	19	Forms	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
152	2020-05-31 21:30:29.972+00	20	Volunteer	1	[{"added": {}}]	2	2
153	2020-05-31 21:44:04.31+00	9	BridgeHospiceLogo.png	3		30	2
154	2020-05-31 21:44:28.932+00	1	Home	2		2	2
155	2020-05-31 21:50:33.008+00	19	Forms	3		2	2
156	2020-05-31 21:50:40.979+00	21	Forms	1	[{"added": {}}]	2	2
157	2020-05-31 21:51:02.152+00	21	Forms	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
158	2020-05-31 21:51:11.532+00	22	Volunteer	1	[{"added": {}}]	2	2
159	2020-05-31 21:53:11.987+00	21	Forms	2		2	2
160	2020-05-31 21:53:15.854+00	22	Volunteer	2		2	2
161	2020-05-31 21:54:07.506+00	21	Forms	2		2	2
162	2020-05-31 21:58:18.481+00	25	Volunteer	1	[{"added": {}}]	2	2
163	2020-05-31 22:01:29.861+00	25	Volunteer	2		2	2
164	2020-05-31 22:01:46.345+00	21	Forms	2		2	2
165	2020-05-31 22:05:25.676+00	4	brooke_zavala	1	[{"added": {}}]	5	2
166	2020-05-31 22:07:55.655+00	1	Volunteer Coordinator	1	[{"added": {}}]	4	2
167	2020-05-31 22:08:27.556+00	4	brooke.zavala	2	[{"changed": {"fields": ["username", "first_name", "last_name", "email", "is_staff", "groups"]}}]	5	2
168	2020-05-31 22:08:50.117+00	3	kasey_cox	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	5	2
169	2020-05-31 22:09:09.066+00	2	webmaster	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	5	2
171	2020-05-31 22:18:28.848+00	1	Volunteer Coordinator	2	[{"changed": {"fields": ["permissions"]}}]	4	2
172	2020-05-31 22:22:40.284+00	1	Volunteer Coordinator	2	[{"changed": {"fields": ["permissions"]}}]	4	2
174	2020-06-01 20:45:55.244+00	6	Facebook Feed	2	[{"changed": {"fields": ["html"]}}]	66	2
175	2020-06-01 20:46:18.749+00	6	Facebook Feed	2	[{"changed": {"fields": ["html"]}}]	66	2
176	2020-06-01 20:46:26.643+00	1237	Visit us on...	3		24	2
177	2020-06-01 20:46:41.62+00	9	instagram feed	2	[{"changed": {"fields": ["html"]}}]	66	2
178	2020-06-01 20:52:04.844+00	6	Facebook Feed	2	[{"changed": {"fields": ["html"]}}]	66	2
179	2020-06-01 20:53:08.796+00	6	Facebook Feed	2	[{"changed": {"fields": ["html"]}}]	66	2
180	2020-06-01 20:54:15.086+00	8	twitter feed	2	[{"changed": {"fields": ["html"]}}]	66	2
181	2020-06-01 20:54:34.793+00	11	Social	2		2	2
182	2020-06-01 20:54:59.55+00	11	Social	2		2	2
183	2020-06-01 23:53:01.095+00	1229	1229	3		48	2
184	2020-06-01 23:53:05.074+00	5	Development	2		2	2
185	2020-06-02 00:19:54.656+00	1	bridge-hospice.com	2	[]	9	2
186	2020-06-02 00:21:32.015+00	11	BridgeHospiceLogo.png	2	[]	30	2
187	2020-06-02 00:22:42.737+00	1	Home	2		2	2
188	2020-06-02 00:23:40.855+00	22	Volunteer	2	[{"changed": {"fields": ["xframe_options"]}}]	2	2
189	2020-06-02 00:23:56.082+00	21	Forms	2	[{"changed": {"fields": ["xframe_options"]}}]	2	2
190	2020-06-02 00:24:00.965+00	21	Forms	2		2	2
191	2020-06-02 00:25:34.932+00	21	Forms	2	The en page "Forms" was successfully unpublished	2	2
192	2020-06-02 00:25:43.642+00	21	Forms	2		2	2
193	2020-06-02 00:25:48.955+00	22	Volunteer	2		2	2
194	2020-06-02 00:26:50.417+00	22	Volunteer	2	[{"changed": {"fields": ["xframe_options"]}}]	2	2
195	2020-06-02 00:26:57.133+00	22	Volunteer	2		2	2
196	2020-06-02 00:33:32.535+00	21	Forms	2		2	2
197	2020-06-02 01:09:23.506+00	28	Thanks	1	[{"added": {}}]	2	2
198	2020-06-02 01:09:28.17+00	28	Thanks	2		2	2
199	2020-06-02 01:10:14.524+00	30	Thanks	1	[{"added": {}}]	2	2
200	2020-06-02 01:10:22.323+00	28	Thanks	3		2	2
201	2020-06-02 01:10:27.424+00	30	Thanks	2		2	2
202	2020-06-02 01:17:06.208+00	1	Home	2		2	2
203	2020-06-02 01:17:14.673+00	30	Thanks	2		2	2
204	2020-06-02 01:18:01.715+00	21	Forms	2		2	2
205	2020-06-02 01:18:06.823+00	30	Thanks	2		2	2
206	2020-06-02 01:51:14.185+00	1	Home	2		2	2
207	2020-06-02 01:51:33.435+00	1	Home	2		2	2
208	2020-06-02 01:58:57.904+00	3	Volunteer Application: Nicholas Jones	3		75	2
209	2020-06-02 01:58:57.925+00	2	Volunteer Application: Nicholas Jones	3		75	2
210	2020-06-02 01:58:57.933+00	1	Volunteer Application: Nicholas Jones	3		75	2
211	2020-06-02 19:05:24.209+00	1	Home	2	[{"changed": {"fields": ["meta_description"]}}]	2	2
212	2020-06-02 19:05:27.783+00	1	Home	2		2	2
213	2020-06-02 19:07:25.454+00	3	Contact	2	[{"changed": {"fields": ["meta_description"]}}]	2	2
214	2020-06-02 19:07:28.484+00	3	Contact	2		2	2
215	2020-06-02 19:08:04.037+00	11	Social	2	[{"changed": {"fields": ["meta_description"]}}]	2	2
216	2020-06-02 19:08:06.699+00	11	Social	2		2	2
217	2020-06-02 19:08:46.368+00	25	Volunteer	2	[{"changed": {"fields": ["meta_description"]}}]	2	2
218	2020-06-02 19:09:00.536+00	22	Volunteer	2	[{"changed": {"fields": ["meta_description"]}}]	2	2
219	2020-06-02 19:09:19.59+00	25	Volunteer	2		2	2
220	2020-06-02 19:09:22.052+00	22	Volunteer	2		2	2
221	2020-06-11 20:52:18.769+00	1	Home	2	[{"changed": {"fields": ["page_title"]}}]	2	2
222	2020-06-11 20:54:37.528+00	1	Home	2	[]	2	2
223	2020-06-11 20:54:49.406+00	1	Home	2		2	2
224	2020-06-11 20:57:12.159+00	1	Bridge Hospice: providing excellent hospice care to our patients, and the community.	2	[{"changed": {"fields": ["title", "page_title"]}}]	2	2
225	2020-06-11 20:59:14.427+00	1	Home	2	[{"changed": {"fields": ["title", "menu_title"]}}]	2	2
226	2020-06-11 21:01:08.023+00	1	Home	2	[{"changed": {"fields": ["title"]}}]	2	2
227	2020-06-11 21:04:13.368+00	1	Home	2	[{"changed": {"fields": ["title"]}}]	2	2
228	2020-06-11 21:05:17.395+00	1	Home	2	[{"changed": {"fields": ["title"]}}]	2	2
229	2020-06-11 21:06:36.224+00	1	Home	2	[{"changed": {"fields": ["title"]}}]	2	2
230	2020-06-11 21:07:12.165+00	1	Home	2	[{"changed": {"fields": ["title"]}}]	2	2
231	2020-06-11 21:07:36.836+00	1	Home	2	[{"changed": {"fields": ["title"]}}]	2	2
232	2020-06-11 21:07:45.969+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
233	2020-06-11 21:08:41.782+00	1	Home	2	[]	2	2
234	2020-06-11 21:08:49.175+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
235	2020-06-11 21:15:02.521+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2	[{"changed": {"fields": ["title"]}}]	2	2
236	2020-06-11 21:15:33.355+00	3	Contact	2	[{"changed": {"fields": ["menu_title"]}}]	2	2
237	2020-06-11 21:15:44.507+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
238	2020-06-11 21:16:12.769+00	3	Contact	2	[{"changed": {"fields": ["page_title"]}}]	2	2
239	2020-06-11 21:16:31.453+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
240	2020-06-11 21:19:34.664+00	11	Social	2	[{"changed": {"fields": ["title", "menu_title", "page_title", "meta_description"]}}]	2	2
241	2020-06-11 21:19:57.226+00	11	Social Media - Community Information | Bridge Hospice	2		2	2
242	2020-06-11 21:23:06.368+00	25	Volunteer	2	[{"changed": {"fields": ["title", "menu_title", "page_title", "meta_description"]}}]	2	2
243	2020-06-11 21:24:07.436+00	25	Volunteer	2	[{"changed": {"fields": ["page_title"]}}]	2	2
244	2020-06-11 21:24:52.719+00	25	Volunteer	2	[{"changed": {"fields": ["page_title"]}}]	2	2
245	2020-06-11 21:25:10.472+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
246	2020-06-11 21:30:07.07+00	7	Valor	2	[{"changed": {"fields": ["title", "menu_title", "page_title", "meta_description"]}}]	2	2
247	2020-06-11 21:34:00.451+00	8	Donation	2	[{"changed": {"fields": ["title", "menu_title", "page_title", "meta_description"]}}]	2	2
248	2020-06-11 21:34:13.809+00	5	Development	3		2	2
249	2020-06-11 21:34:29.071+00	7	Valor - Military & Public Safety | Bridge Hospice	2		2	2
250	2020-06-11 21:34:32.101+00	8	Donations - Dave's Wish | Bridge Hospice	2		2	2
251	2020-06-11 21:35:42.7+00	7	Valor	2	[{"changed": {"fields": ["page_title"]}}]	2	2
252	2020-06-11 21:36:47.716+00	7	Valor	2	[{"changed": {"fields": ["page_title"]}}]	2	2
253	2020-06-11 21:37:30.136+00	7	Valor	2	[{"changed": {"fields": ["page_title"]}}]	2	2
254	2020-06-11 21:38:32.687+00	7	Valor - Military & Public Safety | Bridge Hospice	2		2	2
255	2020-06-11 21:42:12.7+00	10	Carousel Script	1	[{"added": {}}]	66	2
256	2020-06-11 21:58:43.143+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
257	2020-06-11 22:00:23.424+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
258	2020-06-11 22:00:56.818+00	1852	test	3		24	2
259	2020-06-11 22:01:23.77+00	10	Carousel Script	2	[]	66	2
260	2020-06-11 22:08:58.587+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
261	2020-06-11 22:13:01.063+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
262	2020-06-11 22:15:39.612+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
263	2020-06-11 22:30:17.416+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
264	2020-06-11 22:38:32.136+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
265	2020-06-11 22:39:14.48+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
266	2020-06-11 22:39:55.296+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
267	2020-06-11 22:46:30.557+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
268	2020-06-11 22:47:27.566+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
269	2020-06-11 22:50:31.791+00	10	Carousel Script	2	[{"changed": {"fields": ["html"]}}]	66	2
270	2020-06-11 23:08:46.249+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
271	2020-06-11 23:09:12.6+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
272	2020-06-12 17:57:22.142+00	11	BridgeHospiceLogo.png	3		30	2
273	2020-06-12 17:57:24.533+00	12	BridgeHospiceLogo.png	3		30	2
274	2020-06-12 17:58:35.698+00	13	BridgeHospiceLogo.png	2	[{"changed": {"fields": ["subject_location"]}}]	30	2
275	2020-06-12 17:58:50.226+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
276	2020-06-12 18:35:41.386+00	32	test1	1	[{"added": {}}]	2	2
277	2020-06-12 19:12:10.736+00	11	BridgeHospiceLogo.png	3		30	2
278	2020-06-12 19:12:12.946+00	12	BridgeHospiceLogo.png	3		30	2
279	2020-06-12 19:13:32.723+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
280	2020-06-12 19:22:45.612+00	32	test1	2		2	2
281	2020-06-12 20:30:41.199+00	34	test2	1	[{"added": {}}]	2	2
282	2020-06-12 20:30:53.182+00	35	test7	1	[{"added": {}}]	2	2
283	2020-06-12 21:30:00.137+00	32	test1	3		2	2
284	2020-06-12 21:30:29.897+00	34	test2	3		2	2
285	2020-06-12 21:40:21.166+00	22	Application	2	[{"changed": {"fields": ["title", "slug"]}}]	2	2
286	2020-06-12 21:40:33.267+00	22	Application	2		2	2
287	2020-06-12 21:42:19.374+00	22	Volunteer	2	[{"changed": {"fields": ["title", "slug"]}}]	2	2
288	2020-06-12 21:43:19.078+00	22	Volunteer	2		2	2
289	2020-06-12 21:46:34.769+00	7	Valor - Military & Public Safety | Bridge Hospice	2		2	2
290	2020-06-12 21:46:45.024+00	8	Donations - Dave's Wish | Bridge Hospice	2		2	2
291	2020-06-12 23:11:01.941+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
292	2020-06-12 23:27:48.917+00	11	Hand Medical Normal	1	[{"added": {}}]	66	2
293	2020-06-12 23:45:57.685+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
294	2020-06-12 23:46:02.66+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
295	2020-06-12 23:47:13.068+00	8	twitter feed	2	[{"changed": {"fields": ["html"]}}]	66	2
296	2020-06-12 23:47:29.69+00	8	twitter feed	2	[{"changed": {"fields": ["html"]}}]	66	2
297	2020-06-12 23:47:55.56+00	6	Facebook Feed	2	[{"changed": {"fields": ["html"]}}]	66	2
298	2020-06-12 23:48:21.307+00	9	instagram feed	2	[{"changed": {"fields": ["html"]}}]	66	2
299	2020-06-12 23:49:14.169+00	11	Social Media - Community Information | Bridge Hospice	2		2	2
300	2020-06-13 00:26:25.875+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
301	2020-06-13 00:27:44.033+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
302	2020-06-13 00:28:44.35+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
303	2020-06-13 00:29:04.086+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
304	2020-06-13 00:29:34.732+00	11	Social Media - Community Information | Bridge Hospice	2		2	2
305	2020-06-13 00:34:51.376+00	1	Bridge Hospice: Uniting the Patient and Family	2	The en page "Home" was successfully unpublished	2	2
306	2020-06-13 00:34:57.007+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
307	2020-06-13 00:36:22.01+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2	The en page "Contact" was successfully unpublished	2	2
308	2020-06-13 00:36:33.883+00	25	Volunteer - Community Development | Bridge Hospice	2	The en page "Volunteer" was successfully unpublished	2	2
309	2020-06-13 00:36:36.31+00	11	Social Media - Community Information | Bridge Hospice	2	The en page "Social" was successfully unpublished	2	2
310	2020-06-13 00:36:38.859+00	8	Donations - Dave's Wish | Bridge Hospice	2	The en page "Donation" was successfully unpublished	2	2
311	2020-06-13 00:36:41.851+00	7	Valor - Military & Public Safety | Bridge Hospice	2	The en page "Valor" was successfully unpublished	2	2
312	2020-06-13 00:36:44.15+00	21	Forms	2	The en page "Forms" was successfully unpublished	2	2
313	2020-06-13 00:36:51.914+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
314	2020-06-13 00:36:54.38+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
315	2020-06-13 00:36:56.896+00	11	Social Media - Community Information | Bridge Hospice	2		2	2
316	2020-06-13 00:36:59.268+00	8	Donations - Dave's Wish | Bridge Hospice	2		2	2
317	2020-06-13 00:37:01.529+00	7	Valor - Military & Public Safety | Bridge Hospice	2		2	2
318	2020-06-13 00:37:03.746+00	21	Forms	2		2	2
319	2020-06-13 00:38:54.08+00	1	Bridge Hospice: Uniting the Patient and Family	2	The en page "Home" was successfully unpublished	2	2
320	2020-06-13 00:38:57.461+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
321	2020-06-13 00:39:35.718+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
322	2020-06-13 00:41:07.865+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
323	2020-06-13 01:42:44.487+00	25	Volunteer	2	[{"changed": {"fields": ["page_title"]}}]	2	2
324	2020-06-13 01:42:50.421+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
325	2020-06-13 01:59:39.098+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
326	2020-06-13 03:24:48.541+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
327	2020-06-13 03:28:14.417+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
328	2020-06-13 03:53:43.626+00	32	Site Map	1	[{"added": {}}]	2	2
329	2020-06-13 03:54:13.286+00	32	Site Map	2	[{"changed": {"fields": ["slug"]}}]	2	2
330	2020-06-13 03:54:30.357+00	32	Site Map	2	[{"changed": {"fields": ["slug"]}}]	2	2
331	2020-06-13 03:55:03.98+00	32	Site Map	3		2	2
332	2020-06-13 04:35:06.177+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
333	2020-06-17 02:49:26.878+00	32	Signup	1	[{"added": {}}]	2	2
334	2020-06-17 02:50:13.995+00	21	Forms	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
335	2020-06-17 02:50:18.918+00	21	Forms	2		2	2
336	2020-06-17 02:52:00.345+00	33	Dashboard	1	[{"added": {}}]	2	2
337	2020-06-17 02:52:08.596+00	33	Dashboard	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
338	2020-06-17 02:52:14.19+00	33	Dashboard	2		2	2
339	2020-06-17 02:52:19.665+00	32	Signup	2		2	2
340	2020-06-17 02:53:40.717+00	33	Dashboard	2		2	2
341	2020-06-17 02:56:25.872+00	21	Forms	3		2	2
342	2020-06-17 02:56:43.4+00	36	Forms	1	[{"added": {}}]	2	2
343	2020-06-17 02:56:51.224+00	36	Forms	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
344	2020-06-17 02:57:06.233+00	37	Volunteer	1	[{"added": {}}]	2	2
345	2020-06-17 02:57:14.164+00	38	Singup	1	[{"added": {}}]	2	2
346	2020-06-17 02:57:19.063+00	36	Forms	2		2	2
347	2020-06-17 02:57:38.894+00	37	Volunteer	2		2	2
348	2020-06-17 02:57:43.398+00	38	Singup	2		2	2
349	2020-06-17 02:58:08.894+00	38	Signup	2	[{"changed": {"fields": ["title", "slug"]}}]	2	2
350	2020-06-17 02:58:12.062+00	38	Signup	2		2	2
351	2020-06-17 03:13:38.952+00	21	Forms	3		2	2
352	2020-06-17 03:14:03.633+00	42	Logout	1	[{"added": {}}]	2	2
353	2020-06-17 03:14:08.877+00	42	Logout	2		2	2
354	2020-06-17 03:14:34.424+00	42	Logout	2		2	2
355	2020-06-17 03:41:23.681+00	21	Forms	3		2	2
356	2020-06-17 03:41:30.902+00	42	Logout	3		2	2
357	2020-06-17 05:31:34.386+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
358	2020-06-17 05:37:07.584+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
359	2020-06-17 05:40:42.912+00	33	Dashboard	2	The en page "Dashboard" was successfully unpublished	2	2
360	2020-06-17 05:40:51.1+00	38	Signup	2	The en page "Signup" was successfully unpublished	2	2
361	2020-06-17 05:41:04.251+00	8	Donations - Dave's Wish | Bridge Hospice	2		2	2
362	2020-06-17 05:41:06.613+00	7	Valor - Military & Public Safety | Bridge Hospice	2		2	2
363	2020-06-17 06:39:06.045+00	1	Volunteer Coordinator	3		4	2
364	2020-06-17 06:41:00.908+00	4	brooke.zavala	3		5	2
365	2020-06-17 06:41:00.909+00	3	kasey_cox	3		5	2
366	2020-06-17 06:41:00.91+00	5	mail66@mail.com	3		5	2
367	2020-06-17 06:41:19.695+00	1	Nicholas Jones	3		76	2
368	2020-06-28 19:22:32.645+00	36	Forms	2	[{"changed": {"fields": ["xframe_options"]}}]	2	2
369	2020-06-30 13:48:25.195+00	36	Forms	2		2	2
370	2020-06-30 13:49:48.411+00	36	Forms	2	The en page "Forms" was successfully unpublished	2	2
371	2020-06-30 13:49:54.324+00	36	Forms	2		2	2
372	2020-06-30 13:50:32.106+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
373	2020-07-08 16:10:46.093+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
374	2020-07-08 16:18:04.792+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2	The en page "Contact" was successfully unpublished	2	2
375	2020-07-08 16:18:08.671+00	25	Volunteer - Community Development | Bridge Hospice	2	The en page "Volunteer" was successfully unpublished	2	2
376	2020-07-08 16:18:12.316+00	11	Social Media - Community Information | Bridge Hospice	2	The en page "Social" was successfully unpublished	2	2
377	2020-07-08 16:18:16.715+00	8	Donations - Dave's Wish | Bridge Hospice	2	The en page "Donation" was successfully unpublished	2	2
378	2020-07-08 16:18:20.816+00	7	Valor - Military & Public Safety | Bridge Hospice	2	The en page "Valor" was successfully unpublished	2	2
379	2020-07-08 16:18:26.172+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
380	2020-07-08 16:18:30.436+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
381	2020-07-08 16:18:33.918+00	11	Social Media - Community Information | Bridge Hospice	2		2	2
382	2020-07-08 16:18:37.782+00	8	Donations - Dave's Wish | Bridge Hospice	2		2	2
383	2020-07-08 16:18:41.889+00	7	Valor - Military & Public Safety | Bridge Hospice	2		2	2
384	2020-07-08 16:20:12.603+00	37	Volunteer	2	The en page "Volunteer" was successfully unpublished	2	2
385	2020-07-08 16:20:17.368+00	37	Volunteer	2		2	2
386	2020-07-08 16:21:19.714+00	1	Home	2	[{"changed": {"fields": ["meta_description"]}}]	2	2
387	2020-07-08 16:21:33.419+00	3	Contact	2	[{"changed": {"fields": ["meta_description"]}}]	2	2
388	2020-07-08 16:21:53.304+00	25	Volunteer	2	[{"changed": {"fields": ["meta_description"]}}]	2	2
389	2020-07-08 16:23:00.601+00	25	Volunteer	2	[{"changed": {"fields": ["meta_description"]}}]	2	2
390	2020-07-08 16:23:10.587+00	25	Volunteer	2	[{"changed": {"fields": ["title"]}}]	2	2
391	2020-07-08 16:23:21.471+00	3	Contact	2	[{"changed": {"fields": ["title"]}}]	2	2
392	2020-07-08 16:23:32.075+00	1	Home	2	[{"changed": {"fields": ["title"]}}]	2	2
393	2020-07-08 16:23:42.215+00	11	Social	2	[{"changed": {"fields": ["title"]}}]	2	2
394	2020-07-08 16:23:49.573+00	8	Donation	2	[{"changed": {"fields": ["title"]}}]	2	2
395	2020-07-08 16:23:57.791+00	7	Valor	2	[{"changed": {"fields": ["title"]}}]	2	2
396	2020-07-08 16:24:19.054+00	1	BRIDGE Hospice: Uniting the Patient and Family	2		2	2
397	2020-07-08 16:24:21.737+00	3	Contact Us - Address, Phone, & Email | BRIDGE Hospice	2		2	2
398	2020-07-08 16:24:24.522+00	25	Volunteer - Community Development | BRIDGE Hospice	2		2	2
399	2020-07-08 16:24:26.933+00	11	Social Media - Community Information | BRIDGE Hospice	2		2	2
400	2020-07-08 16:24:29.348+00	8	Donations - Dave's Wish | BRIDGE Hospice	2		2	2
401	2020-07-08 16:24:31.984+00	7	Valor - Military & Public Safety | BRIDGE Hospice	2		2	2
402	2020-07-08 16:25:56.76+00	3	Contact Us - Address, Phone, & Email | BRIDGE Hospice	2		2	2
403	2020-07-08 16:26:37.465+00	3	Contact Us - Address, Phone, & Email | BRIDGE Hospice	2		2	2
404	2020-07-08 16:28:40.39+00	1	Bridge Hospice: Uniting the Patient and Family	2	The en page "Home" was successfully unpublished	2	2
405	2020-07-08 16:28:43.077+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2	The en page "Contact" was successfully unpublished	2	2
406	2020-07-08 16:28:47.006+00	25	Volunteer - Community Development | Bridge Hospice	2	The en page "Volunteer" was successfully unpublished	2	2
407	2020-07-08 16:28:49.198+00	11	Social Media - Community Information | Bridge Hospice	2	The en page "Social" was successfully unpublished	2	2
408	2020-07-08 16:28:51.735+00	8	Donations - Dave's Wish | Bridge Hospice	2	The en page "Donation" was successfully unpublished	2	2
409	2020-07-08 16:28:54.183+00	7	Valor - Military & Public Safety | Bridge Hospice	2	The en page "Valor" was successfully unpublished	2	2
410	2020-07-08 16:28:57.691+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
411	2020-07-08 16:29:00.15+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
412	2020-07-08 16:29:02.753+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
413	2020-07-08 16:29:05.14+00	11	Social Media - Community Information | Bridge Hospice	2		2	2
414	2020-07-08 16:29:07.205+00	8	Donations - Dave's Wish | Bridge Hospice	2		2	2
415	2020-07-08 16:29:09.698+00	7	Valor - Military & Public Safety | Bridge Hospice	2		2	2
416	2020-07-08 16:31:20.917+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
417	2020-07-08 16:31:57.122+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
418	2020-07-08 16:32:23.538+00	1	Home	2	[{"changed": {"fields": ["title", "meta_description"]}}]	2	2
419	2020-07-08 16:32:31.704+00	3	Contact	2	[{"changed": {"fields": ["title", "meta_description"]}}]	2	2
420	2020-07-08 16:32:36.8+00	25	Volunteer	2	[{"changed": {"fields": ["title"]}}]	2	2
421	2020-07-08 16:32:42.163+00	11	Social	2	[{"changed": {"fields": ["title"]}}]	2	2
422	2020-07-08 16:32:52.063+00	8	Donation	2	[{"changed": {"fields": ["title"]}}]	2	2
423	2020-07-08 16:32:57.396+00	7	Valor	2	[{"changed": {"fields": ["title"]}}]	2	2
424	2020-07-08 16:33:11.7+00	1	BRIDGE Hospice: Uniting the Patient and Family	2		2	2
425	2020-07-08 16:33:14.362+00	3	Contact Us - Address, Phone, & Email | BRIDGE  Hospice	2		2	2
426	2020-07-08 16:33:16.618+00	25	Volunteer - Community Development | BRIDGE Hospice	2		2	2
427	2020-07-08 16:33:18.775+00	11	Social Media - Community Information | BRIDGE Hospice	2		2	2
428	2020-07-08 16:33:20.998+00	8	Donations - Dave's Wish | BRIDGE Hospice	2		2	2
429	2020-07-08 16:33:23.288+00	7	Valor - Military & Public Safety | BRIDGE Hospice	2		2	2
430	2020-07-27 14:26:19.317+00	1	Bridge Hospice: Uniting the Patient and Family	2	The en page "Home" was successfully unpublished	2	2
431	2020-07-27 14:26:23.27+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2	The en page "Contact" was successfully unpublished	2	2
432	2020-07-27 14:26:27.957+00	25	Volunteer - Community Development | Bridge Hospice	2	The en page "Volunteer" was successfully unpublished	2	2
433	2020-07-27 14:26:31.978+00	11	Social Media - Community Information | Bridge Hospice	2	The en page "Social" was successfully unpublished	2	2
434	2020-07-27 14:26:35.251+00	8	Donations - Dave's Wish | Bridge Hospice	2	The en page "Donation" was successfully unpublished	2	2
435	2020-07-27 14:26:38.299+00	7	Valor - Military & Public Safety | Bridge Hospice	2	The en page "Valor" was successfully unpublished	2	2
436	2020-07-27 14:26:44.246+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
437	2020-07-27 14:26:47.487+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
438	2020-07-27 14:26:51.483+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
439	2020-07-27 14:26:54.415+00	11	Social Media - Community Information | Bridge Hospice	2		2	2
440	2020-07-27 14:26:57.833+00	8	Donations - Dave's Wish | Bridge Hospice	2		2	2
441	2020-07-27 14:27:01.109+00	7	Valor - Military & Public Safety | Bridge Hospice	2		2	2
442	2020-07-27 14:29:45.654+00	1	To Bridge Hospice,...	3		24	2
443	2020-07-27 14:30:01.974+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
444	2020-08-28 05:04:06.851+00	3	Contact Us - Address, Phone, & Email | Bridge Hospice	2		2	2
445	2020-09-15 21:28:07.2+00	36	Forms	2	The en page "Forms" was successfully unpublished	2	2
446	2020-09-15 21:28:10.471+00	36	Forms	2		2	2
447	2020-09-15 21:28:15.377+00	37	Volunteer	2	The en page "Volunteer" was successfully unpublished	2	2
448	2020-09-15 21:28:20.258+00	37	Volunteer	2		2	2
449	2020-10-06 15:43:56.938+00	12	JumboButton	1	[{"added": {}}]	66	2
450	2020-10-06 15:50:37.208+00	12	JumboButton	2	[{"changed": {"fields": ["html"]}}]	66	2
451	2020-10-06 15:51:12.1+00	12	JumboButton	2	[{"changed": {"fields": ["html"]}}]	66	2
452	2020-10-06 16:00:25.071+00	12	JumboButton	2	[{"changed": {"fields": ["html"]}}]	66	2
453	2020-10-06 16:00:45.596+00	12	JumboButton	2	[{"changed": {"fields": ["html"]}}]	66	2
454	2020-10-06 16:01:55.839+00	12	JumboButton	2	[]	66	2
455	2020-10-06 16:04:32.421+00	12	JumboButton	2	[{"changed": {"fields": ["html"]}}]	66	2
456	2020-10-06 16:05:23.906+00	12	JumboButton	2	[{"changed": {"fields": ["html"]}}]	66	2
457	2020-10-06 16:12:09.44+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
458	2020-10-06 17:09:02.252+00	42	Privacy Policy	1	[{"added": {}}]	2	2
459	2020-10-06 17:09:10.424+00	42	Privacy Policy	2		2	2
460	2020-10-06 17:10:58.519+00	42	Privacy Policy	2		2	2
461	2020-10-06 17:11:13.406+00	42	Privacy Policy	2		2	2
462	2020-10-06 17:12:29.148+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
463	2020-10-06 17:17:04.617+00	44	Terms of Service	1	[{"added": {}}]	2	2
464	2020-10-06 17:17:48.826+00	44	Terms of Service	2		2	2
465	2020-10-06 17:17:56.29+00	44	Terms of Service	2		2	2
466	2020-10-06 17:18:22.073+00	25	Volunteer - Community Development | Bridge Hospice	2		2	2
467	2020-10-06 17:20:27.913+00	1	Bridge Hospice: Uniting the Patient and Family	2		2	2
468	2020-10-09 17:36:24.304+00	46	bn4sozmnn45huhyaj7cmo1onjq1xy8.html	1	[{"added": {}}]	2	2
469	2020-10-09 17:37:07.28+00	3619	bn4sozmnn45huhyaj7cmo1onjq1xy8	3		24	2
470	2020-10-09 17:37:56.083+00	46	bn4sozmnn45huhyaj7cmo1onjq1xy8.html	2		2	2
471	2020-10-09 17:38:44.852+00	46	bn4sozmnn45huhyaj7cmo1onjq1xy8.html	3		2	2
472	2020-10-10 19:06:06.382+00	13	FacebookSDK	1	[{"added": {}}]	66	2
473	2020-10-10 19:06:27.569+00	48	Test	1	[{"added": {}}]	2	2
474	2020-10-10 19:06:35.468+00	48	Test	2		2	2
475	2020-10-10 19:06:46.524+00	48	Test	2		2	2
476	2020-10-10 19:07:49.508+00	14	FacebookTest	1	[{"added": {}}]	66	2
477	2020-10-10 19:08:10.051+00	48	Test	2		2	2
478	2020-10-10 19:33:11.191+00	14	FacebookTest	2	[{"changed": {"fields": ["html"]}}]	66	2
479	2020-10-10 19:35:30.997+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
480	2020-10-10 19:36:11.357+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
481	2020-10-10 19:36:37.691+00	14	FacebookTest	2	[{"changed": {"fields": ["html"]}}]	66	2
482	2020-10-10 19:47:29.28+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
483	2020-10-10 19:48:56.699+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
484	2020-10-10 19:49:38.301+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
485	2020-10-10 19:51:49.003+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
486	2020-10-10 19:52:04.418+00	13	FacebookSDK	2	[]	66	2
487	2020-10-10 19:54:44.398+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
488	2020-10-10 20:00:29.879+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
489	2020-10-10 20:02:40.507+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
490	2020-10-10 20:03:40.236+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
491	2020-10-10 20:05:00.148+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
492	2020-10-10 20:09:16.675+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
493	2020-10-10 20:12:16.29+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
494	2020-10-10 20:13:59.96+00	13	FacebookSDK	2	[]	66	2
495	2020-10-10 20:14:58.795+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
496	2020-10-10 20:15:40.005+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
497	2020-10-10 20:38:30.004+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
498	2020-10-10 20:40:40.161+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
499	2020-10-10 20:41:58.523+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
500	2020-10-10 20:42:47.07+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
501	2020-10-10 20:44:58.886+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
502	2020-10-10 20:46:23.655+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
503	2020-10-10 20:47:04.445+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
504	2020-10-10 20:51:10.144+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
505	2020-10-10 20:53:59.106+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
506	2020-10-10 20:55:35.772+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
507	2020-10-10 21:00:12.075+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
508	2020-10-10 21:01:04.298+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
509	2020-10-10 21:03:15.369+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
510	2020-10-10 21:04:03.586+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
511	2020-10-10 21:04:47.266+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
512	2020-10-10 21:08:01.371+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
513	2020-10-10 21:17:26.402+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
514	2020-10-10 21:18:25.686+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
515	2020-10-10 21:19:17.23+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
516	2020-10-10 21:20:18.707+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
517	2020-10-10 21:20:46.869+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
518	2020-10-10 21:21:09.702+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
519	2020-10-10 21:22:01.719+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
520	2020-10-10 21:22:43.91+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
521	2020-10-10 21:23:42.775+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
522	2020-10-10 21:24:20+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
523	2020-10-10 21:24:43.2+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
524	2020-10-10 21:25:19.645+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
525	2020-10-10 21:26:15.491+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
526	2020-10-10 21:27:10.504+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
527	2020-10-10 21:27:37.609+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
528	2020-10-10 21:28:34.954+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
529	2020-10-10 21:29:06.778+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
530	2020-10-10 21:29:30.309+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
531	2020-10-10 21:30:22.705+00	13	FacebookSDK	2	[]	66	2
532	2020-10-10 21:30:39.382+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
533	2020-10-10 21:32:40.008+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
534	2020-10-10 21:33:27.409+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
535	2020-10-10 21:34:43.306+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
536	2020-10-10 21:35:25.022+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
537	2020-10-10 21:38:42.487+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
538	2020-10-10 21:40:51.8+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
539	2020-10-10 21:44:52.093+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
540	2020-10-10 21:45:29.819+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
541	2020-10-10 21:48:40.046+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
542	2020-10-10 21:50:32.199+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
543	2020-10-10 21:53:09.361+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
544	2020-10-10 21:54:49.59+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
545	2020-10-10 21:55:49.247+00	48	Social Media Development Page	2	[{"changed": {"fields": ["title", "slug"]}}]	2	2
546	2020-10-10 21:55:52.309+00	48	Social Media Development Page	2		2	2
547	2020-10-10 21:55:56.491+00	48	Social Media Development Page	2		2	2
548	2020-10-11 03:32:28.026+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
549	2020-10-11 03:48:35.166+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
550	2020-10-11 03:48:44.114+00	48	Social Media Development Page	2		2	2
551	2020-10-11 03:54:40.283+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
552	2020-10-11 03:55:52.671+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
553	2020-10-11 03:57:02.866+00	48	Social Media Development Page	2		2	2
554	2020-10-11 17:03:17.84+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
555	2020-10-11 17:04:08.288+00	48	Social Media Development Page	2		2	2
556	2020-10-11 18:35:57.44+00	48	Social Media Development Page	2		2	2
557	2020-10-11 19:11:44.305+00	3654	test	3		24	2
558	2020-10-11 19:12:20.686+00	48	Social Media Development Page	2		2	2
559	2020-10-11 19:18:37.035+00	2	stage.bridge-hospice.com	1	[{"added": {}}]	9	2
560	2020-10-11 19:47:04.694173+00	13	FacebookSDK	2	[]	66	2
561	2020-10-11 19:52:03.275918+00	48	Social Media Development Page	2		2	2
562	2020-10-11 20:08:15.777917+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
563	2020-10-11 20:08:33.391031+00	48	Social Media Development Page	2		2	2
564	2020-10-11 20:10:03.063225+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
565	2020-10-11 20:10:15.377542+00	48	Social Media Development Page	2		2	2
566	2020-10-11 20:10:40.419288+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
567	2020-10-11 20:12:14.811917+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
568	2020-10-11 20:42:06.722874+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
569	2020-10-11 20:42:45.076409+00	13	FacebookSDK	2	[{"changed": {"fields": ["html"]}}]	66	2
570	2020-10-11 20:48:01.55195+00	48	Social Media Development Page	2		2	2
603	2020-10-12 18:35:45.391576+00	1	Attachment object (1)	3		82	2
604	2020-10-12 18:35:52.33625+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
605	2020-10-12 18:39:51.102593+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
606	2020-10-12 18:39:51.103644+00	109396157226181_191430545689408	Post object (109396157226181_191430545689408)	3		83	2
607	2020-10-12 18:39:51.104205+00	109396157226181_190865972412532	Post object (109396157226181_190865972412532)	3		83	2
608	2020-10-12 18:40:45.592788+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
609	2020-10-12 18:40:45.594196+00	109396157226181_191430545689408	Post object (109396157226181_191430545689408)	3		83	2
610	2020-10-12 18:40:45.594947+00	109396157226181_190865972412532	Post object (109396157226181_190865972412532)	3		83	2
611	2020-10-12 18:40:45.595572+00	109396157226181_189987545833708	Post object (109396157226181_189987545833708)	3		83	2
612	2020-10-12 18:40:45.596137+00	109396157226181_189290005903462	Post object (109396157226181_189290005903462)	3		83	2
613	2020-10-12 18:40:45.596988+00	109396157226181_189031255929337	Post object (109396157226181_189031255929337)	3		83	2
614	2020-10-12 18:40:45.597561+00	109396157226181_188194826012980	Post object (109396157226181_188194826012980)	3		83	2
615	2020-10-12 18:40:45.598214+00	109396157226181_187766966055766	Post object (109396157226181_187766966055766)	3		83	2
616	2020-10-12 18:40:45.598803+00	109396157226181_187470869418709	Post object (109396157226181_187470869418709)	3		83	2
617	2020-10-12 18:40:45.599335+00	109396157226181_186739849491811	Post object (109396157226181_186739849491811)	3		83	2
618	2020-10-12 18:40:45.599896+00	109396157226181_186471782851951	Post object (109396157226181_186471782851951)	3		83	2
619	2020-10-12 18:40:45.600507+00	109396157226181_185951539570642	Post object (109396157226181_185951539570642)	3		83	2
620	2020-10-12 18:40:45.601001+00	109396157226181_185675712931558	Post object (109396157226181_185675712931558)	3		83	2
621	2020-10-12 18:40:45.601515+00	109396157226181_184973693001760	Post object (109396157226181_184973693001760)	3		83	2
622	2020-10-12 18:40:45.601992+00	109396157226181_184952886337174	Post object (109396157226181_184952886337174)	3		83	2
623	2020-10-12 18:40:45.602656+00	109396157226181_184720696360393	Post object (109396157226181_184720696360393)	3		83	2
624	2020-10-12 18:40:45.603357+00	109396157226181_184048273094302	Post object (109396157226181_184048273094302)	3		83	2
625	2020-10-12 18:40:45.604061+00	109396157226181_183068226525640	Post object (109396157226181_183068226525640)	3		83	2
626	2020-10-12 18:40:45.604684+00	109396157226181_182588973240232	Post object (109396157226181_182588973240232)	3		83	2
627	2020-10-12 18:40:45.60513+00	109396157226181_168015278030935	Post object (109396157226181_168015278030935)	3		83	2
628	2020-10-12 18:40:45.605599+00	109396157226181_164706101695186	Post object (109396157226181_164706101695186)	3		83	2
629	2020-10-12 18:40:45.606065+00	109396157226181_162459355253194	Post object (109396157226181_162459355253194)	3		83	2
630	2020-10-12 18:40:45.606755+00	109396157226181_157830185716111	Post object (109396157226181_157830185716111)	3		83	2
631	2020-10-12 18:40:45.607573+00	109396157226181_154101032755693	Post object (109396157226181_154101032755693)	3		83	2
632	2020-10-12 18:41:29.466193+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
633	2020-10-12 18:41:29.467372+00	109396157226181_191430545689408	Post object (109396157226181_191430545689408)	3		83	2
634	2020-10-12 18:41:29.468029+00	109396157226181_190865972412532	Post object (109396157226181_190865972412532)	3		83	2
635	2020-10-12 18:44:50.659135+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
636	2020-10-12 18:44:50.688256+00	109396157226181_191430545689408	Post object (109396157226181_191430545689408)	3		83	2
637	2020-10-12 18:44:50.689189+00	109396157226181_190865972412532	Post object (109396157226181_190865972412532)	3		83	2
638	2020-10-12 18:44:50.689981+00	109396157226181_189987545833708	Post object (109396157226181_189987545833708)	3		83	2
639	2020-10-12 18:44:50.690891+00	109396157226181_189290005903462	Post object (109396157226181_189290005903462)	3		83	2
640	2020-10-12 18:44:50.691563+00	109396157226181_189031255929337	Post object (109396157226181_189031255929337)	3		83	2
641	2020-10-12 18:44:50.692159+00	109396157226181_188194826012980	Post object (109396157226181_188194826012980)	3		83	2
642	2020-10-12 18:44:50.692627+00	109396157226181_187766966055766	Post object (109396157226181_187766966055766)	3		83	2
643	2020-10-12 18:44:50.693569+00	109396157226181_187470869418709	Post object (109396157226181_187470869418709)	3		83	2
644	2020-10-12 18:44:50.694432+00	109396157226181_186739849491811	Post object (109396157226181_186739849491811)	3		83	2
645	2020-10-12 18:44:50.695038+00	109396157226181_186471782851951	Post object (109396157226181_186471782851951)	3		83	2
646	2020-10-12 18:44:50.695621+00	109396157226181_185951539570642	Post object (109396157226181_185951539570642)	3		83	2
647	2020-10-12 18:44:50.696108+00	109396157226181_185675712931558	Post object (109396157226181_185675712931558)	3		83	2
648	2020-10-12 18:44:50.696545+00	109396157226181_184973693001760	Post object (109396157226181_184973693001760)	3		83	2
649	2020-10-12 18:44:50.697157+00	109396157226181_184952886337174	Post object (109396157226181_184952886337174)	3		83	2
650	2020-10-12 18:44:50.697688+00	109396157226181_184720696360393	Post object (109396157226181_184720696360393)	3		83	2
651	2020-10-12 18:44:50.698186+00	109396157226181_184048273094302	Post object (109396157226181_184048273094302)	3		83	2
652	2020-10-12 18:44:50.698624+00	109396157226181_183068226525640	Post object (109396157226181_183068226525640)	3		83	2
653	2020-10-12 18:44:50.699096+00	109396157226181_182588973240232	Post object (109396157226181_182588973240232)	3		83	2
654	2020-10-12 18:45:28.789914+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
655	2020-10-12 18:45:28.790966+00	109396157226181_191430545689408	Post object (109396157226181_191430545689408)	3		83	2
656	2020-10-12 18:45:28.791513+00	109396157226181_190865972412532	Post object (109396157226181_190865972412532)	3		83	2
657	2020-10-12 18:45:28.792031+00	109396157226181_189987545833708	Post object (109396157226181_189987545833708)	3		83	2
658	2020-10-12 18:45:28.792567+00	109396157226181_189290005903462	Post object (109396157226181_189290005903462)	3		83	2
659	2020-10-12 18:45:28.79308+00	109396157226181_189031255929337	Post object (109396157226181_189031255929337)	3		83	2
660	2020-10-12 18:45:28.793603+00	109396157226181_188194826012980	Post object (109396157226181_188194826012980)	3		83	2
661	2020-10-12 18:45:28.794081+00	109396157226181_187766966055766	Post object (109396157226181_187766966055766)	3		83	2
662	2020-10-12 18:45:28.794568+00	109396157226181_187470869418709	Post object (109396157226181_187470869418709)	3		83	2
663	2020-10-12 18:45:28.795034+00	109396157226181_186739849491811	Post object (109396157226181_186739849491811)	3		83	2
664	2020-10-12 18:45:28.795512+00	109396157226181_186471782851951	Post object (109396157226181_186471782851951)	3		83	2
665	2020-10-12 18:45:28.796013+00	109396157226181_185951539570642	Post object (109396157226181_185951539570642)	3		83	2
666	2020-10-12 18:45:28.796501+00	109396157226181_185675712931558	Post object (109396157226181_185675712931558)	3		83	2
667	2020-10-12 18:45:28.796972+00	109396157226181_184973693001760	Post object (109396157226181_184973693001760)	3		83	2
668	2020-10-12 18:45:28.797514+00	109396157226181_184952886337174	Post object (109396157226181_184952886337174)	3		83	2
669	2020-10-12 18:45:28.798566+00	109396157226181_184720696360393	Post object (109396157226181_184720696360393)	3		83	2
670	2020-10-12 18:45:28.799447+00	109396157226181_184048273094302	Post object (109396157226181_184048273094302)	3		83	2
671	2020-10-12 18:45:28.800034+00	109396157226181_183068226525640	Post object (109396157226181_183068226525640)	3		83	2
672	2020-10-12 18:45:28.800548+00	109396157226181_182588973240232	Post object (109396157226181_182588973240232)	3		83	2
673	2020-10-12 18:52:25.952124+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
674	2020-10-12 18:52:25.954647+00	109396157226181_191430545689408	Post object (109396157226181_191430545689408)	3		83	2
675	2020-10-12 18:52:25.955325+00	109396157226181_190865972412532	Post object (109396157226181_190865972412532)	3		83	2
676	2020-10-12 18:52:25.955844+00	109396157226181_189987545833708	Post object (109396157226181_189987545833708)	3		83	2
677	2020-10-12 18:52:25.956363+00	109396157226181_189290005903462	Post object (109396157226181_189290005903462)	3		83	2
678	2020-10-12 18:52:25.956967+00	109396157226181_189031255929337	Post object (109396157226181_189031255929337)	3		83	2
679	2020-10-12 18:52:25.957651+00	109396157226181_188194826012980	Post object (109396157226181_188194826012980)	3		83	2
680	2020-10-12 18:52:25.958206+00	109396157226181_187766966055766	Post object (109396157226181_187766966055766)	3		83	2
681	2020-10-12 18:52:25.958759+00	109396157226181_187470869418709	Post object (109396157226181_187470869418709)	3		83	2
682	2020-10-12 18:52:25.959262+00	109396157226181_186739849491811	Post object (109396157226181_186739849491811)	3		83	2
683	2020-10-12 18:52:25.959774+00	109396157226181_186471782851951	Post object (109396157226181_186471782851951)	3		83	2
684	2020-10-12 18:52:25.960267+00	109396157226181_185951539570642	Post object (109396157226181_185951539570642)	3		83	2
685	2020-10-12 18:52:25.960757+00	109396157226181_185675712931558	Post object (109396157226181_185675712931558)	3		83	2
686	2020-10-12 18:52:25.961269+00	109396157226181_184973693001760	Post object (109396157226181_184973693001760)	3		83	2
687	2020-10-12 18:52:25.961768+00	109396157226181_184952886337174	Post object (109396157226181_184952886337174)	3		83	2
688	2020-10-12 18:52:25.962247+00	109396157226181_184720696360393	Post object (109396157226181_184720696360393)	3		83	2
689	2020-10-12 18:52:25.962735+00	109396157226181_184048273094302	Post object (109396157226181_184048273094302)	3		83	2
690	2020-10-12 18:52:25.96321+00	109396157226181_183068226525640	Post object (109396157226181_183068226525640)	3		83	2
691	2020-10-12 18:52:25.963723+00	109396157226181_182588973240232	Post object (109396157226181_182588973240232)	3		83	2
692	2020-10-12 18:52:25.964206+00	109396157226181_168956744603455	Post object (109396157226181_168956744603455)	3		83	2
693	2020-10-12 18:52:25.964677+00	109396157226181_168015278030935	Post object (109396157226181_168015278030935)	3		83	2
694	2020-10-12 18:52:25.965408+00	109396157226181_164706101695186	Post object (109396157226181_164706101695186)	3		83	2
695	2020-10-12 18:52:25.966032+00	109396157226181_162459355253194	Post object (109396157226181_162459355253194)	3		83	2
696	2020-10-12 18:52:25.96656+00	109396157226181_157830185716111	Post object (109396157226181_157830185716111)	3		83	2
697	2020-10-12 18:52:25.96706+00	109396157226181_154101032755693	Post object (109396157226181_154101032755693)	3		83	2
698	2020-10-12 18:53:34.161184+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
699	2020-10-12 18:53:34.162517+00	109396157226181_191430545689408	Post object (109396157226181_191430545689408)	3		83	2
700	2020-10-12 18:53:34.163233+00	109396157226181_190865972412532	Post object (109396157226181_190865972412532)	3		83	2
701	2020-10-12 18:53:34.163828+00	109396157226181_189987545833708	Post object (109396157226181_189987545833708)	3		83	2
702	2020-10-12 18:53:34.164429+00	109396157226181_189290005903462	Post object (109396157226181_189290005903462)	3		83	2
703	2020-10-12 18:53:34.165018+00	109396157226181_189031255929337	Post object (109396157226181_189031255929337)	3		83	2
704	2020-10-12 18:53:34.165613+00	109396157226181_188194826012980	Post object (109396157226181_188194826012980)	3		83	2
705	2020-10-12 18:53:34.166177+00	109396157226181_187766966055766	Post object (109396157226181_187766966055766)	3		83	2
706	2020-10-12 18:53:34.166707+00	109396157226181_187470869418709	Post object (109396157226181_187470869418709)	3		83	2
707	2020-10-12 18:53:34.167215+00	109396157226181_186739849491811	Post object (109396157226181_186739849491811)	3		83	2
708	2020-10-12 18:53:34.167853+00	109396157226181_186471782851951	Post object (109396157226181_186471782851951)	3		83	2
709	2020-10-12 18:53:34.168393+00	109396157226181_185951539570642	Post object (109396157226181_185951539570642)	3		83	2
710	2020-10-12 18:53:34.168975+00	109396157226181_185675712931558	Post object (109396157226181_185675712931558)	3		83	2
711	2020-10-12 18:53:34.169489+00	109396157226181_184973693001760	Post object (109396157226181_184973693001760)	3		83	2
712	2020-10-12 18:53:34.169984+00	109396157226181_184952886337174	Post object (109396157226181_184952886337174)	3		83	2
713	2020-10-12 18:53:34.170481+00	109396157226181_184720696360393	Post object (109396157226181_184720696360393)	3		83	2
714	2020-10-12 18:53:34.171275+00	109396157226181_184048273094302	Post object (109396157226181_184048273094302)	3		83	2
715	2020-10-12 18:53:34.171796+00	109396157226181_183068226525640	Post object (109396157226181_183068226525640)	3		83	2
716	2020-10-12 18:53:34.172282+00	109396157226181_182588973240232	Post object (109396157226181_182588973240232)	3		83	2
717	2020-10-12 18:53:34.172807+00	109396157226181_168956744603455	Post object (109396157226181_168956744603455)	3		83	2
718	2020-10-12 18:53:34.173321+00	109396157226181_168015278030935	Post object (109396157226181_168015278030935)	3		83	2
719	2020-10-12 18:53:34.174048+00	109396157226181_164706101695186	Post object (109396157226181_164706101695186)	3		83	2
720	2020-10-12 18:53:34.17488+00	109396157226181_162459355253194	Post object (109396157226181_162459355253194)	3		83	2
721	2020-10-12 18:53:34.17544+00	109396157226181_157830185716111	Post object (109396157226181_157830185716111)	3		83	2
722	2020-10-12 18:53:34.175979+00	109396157226181_154101032755693	Post object (109396157226181_154101032755693)	3		83	2
723	2020-10-12 18:57:49.828262+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
724	2020-10-12 18:57:49.830075+00	109396157226181_191430545689408	Post object (109396157226181_191430545689408)	3		83	2
725	2020-10-12 18:57:49.830992+00	109396157226181_190865972412532	Post object (109396157226181_190865972412532)	3		83	2
726	2020-10-12 18:57:49.831521+00	109396157226181_189987545833708	Post object (109396157226181_189987545833708)	3		83	2
727	2020-10-12 18:57:49.832059+00	109396157226181_189290005903462	Post object (109396157226181_189290005903462)	3		83	2
728	2020-10-12 18:57:49.832567+00	109396157226181_189031255929337	Post object (109396157226181_189031255929337)	3		83	2
729	2020-10-12 18:57:49.833158+00	109396157226181_188194826012980	Post object (109396157226181_188194826012980)	3		83	2
730	2020-10-12 18:57:49.833711+00	109396157226181_187766966055766	Post object (109396157226181_187766966055766)	3		83	2
731	2020-10-12 18:57:49.834235+00	109396157226181_187470869418709	Post object (109396157226181_187470869418709)	3		83	2
732	2020-10-12 18:57:49.834732+00	109396157226181_186739849491811	Post object (109396157226181_186739849491811)	3		83	2
733	2020-10-12 18:57:49.835185+00	109396157226181_186471782851951	Post object (109396157226181_186471782851951)	3		83	2
734	2020-10-12 18:57:49.835752+00	109396157226181_185951539570642	Post object (109396157226181_185951539570642)	3		83	2
735	2020-10-12 18:57:49.836236+00	109396157226181_185675712931558	Post object (109396157226181_185675712931558)	3		83	2
736	2020-10-12 18:57:49.836722+00	109396157226181_184973693001760	Post object (109396157226181_184973693001760)	3		83	2
737	2020-10-12 18:57:49.83716+00	109396157226181_184952886337174	Post object (109396157226181_184952886337174)	3		83	2
738	2020-10-12 18:57:49.837623+00	109396157226181_184720696360393	Post object (109396157226181_184720696360393)	3		83	2
739	2020-10-12 18:57:49.838201+00	109396157226181_184048273094302	Post object (109396157226181_184048273094302)	3		83	2
740	2020-10-12 18:57:49.838826+00	109396157226181_183068226525640	Post object (109396157226181_183068226525640)	3		83	2
741	2020-10-12 18:57:49.83933+00	109396157226181_182588973240232	Post object (109396157226181_182588973240232)	3		83	2
742	2020-10-12 18:57:49.839793+00	109396157226181_168956744603455	Post object (109396157226181_168956744603455)	3		83	2
743	2020-10-12 18:57:49.840239+00	109396157226181_168015278030935	Post object (109396157226181_168015278030935)	3		83	2
744	2020-10-12 18:57:49.840684+00	109396157226181_164706101695186	Post object (109396157226181_164706101695186)	3		83	2
745	2020-10-12 18:57:49.841124+00	109396157226181_162459355253194	Post object (109396157226181_162459355253194)	3		83	2
746	2020-10-12 18:57:49.841556+00	109396157226181_157830185716111	Post object (109396157226181_157830185716111)	3		83	2
747	2020-10-12 18:57:49.842013+00	109396157226181_154101032755693	Post object (109396157226181_154101032755693)	3		83	2
748	2020-10-12 19:17:28.221361+00	109396157226181_191684868997309	Post object (109396157226181_191684868997309)	3		83	2
749	2020-10-12 19:17:28.223351+00	109396157226181_191430545689408	Post object (109396157226181_191430545689408)	3		83	2
750	2020-10-12 19:17:28.224433+00	109396157226181_190865972412532	Post object (109396157226181_190865972412532)	3		83	2
751	2020-10-12 19:17:28.225134+00	109396157226181_189987545833708	Post object (109396157226181_189987545833708)	3		83	2
752	2020-10-12 19:17:28.225972+00	109396157226181_189290005903462	Post object (109396157226181_189290005903462)	3		83	2
753	2020-10-12 19:17:28.22663+00	109396157226181_189031255929337	Post object (109396157226181_189031255929337)	3		83	2
754	2020-10-12 19:17:28.227369+00	109396157226181_188194826012980	Post object (109396157226181_188194826012980)	3		83	2
755	2020-10-12 19:17:28.227955+00	109396157226181_187766966055766	Post object (109396157226181_187766966055766)	3		83	2
756	2020-10-12 19:17:28.228446+00	109396157226181_187470869418709	Post object (109396157226181_187470869418709)	3		83	2
757	2020-10-12 19:17:28.22893+00	109396157226181_186739849491811	Post object (109396157226181_186739849491811)	3		83	2
758	2020-10-12 19:17:28.229381+00	109396157226181_186471782851951	Post object (109396157226181_186471782851951)	3		83	2
759	2020-10-12 19:17:28.229837+00	109396157226181_185951539570642	Post object (109396157226181_185951539570642)	3		83	2
760	2020-10-12 19:17:28.230366+00	109396157226181_185675712931558	Post object (109396157226181_185675712931558)	3		83	2
761	2020-10-12 19:17:28.230918+00	109396157226181_184973693001760	Post object (109396157226181_184973693001760)	3		83	2
762	2020-10-12 19:17:28.231453+00	109396157226181_184952886337174	Post object (109396157226181_184952886337174)	3		83	2
763	2020-10-12 19:17:28.232223+00	109396157226181_184720696360393	Post object (109396157226181_184720696360393)	3		83	2
764	2020-10-12 19:17:28.232851+00	109396157226181_184048273094302	Post object (109396157226181_184048273094302)	3		83	2
765	2020-10-12 19:17:28.233433+00	109396157226181_183068226525640	Post object (109396157226181_183068226525640)	3		83	2
766	2020-10-12 19:17:28.234007+00	109396157226181_182588973240232	Post object (109396157226181_182588973240232)	3		83	2
767	2020-10-12 19:17:28.234692+00	109396157226181_168956744603455	Post object (109396157226181_168956744603455)	3		83	2
768	2020-10-12 19:17:28.235383+00	109396157226181_168015278030935	Post object (109396157226181_168015278030935)	3		83	2
769	2020-10-12 19:17:28.236104+00	109396157226181_164706101695186	Post object (109396157226181_164706101695186)	3		83	2
770	2020-10-12 19:17:28.236672+00	109396157226181_162459355253194	Post object (109396157226181_162459355253194)	3		83	2
771	2020-10-12 19:17:28.237268+00	109396157226181_157830185716111	Post object (109396157226181_157830185716111)	3		83	2
772	2020-10-12 19:17:28.237828+00	109396157226181_154101032755693	Post object (109396157226181_154101032755693)	3		83	2
773	2020-10-12 19:41:00.230403+00	50	SocialMedia	1	[{"added": {}}]	2	2
774	2020-10-12 19:43:42.576936+00	50	SocialMedia	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
775	2020-10-12 19:45:18.751872+00	50	SocialMedia	2	[{"changed": {"fields": ["application_namespace", "xframe_options"]}}]	2	2
776	2020-10-12 19:45:25.720656+00	50	SocialMedia	2		2	2
777	2020-10-12 19:47:24.225878+00	50	SocialMedia	2	[{"changed": {"fields": ["slug"]}}]	2	2
778	2020-10-12 19:47:28.661405+00	50	SocialMedia	2		2	2
779	2020-10-12 19:48:15.264702+00	50	SocialMedia	2	[{"changed": {"fields": ["slug"]}}]	2	2
780	2020-10-12 19:48:39.181343+00	33	Dashboard	2		2	2
781	2020-10-12 19:48:42.761511+00	50	SocialMedia	2		2	2
782	2020-10-12 19:50:01.046328+00	50	SocialMedia	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
783	2020-10-12 19:50:05.343156+00	50	SocialMedia	2		2	2
784	2020-10-12 19:50:46.219374+00	50	SocialMedia	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
785	2020-10-12 19:50:49.14903+00	50	SocialMedia	2		2	2
786	2020-10-12 20:03:17.150889+00	33	Dashboard	3		2	2
787	2020-10-12 20:03:59.790991+00	52	App	1	[{"added": {}}]	2	2
788	2020-10-12 20:04:05.449212+00	52	App	2		2	2
789	2020-10-12 20:04:22.346771+00	52	App	2	[{"changed": {"fields": ["application_urls", "application_namespace", "xframe_options"]}}]	2	2
790	2020-10-12 20:04:25.948388+00	52	App	2		2	2
791	2020-10-12 20:04:52.326444+00	54	Social Media	1	[{"added": {}}]	2	2
792	2020-10-12 20:04:59.854815+00	54	Social Media	2		2	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	cms	placeholder
2	cms	page
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
8	admin	logentry
9	sites	site
10	cms	cmsplugin
11	cms	aliaspluginmodel
12	cms	globalpagepermission
13	cms	pagepermission
14	cms	pageuser
15	cms	pageusergroup
16	cms	placeholderreference
17	cms	staticplaceholder
18	cms	title
19	cms	usersettings
20	cms	urlconfrevision
21	cms	pagetype
22	cms	treenode
23	menus	cachekey
24	djangocms_text_ckeditor	text
25	filer	clipboard
26	filer	clipboarditem
27	filer	file
28	filer	folder
29	filer	folderpermission
30	filer	image
31	filer	thumbnailoption
32	easy_thumbnails	source
33	easy_thumbnails	thumbnail
34	easy_thumbnails	thumbnaildimensions
35	bootstrap4_alerts	bootstrap4alerts
36	bootstrap4_badge	bootstrap4badge
37	bootstrap4_card	bootstrap4card
38	bootstrap4_card	bootstrap4cardinner
39	bootstrap4_carousel	bootstrap4carousel
40	bootstrap4_carousel	bootstrap4carouselslide
41	bootstrap4_collapse	bootstrap4collapse
42	bootstrap4_collapse	bootstrap4collapsecontainer
43	bootstrap4_collapse	bootstrap4collapsetrigger
44	bootstrap4_content	bootstrap4blockquote
45	bootstrap4_content	bootstrap4code
46	bootstrap4_content	bootstrap4figure
47	bootstrap4_grid	bootstrap4gridcolumn
48	bootstrap4_grid	bootstrap4gridcontainer
49	bootstrap4_grid	bootstrap4gridrow
50	bootstrap4_jumbotron	bootstrap4jumbotron
51	bootstrap4_link	bootstrap4link
52	bootstrap4_listgroup	bootstrap4listgroup
53	bootstrap4_listgroup	bootstrap4listgroupitem
54	bootstrap4_media	bootstrap4media
55	bootstrap4_media	bootstrap4mediabody
56	bootstrap4_picture	bootstrap4picture
60	djangocms_file	file
57	bootstrap4_tabs	bootstrap4tab
58	bootstrap4_tabs	bootstrap4tabitem
59	bootstrap4_utilities	bootstrap4spacing
61	djangocms_file	folder
62	djangocms_icon	icon
63	djangocms_link	link
64	djangocms_picture	picture
65	djangocms_style	style
66	djangocms_snippet	snippet
67	djangocms_snippet	snippetptr
68	djangocms_googlemap	googlemap
69	djangocms_googlemap	googlemapmarker
70	djangocms_googlemap	googlemaproute
71	djangocms_video	videoplayer
72	djangocms_video	videosource
73	djangocms_video	videotrack
74	custom_plugins	test1
75	forms	volunteerapplication
76	core_forms	profile
77	core_plugins	test1
78	core_forms	volunteerapplication
79	background_task	completedtask
80	background_task	task
81	core_app	image
82	core_app	attachment
83	core_app	post
84	core_app	target
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-10-11 19:35:03.83191+00
2	auth	0001_initial	2020-10-11 19:35:03.852792+00
3	admin	0001_initial	2020-10-11 19:35:03.878898+00
4	admin	0002_logentry_remove_auto_add	2020-10-11 19:35:03.915905+00
5	admin	0003_logentry_add_action_flag_choices	2020-10-11 19:35:03.921681+00
6	contenttypes	0002_remove_content_type_name	2020-10-11 19:35:03.932259+00
7	auth	0002_alter_permission_name_max_length	2020-10-11 19:35:03.935303+00
8	auth	0003_alter_user_email_max_length	2020-10-11 19:35:03.9418+00
9	auth	0004_alter_user_username_opts	2020-10-11 19:35:03.947785+00
10	auth	0005_alter_user_last_login_null	2020-10-11 19:35:03.954446+00
11	auth	0006_require_contenttypes_0002	2020-10-11 19:35:03.955598+00
12	auth	0007_alter_validators_add_error_messages	2020-10-11 19:35:03.960198+00
13	auth	0008_alter_user_username_max_length	2020-10-11 19:35:03.966279+00
14	auth	0009_alter_user_last_name_max_length	2020-10-11 19:35:03.971776+00
15	auth	0010_alter_group_name_max_length	2020-10-11 19:35:03.9768+00
16	auth	0011_update_proxy_permissions	2020-10-11 19:35:03.982704+00
17	sites	0001_initial	2020-10-11 19:35:03.986652+00
18	cms	0001_initial	2020-10-11 19:35:04.029792+00
19	cms	0002_auto_20140816_1918	2020-10-11 19:35:04.209974+00
20	cms	0003_auto_20140926_2347	2020-10-11 19:35:04.246519+00
21	cms	0004_auto_20140924_1038	2020-10-11 19:35:04.29789+00
22	cms	0005_auto_20140924_1039	2020-10-11 19:35:04.317101+00
23	cms	0006_auto_20140924_1110	2020-10-11 19:35:04.401763+00
24	cms	0007_auto_20141028_1559	2020-10-11 19:35:04.411991+00
25	cms	0008_auto_20150208_2149	2020-10-11 19:35:04.417976+00
26	cms	0008_auto_20150121_0059	2020-10-11 19:35:04.430963+00
27	cms	0009_merge	2020-10-11 19:35:04.432416+00
28	cms	0010_migrate_use_structure	2020-10-11 19:35:04.460792+00
29	cms	0011_auto_20150419_1006	2020-10-11 19:35:04.512608+00
30	cms	0012_auto_20150607_2207	2020-10-11 19:35:04.547643+00
31	cms	0013_urlconfrevision	2020-10-11 19:35:04.551693+00
32	cms	0014_auto_20160404_1908	2020-10-11 19:35:04.566324+00
33	cms	0015_auto_20160421_0000	2020-10-11 19:35:04.574359+00
34	cms	0016_auto_20160608_1535	2020-10-11 19:35:04.60427+00
35	bootstrap4_alerts	0001_initial	2020-10-11 19:35:04.620107+00
36	bootstrap4_badge	0001_initial	2020-10-11 19:35:04.63828+00
37	bootstrap4_card	0001_initial	2020-10-11 19:35:04.671102+00
38	filer	0001_initial	2020-10-11 19:35:04.850607+00
39	filer	0002_auto_20150606_2003	2020-10-11 19:35:04.895084+00
40	filer	0003_thumbnailoption	2020-10-11 19:35:04.900105+00
41	filer	0004_auto_20160328_1434	2020-10-11 19:35:04.910067+00
42	filer	0005_auto_20160623_1425	2020-10-11 19:35:05.027372+00
43	filer	0006_auto_20160623_1627	2020-10-11 19:35:05.04639+00
44	filer	0007_auto_20161016_1055	2020-10-11 19:35:05.053167+00
45	filer	0008_auto_20171117_1313	2020-10-11 19:35:05.061854+00
46	filer	0009_auto_20171220_1635	2020-10-11 19:35:05.074219+00
47	filer	0010_auto_20180414_2058	2020-10-11 19:35:05.086866+00
48	filer	0011_auto_20190418_0137	2020-10-11 19:35:05.117691+00
49	bootstrap4_carousel	0001_initial	2020-10-11 19:35:05.161781+00
50	bootstrap4_carousel	0002_bootstrap4carousel_carousel_aspect_ratio	2020-10-11 19:35:05.175184+00
51	bootstrap4_carousel	0003_auto_20180610_1102	2020-10-11 19:35:05.194156+00
52	bootstrap4_carousel	0004_auto_20190703_0831	2020-10-11 19:35:05.226807+00
53	bootstrap4_collapse	0001_initial	2020-10-11 19:35:05.285951+00
54	bootstrap4_content	0001_initial	2020-10-11 19:35:05.334814+00
55	bootstrap4_content	0002_added_figure	2020-10-11 19:35:05.36235+00
56	bootstrap4_grid	0001_initial	2020-10-11 19:35:05.527394+00
57	bootstrap4_grid	0002_auto_20180709_0808	2020-10-11 19:35:05.585547+00
58	bootstrap4_grid	0003_migrate_column_size	2020-10-11 19:35:05.611929+00
59	bootstrap4_grid	0004_remove_bootstrap4gridcolumn_column_size	2020-10-11 19:35:05.625131+00
60	bootstrap4_jumbotron	0001_initial	2020-10-11 19:35:05.650701+00
61	bootstrap4_link	0001_initial	2020-10-11 19:35:05.678806+00
62	bootstrap4_link	0002_add_icons	2020-10-11 19:35:05.713673+00
63	bootstrap4_link	0003_icon_updates	2020-10-11 19:35:05.745905+00
64	bootstrap4_link	0004_auto_20190703_0831	2020-10-11 19:35:05.788914+00
65	bootstrap4_listgroup	0001_initial	2020-10-11 19:35:05.852088+00
66	bootstrap4_media	0001_initial	2020-10-11 19:35:05.970884+00
67	djangocms_picture	0001_initial	2020-10-11 19:35:06.001141+00
68	djangocms_picture	0002_auto_20151018_1927	2020-10-11 19:35:06.040984+00
69	djangocms_picture	0003_migrate_to_filer	2020-10-11 19:35:06.183477+00
70	djangocms_picture	0004_adapt_fields	2020-10-11 19:35:06.766919+00
71	djangocms_picture	0005_reset_null_values	2020-10-11 19:35:06.79777+00
72	djangocms_picture	0006_remove_null_values	2020-10-11 19:35:06.846618+00
73	djangocms_picture	0007_fix_alignment	2020-10-11 19:35:06.871121+00
74	djangocms_picture	0008_picture_use_responsive_image	2020-10-11 19:35:06.896719+00
75	bootstrap4_picture	0001_initial	2020-10-11 19:35:06.929169+00
76	bootstrap4_picture	0002_bootstrap4picture_use_responsive_image	2020-10-11 19:35:06.960891+00
77	bootstrap4_picture	0003_auto_20181212_1055	2020-10-11 19:35:07.051413+00
78	bootstrap4_picture	0004_auto_20190703_0831	2020-10-11 19:35:07.188457+00
79	bootstrap4_tabs	0001_initial	2020-10-11 19:35:07.251801+00
80	bootstrap4_tabs	0002_auto_20180610_1106	2020-10-11 19:35:07.284019+00
81	bootstrap4_utilities	0001_initial	2020-10-11 19:35:07.317366+00
82	cms	0017_pagetype	2020-10-11 19:35:07.364116+00
83	cms	0018_pagenode	2020-10-11 19:35:07.474663+00
84	cms	0019_set_pagenode	2020-10-11 19:35:07.615759+00
85	cms	0020_old_tree_cleanup	2020-10-11 19:35:07.751768+00
86	cms	0021_auto_20180507_1432	2020-10-11 19:35:07.7648+00
87	cms	0022_auto_20180620_1551	2020-10-11 19:35:07.785736+00
88	core_app	0001_initial	2020-10-11 19:35:07.811758+00
89	core_app	0002_auto_20200613_1650	2020-10-11 19:35:07.835585+00
90	core_app	0003_delete_profile	2020-10-11 19:35:07.83962+00
91	core_forms	0001_initial	2020-10-11 19:35:07.860801+00
92	core_forms	0002_auto_20200601_2047	2020-10-11 19:35:07.878103+00
93	core_forms	0003_auto_20200613_1650	2020-10-11 19:35:07.918604+00
94	core_forms	0004_profile	2020-10-11 19:35:07.944118+00
95	core_forms	0005_auto_20200613_1858	2020-10-11 19:35:08.002273+00
96	core_plugins	0001_initial	2020-10-11 19:35:08.089243+00
97	core_plugins	0002_auto_20200613_1551	2020-10-11 19:35:08.115884+00
98	djangocms_file	0001_initial	2020-10-11 19:35:08.14063+00
99	djangocms_file	0002_auto_20151202_1551	2020-10-11 19:35:08.170872+00
100	djangocms_file	0003_remove_related_name_for_cmsplugin_ptr	2020-10-11 19:35:08.197788+00
101	djangocms_file	0004_set_related_name_for_cmsplugin_ptr	2020-10-11 19:35:08.223957+00
102	djangocms_file	0005_auto_20160119_1534	2020-10-11 19:35:08.234386+00
103	djangocms_file	0006_migrate_to_filer	2020-10-11 19:35:08.313925+00
104	djangocms_file	0007_adapted_fields	2020-10-11 19:35:08.531178+00
105	djangocms_file	0008_add_folder	2020-10-11 19:35:08.556619+00
106	djangocms_file	0009_fixed_null_fields	2020-10-11 19:35:08.607146+00
107	djangocms_file	0010_removed_null_fields	2020-10-11 19:35:08.622968+00
108	djangocms_file	0011_auto_20181211_0357	2020-10-11 19:35:08.650335+00
109	djangocms_googlemap	0001_initial	2020-10-11 19:35:08.676176+00
110	djangocms_googlemap	0002_auto_20160622_1031	2020-10-11 19:35:08.736658+00
111	djangocms_googlemap	0003_auto_20160825_1829	2020-10-11 19:35:08.750049+00
112	djangocms_googlemap	0004_adapted_fields	2020-10-11 19:35:09.152591+00
113	djangocms_googlemap	0005_create_nested_plugins	2020-10-11 19:35:09.205099+00
114	djangocms_googlemap	0006_remove_fields	2020-10-11 19:35:09.289677+00
115	djangocms_googlemap	0007_reset_null_values	2020-10-11 19:35:09.403618+00
116	djangocms_googlemap	0008_removed_null_fields	2020-10-11 19:35:09.418425+00
117	djangocms_googlemap	0009_googlemapmarker_icon	2020-10-11 19:35:09.444824+00
118	djangocms_googlemap	0010_auto_20190718_1021	2020-10-11 19:35:09.487888+00
119	djangocms_icon	0001_initial	2020-10-11 19:35:09.516487+00
120	djangocms_icon	0002_auto_20190218_2017	2020-10-11 19:35:09.568973+00
121	djangocms_link	0001_initial	2020-10-11 19:35:09.597788+00
122	djangocms_link	0002_auto_20140929_1705	2020-10-11 19:35:09.619127+00
123	djangocms_link	0003_auto_20150212_1310	2020-10-11 19:35:09.636933+00
124	djangocms_link	0004_auto_20150708_1133	2020-10-11 19:35:09.670039+00
125	djangocms_link	0005_auto_20151003_1710	2020-10-11 19:35:09.689273+00
126	djangocms_link	0006_remove_related_name_for_cmsplugin_ptr	2020-10-11 19:35:09.717502+00
127	djangocms_link	0007_set_related_name_for_cmsplugin_ptr	2020-10-11 19:35:09.74844+00
128	djangocms_link	0008_link_attributes	2020-10-11 19:35:09.770708+00
129	djangocms_link	0009_auto_20160705_1344	2020-10-11 19:35:09.793363+00
130	djangocms_link	0010_adapted_fields	2020-10-11 19:35:10.018807+00
131	djangocms_link	0011_fixed_null_values	2020-10-11 19:35:10.067851+00
132	djangocms_link	0012_removed_null	2020-10-11 19:35:10.120953+00
133	djangocms_link	0013_fix_hostname	2020-10-11 19:35:10.138581+00
134	djangocms_link	0014_link_file_link	2020-10-11 19:35:10.165113+00
135	djangocms_link	0015_auto_20190621_0407	2020-10-11 19:35:10.188467+00
136	djangocms_picture	0009_auto_20181212_1003	2020-10-11 19:35:10.331841+00
137	djangocms_picture	0010_auto_20190627_0432	2020-10-11 19:35:10.395809+00
138	djangocms_picture	0011_auto_20190314_1536	2020-10-11 19:35:10.457462+00
139	djangocms_snippet	0001_initial	2020-10-11 19:35:10.491892+00
140	djangocms_snippet	0002_snippet_slug	2020-10-11 19:35:10.500541+00
141	djangocms_snippet	0003_auto_data_fill_slug	2020-10-11 19:35:10.552527+00
142	djangocms_snippet	0004_auto_alter_slug_unique	2020-10-11 19:35:10.562496+00
143	djangocms_snippet	0005_set_related_name_for_cmsplugin_ptr	2020-10-11 19:35:10.591348+00
144	djangocms_snippet	0006_auto_20160831_0729	2020-10-11 19:35:10.615432+00
145	djangocms_snippet	0007_auto_alter_template_helptext	2020-10-11 19:35:10.621272+00
146	djangocms_snippet	0008_auto_change_name	2020-10-11 19:35:10.635383+00
147	djangocms_style	0001_initial	2020-10-11 19:35:10.734592+00
148	djangocms_style	0002_set_related_name_for_cmsplugin_ptr	2020-10-11 19:35:10.765314+00
149	djangocms_style	0003_adapted_fields	2020-10-11 19:35:10.9355+00
150	djangocms_style	0004_use_positive_small_integer_field	2020-10-11 19:35:11.043449+00
151	djangocms_style	0005_reset_null_values	2020-10-11 19:35:11.156573+00
152	djangocms_style	0006_removed_null_fields	2020-10-11 19:35:11.172833+00
153	djangocms_style	0007_style_template	2020-10-11 19:35:11.189358+00
154	djangocms_text_ckeditor	0001_initial	2020-10-11 19:35:11.219499+00
155	djangocms_text_ckeditor	0002_remove_related_name_for_cmsplugin_ptr	2020-10-11 19:35:11.251628+00
156	djangocms_text_ckeditor	0003_set_related_name_for_cmsplugin_ptr	2020-10-11 19:35:11.28175+00
157	djangocms_text_ckeditor	0004_auto_20160706_1339	2020-10-11 19:35:11.334518+00
158	djangocms_video	0001_initial	2020-10-11 19:35:11.367698+00
159	djangocms_video	0002_set_related_name_for_cmsplugin_ptr	2020-10-11 19:35:11.399382+00
160	djangocms_video	0003_field_adaptions	2020-10-11 19:35:11.640286+00
161	djangocms_video	0004_move_to_attributes	2020-10-11 19:35:12.012549+00
162	djangocms_video	0005_migrate_to_filer	2020-10-11 19:35:12.063665+00
163	djangocms_video	0006_field_adaptions	2020-10-11 19:35:12.178635+00
164	djangocms_video	0007_create_nested_plugin	2020-10-11 19:35:12.254307+00
165	djangocms_video	0008_reset_null_values	2020-10-11 19:35:12.307209+00
166	djangocms_video	0009_removed_null_values	2020-10-11 19:35:12.32971+00
167	djangocms_video	0010_videoplayer_parameters	2020-10-11 19:35:12.423982+00
168	easy_thumbnails	0001_initial	2020-10-11 19:35:12.445884+00
169	easy_thumbnails	0002_thumbnaildimensions	2020-10-11 19:35:12.462704+00
170	menus	0001_initial	2020-10-11 19:35:12.469785+00
171	sessions	0001_initial	2020-10-11 19:35:12.475439+00
172	sites	0002_alter_domain_unique	2020-10-11 19:35:12.485514+00
173	cms	0018_create_pagenode	2020-10-11 19:35:12.487966+00
174	background_task	0001_initial	2020-10-12 01:18:48.037841+00
175	background_task	0002_auto_20170927_1109	2020-10-12 01:18:48.202265+00
176	core_app	0004_auto_20201012_1318	2020-10-12 18:18:07.604692+00
177	core_app	0005_auto_20201012_1323	2020-10-12 18:23:56.871037+00
178	core_app	0006_auto_20201012_1336	2020-10-12 18:36:09.29136+00
179	core_app	0007_auto_20201012_1351	2020-10-12 18:51:30.863369+00
180	core_app	0008_post_created_time	2020-10-12 19:16:58.607106+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
1tr5lyx17b5x7simr73dibps0k6cmaqx	MWFhNmIxNDg2ZTkxMjRiMDM1Mjg5ZjU0ZjAwZWY5ZDk0NWNhMzY2NDp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOmZhbHNlLCJjbXNfcHJldmlldyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIifQ==	2020-06-14 21:06:07.802+00
2ulxs0v5a5n5l6gmdmeutgiox30lz7ax	ZGVjYmZkZmQ2ZjQyNDQxNjJmMDFkZTkzYTc5ODJkNGNmZWU5ZjNkOTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=	2020-06-05 15:59:38.947+00
3n7m8zdwi2o333uyi3jts018ata9wijs	YzRhMTZlNzdlZWYxNjQ4NWY1NjYyYmU5YmQ5ODRjYWZiYjNiMDI1MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZWQ1ZjI3NjNjMzJjYTg4MDJhNWU1YmQwZjlmNWIzOTliNTRhMTRlIiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJjbXNfZWRpdCI6ZmFsc2UsImNtc19wcmV2aWV3Ijp0cnVlLCJ3aXphcmRfd2l6YXJkX2NyZWF0ZV92aWV3Ijp7InN0ZXAiOm51bGwsInN0ZXBfZGF0YSI6e30sInN0ZXBfZmlsZXMiOnt9LCJleHRyYV9kYXRhIjp7fX0sImZpbGVyX2xhc3RfZm9sZGVyX2lkIjpudWxsfQ==	2020-05-30 11:47:06.092+00
74k50kvyzdiqi9v0r50ub1vtrpegimqj	MmFiMTBhOWZlMGM5ODExM2MxNDQ2NTE0Zjk3MzQ2ZTEwOWI3ZWIzZTp7ImNtc19lZGl0IjpmYWxzZX0=	2020-10-24 19:08:17.65+00
8b1bergvc34spujj1xsv5rk1wakvhu4y	MmYxZjI3MmY2ZDM4YWExZTUxMDJiNzU2OWUxN2JjMmNmZGM0NzFkYTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOmZhbHNlLCJjbXNfcHJldmlldyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIiLCJmaWxlcl9sYXN0X2ZvbGRlcl9pZCI6bnVsbH0=	2020-06-02 23:18:26.215+00
8bxu7otj46lvmijs4zq8g24yfjdpzct7	ZGVjYmZkZmQ2ZjQyNDQxNjJmMDFkZTkzYTc5ODJkNGNmZWU5ZjNkOTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=	2020-06-14 17:27:50.434+00
8jek412dm5vpvlj93pdnfac99wl3q8vk	YmRlYWZmY2Y2YWE4M2ZiZDIxNzZhNTA3ZjNjMjlkYzI1OWEzYThmZTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIifQ==	2020-07-01 05:41:06.688+00
9m4lk262xxsjxootk6f4wwyqnmuroxgk	ZDAxMzEzYTg5ZTk5YzNiNWViODNkMDU3YTlhNTRiYzM1Yjg1N2FlYzp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIiLCJmaWxlcl9sYXN0X2ZvbGRlcl9pZCI6bnVsbH0=	2020-06-14 17:10:12.292+00
b32b9khk2x3t52x5uu1ew5eehncr6yg5	MWFhNmIxNDg2ZTkxMjRiMDM1Mjg5ZjU0ZjAwZWY5ZDk0NWNhMzY2NDp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOmZhbHNlLCJjbXNfcHJldmlldyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIifQ==	2020-10-25 18:36:00.631+00
bku3c786tt09ec5yn28p0slc5dvekb6w	YTVhNTFhYmIwZjhiNzAwMzQ5MzA5MGU4N2U1MzgwNWJkODgwM2UzYzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZTZmMjI5MGI5M2Y0ZDIwYjcyZWZkMDdkZjQ1OTQ3YzQyNGJmN2NhIn0=	2020-06-14 22:11:30.824+00
divh6kn71dj3stynrmwl60h2mfw6eeje	ZjBlNjc0YTgyYjk1ZDMyOTVmYTQwYjZmOWUxOGNkNjZhZmRjZjVmMzp7ImNtc19lZGl0IjpmYWxzZSwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJjbXNfcHJldmlldyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIifQ==	2020-10-25 19:18:39.566+00
frf3982ca0jrziperihxvfc37s0tresc	MmFiMTBhOWZlMGM5ODExM2MxNDQ2NTE0Zjk3MzQ2ZTEwOWI3ZWIzZTp7ImNtc19lZGl0IjpmYWxzZX0=	2020-10-25 03:57:18.354+00
i9jnahykyuced64hma652p9frbws70yi	MmFiMTBhOWZlMGM5ODExM2MxNDQ2NTE0Zjk3MzQ2ZTEwOWI3ZWIzZTp7ImNtc19lZGl0IjpmYWxzZX0=	2020-07-01 05:31:40.268+00
j69buiwatf3dxk9mmmeks30y67i9749t	MTYyMjA3MzEzYjVmZTdmYjUxY2Y5YzExYTAyMjg1YzBmMjhjMmQxMzp7fQ==	2020-07-01 03:47:18.278+00
jgxt968tbxstm7q1x6iwxohhygdg0p1u	YmRlYWZmY2Y2YWE4M2ZiZDIxNzZhNTA3ZjNjMjlkYzI1OWEzYThmZTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIifQ==	2020-06-27 02:03:28.794+00
kotrscu82u20vie08qyn751c9td6tn9n	ZGVjYmZkZmQ2ZjQyNDQxNjJmMDFkZTkzYTc5ODJkNGNmZWU5ZjNkOTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=	2020-06-01 03:01:10.407+00
m6vwg3b3kv11t923nyj58zbr6et1sloz	MmFiMTBhOWZlMGM5ODExM2MxNDQ2NTE0Zjk3MzQ2ZTEwOWI3ZWIzZTp7ImNtc19lZGl0IjpmYWxzZX0=	2020-08-10 14:30:09.834+00
mlftoz28x12g7ki3bktxiopu5jded3gh	MmFiMTBhOWZlMGM5ODExM2MxNDQ2NTE0Zjk3MzQ2ZTEwOWI3ZWIzZTp7ImNtc19lZGl0IjpmYWxzZX0=	2020-10-24 21:35:45.147+00
plkcgvgi9nzyxjt94zwm098f1se1hfh3	ZGVjYmZkZmQ2ZjQyNDQxNjJmMDFkZTkzYTc5ODJkNGNmZWU5ZjNkOTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=	2020-06-14 21:19:20.711+00
sknpbu66g9u4cutp9gdb4bad9knsksbt	ZGVjYmZkZmQ2ZjQyNDQxNjJmMDFkZTkzYTc5ODJkNGNmZWU5ZjNkOTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=	2020-10-25 03:54:51.7+00
uhpx4q0h1u741u6aodkj1hycwp56zs8y	MmFiMTBhOWZlMGM5ODExM2MxNDQ2NTE0Zjk3MzQ2ZTEwOWI3ZWIzZTp7ImNtc19lZGl0IjpmYWxzZX0=	2020-10-24 19:08:17.205+00
ujolp2jr36rr72b9fgd05brabuq0lfnk	MWFhNmIxNDg2ZTkxMjRiMDM1Mjg5ZjU0ZjAwZWY5ZDk0NWNhMzY2NDp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOmZhbHNlLCJjbXNfcHJldmlldyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIifQ==	2020-09-11 05:04:07.473+00
vcjbauihhs4hjd0ryxqymi3dzznguj7e	ZGVjYmZkZmQ2ZjQyNDQxNjJmMDFkZTkzYTc5ODJkNGNmZWU5ZjNkOTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=	2020-06-05 15:18:57.729+00
vls2ogqc4rz5vjn9gyn2o17gfmp7wzy6	ZGVjYmZkZmQ2ZjQyNDQxNjJmMDFkZTkzYTc5ODJkNGNmZWU5ZjNkOTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=	2020-06-13 02:06:18.147+00
wglljm3ooh9iuluofput8wl4wzx9h2nh	MmFiMTBhOWZlMGM5ODExM2MxNDQ2NTE0Zjk3MzQ2ZTEwOWI3ZWIzZTp7ImNtc19lZGl0IjpmYWxzZX0=	2020-10-24 21:35:45.306+00
wj0gyj4den010d6mq27hmpj4gmmjj3bl	NjAzZjA1MTcwZjNlNWZjNmMwNWZiNWE5NWJhNGU1Zjc5ZjU0ZjVjNDp7ImNtc19lZGl0IjpmYWxzZSwiY21zX3ByZXZpZXciOnRydWUsImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImZkNDQ2OWExZTk4YmZiMjE0ZDg2MzNkODVjZGE5ZGNlYjFhZDM0N2QifQ==	2020-06-01 06:20:41.359+00
xgkbqt01vbhdz93niz6ds58sgajvvekk	MmYxZjI3MmY2ZDM4YWExZTUxMDJiNzU2OWUxN2JjMmNmZGM0NzFkYTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOmZhbHNlLCJjbXNfcHJldmlldyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIiLCJmaWxlcl9sYXN0X2ZvbGRlcl9pZCI6bnVsbH0=	2020-06-27 04:35:06.593+00
xu519z6prqcgkh8rvlunvuqrf8b6mqes	MWFhNmIxNDg2ZTkxMjRiMDM1Mjg5ZjU0ZjAwZWY5ZDk0NWNhMzY2NDp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOmZhbHNlLCJjbXNfcHJldmlldyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIifQ==	2020-10-25 03:57:22.736+00
xwcr1u9ejrs2l8yr1q7l7d27xxos9q4y	YmRlYWZmY2Y2YWE4M2ZiZDIxNzZhNTA3ZjNjMjlkYzI1OWEzYThmZTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIifQ==	2020-06-14 17:52:30.78+00
z2sxkxg6g7elpu7ue7pe2pmf6flza8qx	ZGVjYmZkZmQ2ZjQyNDQxNjJmMDFkZTkzYTc5ODJkNGNmZWU5ZjNkOTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=	2020-07-01 05:24:39.373+00
zz1k8w28n22xd4p9ot53g0h0vv8ye8px	MmFiMTBhOWZlMGM5ODExM2MxNDQ2NTE0Zjk3MzQ2ZTEwOWI3ZWIzZTp7ImNtc19lZGl0IjpmYWxzZX0=	2020-10-24 21:35:45.451+00
9js2khc0iscvafxqla7on2baqqxjctm6	ZGVjYmZkZmQ2ZjQyNDQxNjJmMDFkZTkzYTc5ODJkNGNmZWU5ZjNkOTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZX0=	2020-10-25 19:36:51.153534+00
5665pqt95f801khe7fhrlvmovcqdpt00	YmRlYWZmY2Y2YWE4M2ZiZDIxNzZhNTA3ZjNjMjlkYzI1OWEzYThmZTp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiY21zX2VkaXQiOnRydWUsImNtc19wcmV2aWV3IjpmYWxzZSwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUzM2IzNGRkOTdjYTEwZTMyZDk2YmFjNGRhYjI3NjQ0YTMyMzQ2MzIifQ==	2020-10-26 20:04:59.917276+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	bridge-hospice.com	bridge-hospice.com
2	stage.bridge-hospice.com	Stage Environment
\.


--
-- Data for Name: djangocms_file_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
\.


--
-- Data for Name: djangocms_file_folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
\.


--
-- Data for Name: djangocms_googlemap_googlemap; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
244	Location	13	33.5189	-101.889671	100%	400px	t	t	t	t	t	t	t		t	ROADMAP	t	t	default
3390	Location	13	33.5189	-101.889671	100%	400px	t	t	t	t	t	t	t		t	ROADMAP	t	t	default
\.


--
-- Data for Name: djangocms_googlemap_googlemapmarker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
\.


--
-- Data for Name: djangocms_googlemap_googlemaproute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
\.


--
-- Data for Name: djangocms_icon_icon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_icon_icon (cmsplugin_ptr_id, icon, template, label, attributes) FROM stdin;
1999	fas fa-phone	default		{}
2000	fas fa-fax	default		{}
2001	fas fa-envelope	default		{}
2002	far fa-clock	default		{}
2003	fas fa-building	default		{}
2004	fas fa-laptop-code	default		{}
2030	fas fa-hands-helping	default		{}
3399	fas fa-phone	default		{}
3400	fas fa-fax	default		{}
3401	fas fa-envelope	default		{}
3404	far fa-clock	default		{}
3407	fas fa-building	default		{}
3410	fas fa-laptop-code	default		{}
3559	fas fa-hands-helping	default		{}
\.


--
-- Data for Name: djangocms_link_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template, file_link_id) FROM stdin;
\.


--
-- Data for Name: djangocms_picture_picture; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template, use_responsive_image) FROM stdin;
\.


--
-- Data for Name: djangocms_snippet_snippet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
1	Home Page Banner	{% load static %}\r\n\r\n<div class="text-center hero-container">\r\n        <a href="/" class="hover-dim" title="Click here for contact information.">\r\n            <p class="hero-caption text-light mb-1"><span class="bg bg-secondary-opaque rounded px-3 pb-1">EXTENDING LOVE, COMFORT, AND CARE</span></p>\r\n            <img src="{% static 'images/BridgeHospiceLogo.png' %}" class="img-fluid" alt="Bridge Hospice" style="width: 30%; max-width: 500px;"/>\r\n        </a>\r\n    </div>		home-page-banner
2	Home Page Styles	<style>\r\n\r\n\r\n    .nav-box {\r\n\tmin-height: 275px;\r\n\tborder:  2px solid var(--light);\r\n\tborder-top: 0;\r\n}\r\n\r\n\r\n        .hover-dim:hover {\r\n            opacity: 0.8;\r\n        }\r\n        .bg-secondary-opaque {\r\n            padding-top: 5px;\r\n            background-color: rgba(0, 40, 86, 0.8);\r\n        }\r\n        .hero-container {\r\n            position: relative;\r\n            width: 100%;\r\n            overflow: visible;\r\n            transform: translate(0, -43%);\r\n            margin-bottom: -12%;\r\n        }\r\n\r\n        .hero-caption {\r\n            font-size: 40px !important;\r\n        }\r\n        @media (max-width: 1200px) {\r\n            .hero-caption {\r\n                font-size: 35px !important;\r\n            }\r\n        }\r\n        @media (max-width: 1000px) {\r\n            .hero-caption {\r\n                font-size: 30px !important;\r\n            }\r\n        }\r\n        @media (max-width: 768px) {\r\n            .hero-caption {\r\n                font-size: 20px !important;\r\n            }\r\n        }\r\n        @media (max-width: 445px) {\r\n            .hero-caption {\r\n                font-size: 15px !important;\r\n            }\r\n        }\r\n        @media (max-width: 335px) {\r\n            .hero-caption {\r\n                font-size: 12px !important;\r\n            }\r\n        }\r\n        @media (max-width: 261px) {\r\n            .hero-caption {\r\n                font-size: 11px !important;\r\n            }\r\n        }\r\n        \r\n    .nav-box {\r\n\tmin-height: 275px;\r\n\tborder:  2px solid var(--light);\r\n\tborder-top: 0;\r\n}\r\n\r\n.text-black {\r\n\tcolor: black;\r\n}\r\n.bg-orange {\r\n\tbackground-color: rgba(230, 108, 23, 1.0);\r\n}\r\n.bg-purple {\r\n\tbackground-color: #a122f1;\r\n}\r\n.bg-cyan {\r\n\tbackground-color: #1a98c9; /* rgba(34, 115, 150, 1.0); */\r\n}\r\n.bg-valorblue {\r\n\tbackground-color: #002857;\r\n}\r\n.bg-yellow {\r\n\tbackground-color: #fefc01;\r\n}\r\n\r\n.valor-text > div:nth-child(1) {\r\n\tfont-size: 100px;\r\n\tfont-weight: 500;\r\n\tpadding-left: 10px;\r\n}\r\n.valor-text > div:nth-child(2) {\r\n\tfont-size: 25px;\r\n\tfont-weight: 300;\r\n\tpadding-left: 10px;\r\n}\r\n.valor-text > div:nth-child(3) {\r\n\tfont-size: 39px;\r\n\tfont-weight: 500;\r\n\tpadding-left: 10px;\r\n}\r\n\r\n@media(max-width: 520px) {\r\n\t.valor-text > div:nth-child(1) {\r\n\t\tfont-size: 70px;\r\n\t\tfont-weight: 500;\r\n\t\tpadding-left: 0;\r\n\t}\r\n\t.valor-text > div:nth-child(2) {\r\n\t\tfont-size: 20px;\r\n\t\tfont-weight: 300;\r\n\t\tpadding-left: 0;\r\n\t}\r\n\t.valor-text > div:nth-child(3) {\r\n\t\tfont-size: 30px;\r\n\t\tfont-weight: 500;\r\n\t\tpadding-left: 0;\r\n\t}\r\n\t#daves-wishes {\r\n\t\tmin-height: 460px;\r\n\t}\r\n}\r\n\r\n.text-shadow {\r\n\ttext-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;\r\n}\r\n\r\n.hover-dim:hover {\r\n\topacity: 0.8;\r\n}\r\n\r\n.bg-secondary-opaque {\r\n\tbackground-color: rgba(0, 40, 86, 0.8);\r\n}\r\n</style>		home-page-styles
3	Contact Form	<!-- Temporary Placeholder -->\r\n\r\n<h3 class="mt-3">Send us a Message</h3>\r\n<form name="sentMessage" id="contactForm" novalidate="">\r\n          <div class="control-group form-group">\r\n            <div class="controls">\r\n              <label>Full Name:</label>\r\n              <input type="text" class="form-control" id="name" required="" data-validation-required-message="Please enter your name.">\r\n              <p class="help-block"></p>\r\n            </div>\r\n          </div>\r\n          <div class="control-group form-group">\r\n            <div class="controls">\r\n              <label>Phone Number:</label>\r\n              <input type="tel" class="form-control" id="phone" required="" data-validation-required-message="Please enter your phone number.">\r\n            <div class="help-block"></div></div>\r\n          </div>\r\n          <div class="control-group form-group">\r\n            <div class="controls">\r\n              <label>Email Address:</label>\r\n              <input type="email" class="form-control" id="email" required="" data-validation-required-message="Please enter your email address.">\r\n            <div class="help-block"></div></div>\r\n          </div>\r\n          <div class="control-group form-group">\r\n            <div class="controls">\r\n              <label>Message:</label>\r\n              <textarea rows="10" cols="100" class="form-control" id="message" required="" data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>\r\n            <div class="help-block"></div></div>\r\n          </div>\r\n          <div id="success"></div>\r\n          <!-- For success/fail messages -->\r\n          <div class="text-center">\r\n              <button type="submit" class="btn btn-primary" id="sendMessageButton">Send Message</button>\r\n          </div>\r\n          \r\n        \r\n        </form>		contact-form
4	TempFix	<style>\r\n    @media screen and (max-width: 430px)\r\n    {\r\n        .five-list {\r\n            list-style: none;\r\n        }\r\n    }\r\n</style>		tempfix
5	TempFix1	<style>\r\n    @media screen and (max-width: 430px)\r\n    {\r\n        .five-list {\r\n            list-style: none;\r\n            padding-left: 0;\r\n            text-align: center;\r\n        }\r\n    }\r\n</style>		tempfix1
6	Facebook Feed	<h3>Visit us on Facebook</h3>\r\n<div class="fb-page" data-href="https://www.facebook.com/pages/category/Medical---Health/Bridge-Hospice-109396157226181/" data-tabs="timeline, messages, events" data-width="500" data-height="960" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true"><blockquote cite="https://www.facebook.com/pages/category/Medical---Health/Bridge-Hospice-109396157226181/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/pages/category/Medical---Health/Bridge-Hospice-109396157226181/">Bridge Hospice</a></blockquote></div>		facebook-feed
7	Facebook GraphApi	<script>\r\n    FB.api(\r\n  '/me',\r\n  'GET',\r\n  {"fields":"id,name"},\r\n  function(response) {\r\n      console.log(reponse)\r\n  }\r\n);\r\n    \r\n</script>		facebook-graphapi
8	twitter feed	<h3>Visit us on Twitter</h3>\r\n<a class="twitter-timeline" href="https://twitter.com/BridgeHospice1?ref_src=twsrc%5Etfw">Tweets by BridgeHospice1</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>		twitter-feed
9	instagram feed	<h3>Visit us on Instagram</h3>\r\n<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/B76erKPpEUt/?utm_source=ig_embed&amp;utm_campaign=loading" data-instgrm-version="12" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/B76erKPpEUt/?utm_source=ig_embed&amp;utm_campaign=loading" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;"> View this post on Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div></a> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/B76erKPpEUt/?utm_source=ig_embed&amp;utm_campaign=loading" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">In 2019 the Founder and Administrator of BRIDGE Hospice, Tammie Ware, discovered herself wanting more out of the hospice experience for the patient and family. She put together a team of individuals who specialized in different areas, but all carried the same desire to make the hospice experience about the patient and family. To BRIDGE Hospice, you are family. Swipe to meet our founder, Tammi Ware!</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A post shared by <a href="https://www.instagram.com/bridgehospice/?utm_source=ig_embed&amp;utm_campaign=loading" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px;" target="_blank"> Bridge Hospice</a> (@bridgehospice) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2020-01-29T18:32:29+00:00">Jan 29, 2020 at 10:32am PST</time></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>		instagram-feed
10	Carousel Script	<script>\r\nvar items = document.getElementsByClassName('carousel-item');\r\nvar n = getRandomInt(0, items.length)\r\nitems[0].classList.remove('active');\r\nitems[n].classList.add('active');\r\nfunction getRandomInt(min, max) {\r\n  min = Math.ceil(min);\r\n  max = Math.floor(max);\r\n  return Math.floor(Math.random() * (max - min)) + min; //The maximum is exclusive and the minimum is inclusive\r\n}\r\n</script>		carousel-script
11	Hand Medical Normal	<i class="fas hand-holding-medical"></i>		hand-medical-normal
12	JumboButton	<button \r\n    class="btn btn-secondary"\r\n    onClick="jumboClick()"\r\n>X\r\n</button>\r\n\r\n<script>\r\nfunction jumboClick() {\r\n    var jt = document.getElementById("motd")\r\n    jt.style.display = "none";\r\n}\r\n</script>		jumbobutton
14	FacebookTest	<div\r\n  class="fb-like"\r\n  data-share="true"\r\n  data-width="450"\r\n  data-show-faces="true">\r\n</div>		facebooktest
13	FacebookSDK	<ul id="test1"></ul>\r\n\r\n<script>\r\n    fbLoaded.promise.then(() => {\r\n        var token = 'EAAPGdzwKfKYBAKvGZBbV9Vmt08XdE6WC2OGadZBfOdC8oCVrCSX5cS1tIK5VSZA2WnuCPZBpMmdAJjk6rMlZC8yI8ybSS2tUEOt4hfaU768od0jUMT7LJmotc59tW96eWFuD0fC3iTBBFkYsZAcGuw7WKnl2WLW2z3LXvEwWakvwZDZD';\r\n    \tFB.api(\r\n    \t\t'https://graph.facebook.com/109396157226181/feed?fields=message,attachments&access_token=' + token,\r\n    \t\t'GET',\r\n    \t\t{},\r\n    \t\tfunction(response) {\r\n    \t\t    console.log(response);\r\n    \t\t\tvar output = "";\r\n    \t\t\t\r\n    \t\t\tfor (let i = 0; i < response.data.length; i++) {\r\n    \t\t\t\r\n    \t\t\t\toutput += `<li>`;\r\n    \t\t\t\t\r\n    \t\t\t\tif (response.data[i].message) {\r\n    \t\t\t\t\toutput += `<p>Message: ${response.data[i].message}</p>`;\r\n    \t\t\t\t}\r\n    \t\t\t\telse {\r\n    \t\t\t\t\toutput += "</br></br>";\r\n    \t\t\t\t}\r\n    \t\t\t\r\n    \t\t\t\tfor(let j=0; j < response.data[i].attachments.data.length; j++) {\r\n    \t\t\t\t\r\n    \t\t\t\t\tif(response.data[i].attachments.data[j].description) {\r\n    \t\t\t\t\t\tif (response.data[i].message !== response.data[i].attachments.data[j].description) {\r\n    \t\t\t\t\t\t\toutput += `<p>Description: ${response.data[i].attachments.data[j].description}</p>`;\r\n    \t\t\t\t\t\t}\r\n    \t\t\t\t\t}\r\n    \t\t\t\t\t\r\n    \t\t\t\t\tif(response.data[i].attachments.data[j].media.image) {\r\n    \t\t\t\t\t\toutput += `<img src="${response.data[i].attachments.data[j].media.image.src}" style="width: ${response.data[i].attachments.data[j].media.image.width};height: ${response.data[i].attachments.data[j].media.image.height}" /></br></br>`;\r\n    \t\t\t\t\t}\r\n    \t\t\t\t\t\r\n    \t\t\t\t}\r\n    \t\t\t\t\r\n    \t\t\t\toutput += `</li>`;\r\n    \t\t\t}\r\n    \t\t\tdocument.getElementById("test1").innerHTML = output;\r\n    \t\t}\r\n    \t);\r\n    });\r\n</script>		facebooksdk
\.


--
-- Data for Name: djangocms_snippet_snippetptr; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
409	3
1037	5
1236	6
1245	8
1246	9
1851	10
3326	6
3328	9
3332	8
3412	3
3417	12
3567	5
3608	12
3612	10
3630	14
3622	13
3672	13
3673	14
\.


--
-- Data for Name: djangocms_style_style; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_style_style (cmsplugin_ptr_id, class_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_classes, attributes, id_name, label, template) FROM stdin;
\.


--
-- Data for Name: djangocms_text_ckeditor_text; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
58	<h5>Address</h5>\n\n<h6>3409 19th Street</h6>\n\n<h6>Lubbock, TX 79410</h6>
60	<h6>Phone: <a href="tel:18069933900">(806) 993-3900</a></h6>\n\n<h6>Fax: <a href="tel:18069933899">    (806) 993-3899</a></h6>\n\n<h6>Email: <a href="mailto:support@bridge-hospice.com">support@bridge-hospice.com</a></h6>
62	<h5>Hours of Operations</h5>\n\n<h6>24 hours / 7 days a week</h6>
64	<h5>Office Hours</h5>\n\n<h6>Monday to Friday</h6>\n\n<h6>9:00 AM - 5:00 PM</h6>
66	<h5>Website Related Inquiries</h5>\n\n<h6>Email: <a href="mailto:webmaster@bridge-hospice.com">webservices@bridge-hospice.com</a></h6>
757	<h1 class="text-shadow">5</h1>\n\n<h4 class="text-shadow">REASONS</h4>\n\n<h4 class="text-shadow">FOR CHOOSING</h4>\n\n<h4 class="text-shadow">HOSPICE</h4>
759	<ol class="pt-1 five-list" style="line-height: 1.8;">\n\t<li class="text-shadow">Medicare pays for all hospice services.</li>\n\t<li class="text-shadow">Hospice can improve your quality of life.</li>\n\t<li class="text-shadow">Hospice puts your wishes front and center.</li>\n\t<li class="text-shadow">Hospice helps you communicate with doctors.</li>\n\t<li class="text-shadow">Hospice gives your family much-needed support.</li>\n</ol>
762	<ul class="text-shadow">\n\t<li>Pre-Admission Consultation</li>\n\t<li>Hospice Aides for Personal Care</li>\n\t<li>Trained Volunteers</li>\n\t<li>Medical Equipment and Supplies</li>\n\t<li>Continuous Care Requiring Intense Intervention*</li>\n</ul>
764	<ul class="text-shadow">\n\t<li>Hospice Nursing Care</li>\n\t<li>Social Work and Pastoral Care</li>\n\t<li>Pain and Symptom Management</li>\n\t<li>Available 24 Hours, 7 Days a Week</li>\n\t<li>Respite or Inpatient Care if needed*</li>\n</ul>
766	<ul class="text-shadow">\n\t<li>Hospice Physician/Medical Director</li>\n\t<li>Therapists and Counseling</li>\n\t<li>Pharmacy Consultation/Services</li>\n\t<li>Bereavement Program offered for 13 months after death</li>\n</ul>
768	<div class="ml-4">* Eligibility required</div>
773	<h1>VALOR</h1>\n\n<h6>THE VETERANS DIVISION OF BRIDGE HOSPICE</h6>\n\n<h3>HONORING THOSE WHO SERVED</h3>
776	<p class="text-shadow" style="text-align: center;">In 2019 the Founder and Administrator of BRIDGE Hospice, Tammie Ware, discovered herself wanting more out of the hospice experience for the patient and family. She put together a team of individuals who specialize in different areas, but all carried the same desire to make the hospice experience about the patient and family. BRIDGE Hospice is committed to extending love, comfort, and care to our patients and their loved ones, because every patient's need is unique, our caring staff offers specialized care individually for each patient and family.</p>
777	<h4 class="text-shadow-1" style="text-align: center;">To BRIDGE Hospice, you are family.</h4>
1118	<div class="hero-caption text-light d-flex">\n<p class="bg bg-secondary-opaque rounded px-3 mx-auto">EXTENDING LOVE, COMFORT, AND CARE</p>\n</div>
1351	<h5>Would you like to help the community in improving the care of of hospice patients?</h5>\n\n<p> </p>\n\n<p>At Bridge Hospice, were committed to bringing patients and families together by providing excellent care. However, our staff can always use help with us around the clock services we provide daily. Support patients by helping nurses with hospice care, providing administrative support within our business, or assist at events coordinated by Bridge Hospice and other members of the community. To get started please fill out a volunteer application to allow use to ensure only quality care if provided to our patients and their families.</p>\n\n<p> </p>
1853	
3341	<h5 class="py-5" style="text-align: center;">To Bridge Hospice, you are family.</h5>\n\n<p style="text-align: center;"><cms-plugin alt="Link / Button - 3482 " title="Link / Button - 3482" id="3482"></cms-plugin>    <cms-plugin alt="Link / Button - 3562 " title="Link / Button - 3562" id="3562"></cms-plugin></p>
3396	<h5>Address</h5>\n\n<h6>3409 19th Street</h6>\n\n<h6>Lubbock, TX 79410</h6>
3398	<h6>Phone: <a href="tel:18069933900">(806) 993-3900</a></h6>\n\n<h6>Fax: <a href="tel:18069933899">    (806) 993-3899</a></h6>\n\n<h6>Email: <a href="mailto:support@bridge-hospice.com">support@bridge-hospice.com</a></h6>
3403	<h5>Hours of Operations</h5>\n\n<h6>24 hours / 7 days a week</h6>
3406	<h5>Office Hours</h5>\n\n<h6>Monday to Friday</h6>\n\n<h6>9:00 AM - 5:00 PM</h6>
3409	<h5>Website Related Inquiries</h5>\n\n<h6>Email: <a href="mailto:webmaster@bridge-hospice.com">webservices@bridge-hospice.com</a></h6>
3416	<h3 style="text-align: center;">Latest News</h3>\n\n<h4 style="text-align: center;">Bridge Hospice treats your loved ones like their own</h4>\n\n<p style="text-align: center;">LUBBOCK, Texas – Hospice is something most people think of as a bad thing, a place where people go when they are dying. Well at Bridge Hospice they do not do that. They want to help make them feel better and get better. Their promise, treating their patients like they are their loved ones. Their first family to come there speaks out about what this place has done for them.</p>\n\n<p style="text-align: center;">Posted: <time datetime="2020-10-05T17:53:54-05:00">Oct 5, 2020 / 05:53 PM CDT</time> / Updated: <time datetime="2020-10-05T17:53:56-05:00">Oct 5, 2020 / 05:53 PM CDT</time></p>\n\n<p style="text-align: center;"><a href="https://www.everythinglubbock.com/news/trends-and-friends/bridge-hospice-treats-your-loved-ones-like-their-own/" style="text-align: center;">everythinglubbock.com</a></p>
3473	<h1>Privacy Policy</h1>\n\n<p>Last updated: October 06, 2020</p>\n\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\n\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy.</p>\n\n<h1>Interpretation and Definitions</h1>\n\n<h2>Interpretation</h2>\n\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\n\n<h2>Definitions</h2>\n\n<p>For the purposes of this Privacy Policy:</p>\n\n<ul>\n\t<li>\n\t<p><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>Company</strong> (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to BRIDGE Hospice LLC, 3409 19th Street Lubbock, TX 79410.</p>\n\t</li>\n\t<li>\n\t<p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\n\t</li>\n\t<li>\n\t<p><strong>Country</strong> refers to: Texas, United States</p>\n\t</li>\n\t<li>\n\t<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\n\t</li>\n\t<li>\n\t<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\n\t</li>\n\t<li>\n\t<p><strong>Service</strong> refers to the Website.</p>\n\t</li>\n\t<li>\n\t<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\n\t</li>\n\t<li>\n\t<p><strong>Third-party Social Media Service</strong> refers to any website or any social network website through which a User can log in or create an account to use the Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\n\t</li>\n\t<li>\n\t<p><strong>Website</strong> refers to BRIDGE Hospice, accessible from <a href="https://bridge-hospice.com" rel="external nofollow noopener" target="_blank">https://bridge-hospice.com</a></p>\n\t</li>\n\t<li>\n\t<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\n\t</li>\n</ul>\n\n<h1>Collecting and Using Your Personal Data</h1>\n\n<h2>Types of Data Collected</h2>\n\n<h3>Personal Data</h3>\n\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\n\n<ul>\n\t<li>\n\t<p>Email address</p>\n\t</li>\n\t<li>\n\t<p>First name and last name</p>\n\t</li>\n\t<li>\n\t<p>Phone number</p>\n\t</li>\n\t<li>\n\t<p>Address, State, Province, ZIP/Postal code, City</p>\n\t</li>\n\t<li>\n\t<p>Usage Data</p>\n\t</li>\n</ul>\n\n<h3>Usage Data</h3>\n\n<p>Usage Data is collected automatically when using the Service.</p>\n\n<p>Usage Data may include information such as Your Device's Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\n\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\n\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\n\n<h3>Tracking Technologies and Cookies</h3>\n\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\n\n<ul>\n\t<li><strong>Cookies or Browser Cookies.</strong> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li>\n\t<li><strong>Flash Cookies.</strong> Certain features of our Service may use local stored objects (or Flash Cookies) to collect and store information about Your preferences or Your activity on our Service. Flash Cookies are not managed by the same browser settings as those used for Browser Cookies. For more information on how You can delete Flash Cookies, please read "Where can I change the settings for disabling, or deleting local shared objects?" available at <a href="https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_" rel="external nofollow noopener" target="_blank">https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_</a></li>\n\t<li><strong>Web Beacons.</strong> Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li>\n</ul>\n\n<p>Cookies can be "Persistent" or "Session" Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. Learn more about cookies: <a href="https://www.privacypolicies.com/blog/cookies/" target="_blank">What Are Cookies?</a>.</p>\n\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\n\n<ul>\n\t<li>\n\t<p><strong>Necessary / Essential Cookies</strong></p>\n\n\t<p>Type: Session Cookies</p>\n\n\t<p>Administered by: Us</p>\n\n\t<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\n\t</li>\n\t<li>\n\t<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\n\n\t<p>Type: Persistent Cookies</p>\n\n\t<p>Administered by: Us</p>\n\n\t<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\n\t</li>\n\t<li>\n\t<p><strong>Functionality Cookies</strong></p>\n\n\t<p>Type: Persistent Cookies</p>\n\n\t<p>Administered by: Us</p>\n\n\t<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\n\t</li>\n</ul>\n\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\n\n<h2>Use of Your Personal Data</h2>\n\n<p>The Company may use Personal Data for the following purposes:</p>\n\n<ul>\n\t<li>\n\t<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\n\t</li>\n\t<li>\n\t<p><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application's push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\n\t</li>\n\t<li>\n\t<p><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\n\t</li>\n\t<li>\n\t<p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p>\n\t</li>\n\t<li>\n\t<p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\n\t</li>\n\t<li>\n\t<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\n\t</li>\n</ul>\n\n<p>We may share Your personal information in the following situations:</p>\n\n<ul>\n\t<li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\n\t<li><strong>For business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\n\t<li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\n\t<li><strong>With business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\n\t<li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside. If You interact with other users or register through a Third-Party Social Media Service, Your contacts on the Third-Party Social Media Service may see Your name, profile, pictures and description of Your activity. Similarly, other users will be able to view descriptions of Your activity, communicate with You and view Your profile.</li>\n\t<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\n</ul>\n\n<h2>Retention of Your Personal Data</h2>\n\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\n\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\n\n<h2>Transfer of Your Personal Data</h2>\n\n<p>Your information, including Personal Data, is processed at the Company's operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\n\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\n\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\n\n<h2>Disclosure of Your Personal Data</h2>\n\n<h3>Business Transactions</h3>\n\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\n\n<h3>Law enforcement</h3>\n\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\n\n<h3>Other legal requirements</h3>\n\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\n\n<ul>\n\t<li>Comply with a legal obligation</li>\n\t<li>Protect and defend the rights or property of the Company</li>\n\t<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\n\t<li>Protect the personal safety of Users of the Service or the public</li>\n\t<li>Protect against legal liability</li>\n</ul>\n\n<h2>Security of Your Personal Data</h2>\n\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\n\n<h1>Your California Privacy Rights (California's Shine the Light law)</h1>\n\n<p>Under California Civil Code Section 1798 (California's Shine the Light law), California residents with an established business relationship with us can request information once a year about sharing their Personal Data with third parties for the third parties' direct marketing purposes.</p>\n\n<p>If you'd like to request more information under the California Shine the Light law, and if You are a California resident, You can contact Us using the contact information provided below.</p>\n\n<h1>California Privacy Rights for Minor Users (California Business and Professions Code Section 22581)</h1>\n\n<p>California Business and Professions Code section 22581 allow California residents under the age of 18 who are registered users of online sites, services or applications to request and obtain removal of content or information they have publicly posted.</p>\n\n<p>To request removal of such data, and if You are a California resident, You can contact Us using the contact information provided below, and include the email address associated with Your account.</p>\n\n<p>Be aware that Your request does not guarantee complete or comprehensive removal of content or information posted online and that the law may not permit or require removal in certain circumstances.</p>\n\n<h1>Links to Other Websites</h1>\n\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party's site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\n\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\n\n<h1>Changes to this Privacy Policy</h1>\n\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\n\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the "Last updated" date at the top of this Privacy Policy.</p>\n\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\n\n<h1>Contact Us</h1>\n\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\n\n<ul>\n\t<li>\n\t<p>By email: support@bridge-hospice.com</p>\n\t</li>\n\t<li>\n\t<p>By phone number: 806 993.3900</p>\n\t</li>\n</ul>
3481	<h1>Privacy Policy</h1>\n\n<p>Last updated: October 06, 2020</p>\n\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\n\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy.</p>\n\n<h1>Interpretation and Definitions</h1>\n\n<h2>Interpretation</h2>\n\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\n\n<h2>Definitions</h2>\n\n<p>For the purposes of this Privacy Policy:</p>\n\n<ul>\n\t<li>\n\t<p><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>Company</strong> (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to BRIDGE Hospice LLC, 3409 19th Street Lubbock, TX 79410.</p>\n\t</li>\n\t<li>\n\t<p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\n\t</li>\n\t<li>\n\t<p><strong>Country</strong> refers to: Texas, United States</p>\n\t</li>\n\t<li>\n\t<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\n\t</li>\n\t<li>\n\t<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\n\t</li>\n\t<li>\n\t<p><strong>Service</strong> refers to the Website.</p>\n\t</li>\n\t<li>\n\t<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\n\t</li>\n\t<li>\n\t<p><strong>Third-party Social Media Service</strong> refers to any website or any social network website through which a User can log in or create an account to use the Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\n\t</li>\n\t<li>\n\t<p><strong>Website</strong> refers to BRIDGE Hospice, accessible from <a href="https://bridge-hospice.com" rel="external nofollow noopener" target="_blank">https://bridge-hospice.com</a></p>\n\t</li>\n\t<li>\n\t<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\n\t</li>\n</ul>\n\n<h1>Collecting and Using Your Personal Data</h1>\n\n<h2>Types of Data Collected</h2>\n\n<h3>Personal Data</h3>\n\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\n\n<ul>\n\t<li>\n\t<p>Email address</p>\n\t</li>\n\t<li>\n\t<p>First name and last name</p>\n\t</li>\n\t<li>\n\t<p>Phone number</p>\n\t</li>\n\t<li>\n\t<p>Address, State, Province, ZIP/Postal code, City</p>\n\t</li>\n\t<li>\n\t<p>Usage Data</p>\n\t</li>\n</ul>\n\n<h3>Usage Data</h3>\n\n<p>Usage Data is collected automatically when using the Service.</p>\n\n<p>Usage Data may include information such as Your Device's Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\n\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\n\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\n\n<h3>Tracking Technologies and Cookies</h3>\n\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\n\n<ul>\n\t<li><strong>Cookies or Browser Cookies.</strong> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li>\n\t<li><strong>Flash Cookies.</strong> Certain features of our Service may use local stored objects (or Flash Cookies) to collect and store information about Your preferences or Your activity on our Service. Flash Cookies are not managed by the same browser settings as those used for Browser Cookies. For more information on how You can delete Flash Cookies, please read "Where can I change the settings for disabling, or deleting local shared objects?" available at <a href="https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_" rel="external nofollow noopener" target="_blank">https://helpx.adobe.com/flash-player/kb/disable-local-shared-objects-flash.html#main_Where_can_I_change_the_settings_for_disabling__or_deleting_local_shared_objects_</a></li>\n\t<li><strong>Web Beacons.</strong> Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li>\n</ul>\n\n<p>Cookies can be "Persistent" or "Session" Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. Learn more about cookies: <a href="https://www.privacypolicies.com/blog/cookies/" target="_blank">What Are Cookies?</a>.</p>\n\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\n\n<ul>\n\t<li>\n\t<p><strong>Necessary / Essential Cookies</strong></p>\n\n\t<p>Type: Session Cookies</p>\n\n\t<p>Administered by: Us</p>\n\n\t<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\n\t</li>\n\t<li>\n\t<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\n\n\t<p>Type: Persistent Cookies</p>\n\n\t<p>Administered by: Us</p>\n\n\t<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\n\t</li>\n\t<li>\n\t<p><strong>Functionality Cookies</strong></p>\n\n\t<p>Type: Persistent Cookies</p>\n\n\t<p>Administered by: Us</p>\n\n\t<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\n\t</li>\n</ul>\n\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\n\n<h2>Use of Your Personal Data</h2>\n\n<p>The Company may use Personal Data for the following purposes:</p>\n\n<ul>\n\t<li>\n\t<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\n\t</li>\n\t<li>\n\t<p><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application's push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\n\t</li>\n\t<li>\n\t<p><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\n\t</li>\n\t<li>\n\t<p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p>\n\t</li>\n\t<li>\n\t<p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\n\t</li>\n\t<li>\n\t<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\n\t</li>\n</ul>\n\n<p>We may share Your personal information in the following situations:</p>\n\n<ul>\n\t<li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\n\t<li><strong>For business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\n\t<li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\n\t<li><strong>With business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\n\t<li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside. If You interact with other users or register through a Third-Party Social Media Service, Your contacts on the Third-Party Social Media Service may see Your name, profile, pictures and description of Your activity. Similarly, other users will be able to view descriptions of Your activity, communicate with You and view Your profile.</li>\n\t<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\n</ul>\n\n<h2>Retention of Your Personal Data</h2>\n\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\n\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\n\n<h2>Transfer of Your Personal Data</h2>\n\n<p>Your information, including Personal Data, is processed at the Company's operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\n\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\n\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\n\n<h2>Disclosure of Your Personal Data</h2>\n\n<h3>Business Transactions</h3>\n\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\n\n<h3>Law enforcement</h3>\n\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\n\n<h3>Other legal requirements</h3>\n\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\n\n<ul>\n\t<li>Comply with a legal obligation</li>\n\t<li>Protect and defend the rights or property of the Company</li>\n\t<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\n\t<li>Protect the personal safety of Users of the Service or the public</li>\n\t<li>Protect against legal liability</li>\n</ul>\n\n<h2>Security of Your Personal Data</h2>\n\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\n\n<h1>Your California Privacy Rights (California's Shine the Light law)</h1>\n\n<p>Under California Civil Code Section 1798 (California's Shine the Light law), California residents with an established business relationship with us can request information once a year about sharing their Personal Data with third parties for the third parties' direct marketing purposes.</p>\n\n<p>If you'd like to request more information under the California Shine the Light law, and if You are a California resident, You can contact Us using the contact information provided below.</p>\n\n<h1>California Privacy Rights for Minor Users (California Business and Professions Code Section 22581)</h1>\n\n<p>California Business and Professions Code section 22581 allow California residents under the age of 18 who are registered users of online sites, services or applications to request and obtain removal of content or information they have publicly posted.</p>\n\n<p>To request removal of such data, and if You are a California resident, You can contact Us using the contact information provided below, and include the email address associated with Your account.</p>\n\n<p>Be aware that Your request does not guarantee complete or comprehensive removal of content or information posted online and that the law may not permit or require removal in certain circumstances.</p>\n\n<h1>Links to Other Websites</h1>\n\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party's site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\n\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\n\n<h1>Changes to this Privacy Policy</h1>\n\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\n\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the "Last updated" date at the top of this Privacy Policy.</p>\n\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\n\n<h1>Contact Us</h1>\n\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\n\n<ul>\n\t<li>\n\t<p>By email: support@bridge-hospice.com</p>\n\t</li>\n\t<li>\n\t<p>By phone number: 806 993.3900</p>\n\t</li>\n</ul>
3545	<h1>Terms and Conditions</h1>\n\n<p>Last updated: October 06, 2020</p>\n\n<p>Please read these terms and conditions carefully before using Our Service.</p>\n\n<h1>Interpretation and Definitions</h1>\n\n<h2>Interpretation</h2>\n\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\n\n<h2>Definitions</h2>\n\n<p>For the purposes of these Terms and Conditions:</p>\n\n<ul>\n\t<li>\n\t<p><strong>Affiliate</strong> means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\n\t</li>\n\t<li>\n\t<p><strong>Country</strong> refers to: Texas, United States</p>\n\t</li>\n\t<li>\n\t<p><strong>Company</strong> (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to BRIDGE Hospice LLC, 3409 19th Street Lubbock, TX 79410.</p>\n\t</li>\n\t<li>\n\t<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\n\t</li>\n\t<li>\n\t<p><strong>Service</strong> refers to the Website.</p>\n\t</li>\n\t<li>\n\t<p><strong>Terms and Conditions</strong> (also referred as "Terms") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service. This Terms and Conditions agreement has been created with the help of the <a href="https://www.termsfeed.com/terms-conditions-generator/" target="_blank">Terms and Conditions Generator</a>.</p>\n\t</li>\n\t<li>\n\t<p><strong>Third-party Social Media Service</strong> means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>Website</strong> refers to BRIDGE Hospice, accessible from <a href="https://bridge-hospice.com" rel="external nofollow noopener" target="_blank">https://bridge-hospice.com</a></p>\n\t</li>\n\t<li>\n\t<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\n\t</li>\n</ul>\n\n<h1>Acknowledgment</h1>\n\n<p>These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.</p>\n\n<p>Your access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.</p>\n\n<p>By accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service.</p>\n\n<p>You represent that you are over the age of 18. The Company does not permit those under 18 to use the Service.</p>\n\n<p>Your access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.</p>\n\n<h1>Links to Other Websites</h1>\n\n<p>Our Service may contain links to third-party web sites or services that are not owned or controlled by the Company.</p>\n\n<p>The Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.</p>\n\n<p>We strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.</p>\n\n<h1>Termination</h1>\n\n<p>We may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.</p>\n\n<p>Upon termination, Your right to use the Service will cease immediately.</p>\n\n<h1>Limitation of Liability</h1>\n\n<p>Notwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven't purchased anything through the Service.</p>\n\n<p>To the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.</p>\n\n<p>Some states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party's liability will be limited to the greatest extent permitted by law.</p>\n\n<h1>"AS IS" and "AS AVAILABLE" Disclaimer</h1>\n\n<p>The Service is provided to You "AS IS" and "AS AVAILABLE" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.</p>\n\n<p>Without limiting the foregoing, neither the Company nor any of the company's provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.</p>\n\n<p>Some jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.</p>\n\n<h1>Governing Law</h1>\n\n<p>The laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.</p>\n\n<h1>Disputes Resolution</h1>\n\n<p>If You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.</p>\n\n<h1>For European Union (EU) Users</h1>\n\n<p>If You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which you are resident in.</p>\n\n<h1>United States Legal Compliance</h1>\n\n<p>You represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a "terrorist supporting" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.</p>\n\n<h1>Severability and Waiver</h1>\n\n<h2>Severability</h2>\n\n<p>If any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.</p>\n\n<h2>Waiver</h2>\n\n<p>Except as provided herein, the failure to exercise a right or to require performance of an obligation under this Terms shall not effect a party's ability to exercise such right or require such performance at any time thereafter nor shall be the waiver of a breach constitute a waiver of any subsequent breach.</p>\n\n<h1>Translation Interpretation</h1>\n\n<p>These Terms and Conditions may have been translated if We have made them available to You on our Service. You agree that the original English text shall prevail in the case of a dispute.</p>\n\n<h1>Changes to These Terms and Conditions</h1>\n\n<p>We reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days' notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.</p>\n\n<p>By continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.</p>\n\n<h1>Contact Us</h1>\n\n<p>If you have any questions about these Terms and Conditions, You can contact us:</p>\n\n<ul>\n\t<li>\n\t<p>By email: support@bridge-hospice.com</p>\n\t</li>\n\t<li>\n\t<p>By phone number: 806 993.3900</p>\n\t</li>\n</ul>
3553	<h1>Terms and Conditions</h1>\n\n<p>Last updated: October 06, 2020</p>\n\n<p>Please read these terms and conditions carefully before using Our Service.</p>\n\n<h1>Interpretation and Definitions</h1>\n\n<h2>Interpretation</h2>\n\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\n\n<h2>Definitions</h2>\n\n<p>For the purposes of these Terms and Conditions:</p>\n\n<ul>\n\t<li>\n\t<p><strong>Affiliate</strong> means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\n\t</li>\n\t<li>\n\t<p><strong>Country</strong> refers to: Texas, United States</p>\n\t</li>\n\t<li>\n\t<p><strong>Company</strong> (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to BRIDGE Hospice LLC, 3409 19th Street Lubbock, TX 79410.</p>\n\t</li>\n\t<li>\n\t<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\n\t</li>\n\t<li>\n\t<p><strong>Service</strong> refers to the Website.</p>\n\t</li>\n\t<li>\n\t<p><strong>Terms and Conditions</strong> (also referred as "Terms") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service. This Terms and Conditions agreement has been created with the help of the <a href="https://www.termsfeed.com/terms-conditions-generator/" target="_blank">Terms and Conditions Generator</a>.</p>\n\t</li>\n\t<li>\n\t<p><strong>Third-party Social Media Service</strong> means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.</p>\n\t</li>\n\t<li>\n\t<p><strong>Website</strong> refers to BRIDGE Hospice, accessible from <a href="https://bridge-hospice.com" rel="external nofollow noopener" target="_blank">https://bridge-hospice.com</a></p>\n\t</li>\n\t<li>\n\t<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\n\t</li>\n</ul>\n\n<h1>Acknowledgment</h1>\n\n<p>These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.</p>\n\n<p>Your access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.</p>\n\n<p>By accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service.</p>\n\n<p>You represent that you are over the age of 18. The Company does not permit those under 18 to use the Service.</p>\n\n<p>Your access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.</p>\n\n<h1>Links to Other Websites</h1>\n\n<p>Our Service may contain links to third-party web sites or services that are not owned or controlled by the Company.</p>\n\n<p>The Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.</p>\n\n<p>We strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.</p>\n\n<h1>Termination</h1>\n\n<p>We may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.</p>\n\n<p>Upon termination, Your right to use the Service will cease immediately.</p>\n\n<h1>Limitation of Liability</h1>\n\n<p>Notwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven't purchased anything through the Service.</p>\n\n<p>To the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.</p>\n\n<p>Some states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party's liability will be limited to the greatest extent permitted by law.</p>\n\n<h1>"AS IS" and "AS AVAILABLE" Disclaimer</h1>\n\n<p>The Service is provided to You "AS IS" and "AS AVAILABLE" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.</p>\n\n<p>Without limiting the foregoing, neither the Company nor any of the company's provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.</p>\n\n<p>Some jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.</p>\n\n<h1>Governing Law</h1>\n\n<p>The laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.</p>\n\n<h1>Disputes Resolution</h1>\n\n<p>If You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.</p>\n\n<h1>For European Union (EU) Users</h1>\n\n<p>If You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which you are resident in.</p>\n\n<h1>United States Legal Compliance</h1>\n\n<p>You represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a "terrorist supporting" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.</p>\n\n<h1>Severability and Waiver</h1>\n\n<h2>Severability</h2>\n\n<p>If any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.</p>\n\n<h2>Waiver</h2>\n\n<p>Except as provided herein, the failure to exercise a right or to require performance of an obligation under this Terms shall not effect a party's ability to exercise such right or require such performance at any time thereafter nor shall be the waiver of a breach constitute a waiver of any subsequent breach.</p>\n\n<h1>Translation Interpretation</h1>\n\n<p>These Terms and Conditions may have been translated if We have made them available to You on our Service. You agree that the original English text shall prevail in the case of a dispute.</p>\n\n<h1>Changes to These Terms and Conditions</h1>\n\n<p>We reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days' notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.</p>\n\n<p>By continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.</p>\n\n<h1>Contact Us</h1>\n\n<p>If you have any questions about these Terms and Conditions, You can contact us:</p>\n\n<ul>\n\t<li>\n\t<p>By email: support@bridge-hospice.com</p>\n\t</li>\n\t<li>\n\t<p>By phone number: 806 993.3900</p>\n\t</li>\n</ul>
3558	<h5>Would you like to help the community in improving the care of of hospice patients?</h5>\n\n<p> </p>\n\n<p>At Bridge Hospice, were committed to bringing patients and families together by providing excellent care. However, our staff can always use help with us around the clock services we provide daily. Support patients by helping nurses with hospice care, providing administrative support within our business, or assist at events coordinated by Bridge Hospice and other members of the community. To get started please fill out a volunteer application to allow use to ensure only quality care if provided to our patients and their families.</p>\n\n<p> </p>
3560	
3566	<h1 class="text-shadow">5</h1>\n\n<h4 class="text-shadow">REASONS</h4>\n\n<h4 class="text-shadow">FOR CHOOSING</h4>\n\n<h4 class="text-shadow">HOSPICE</h4>
3569	<ol class="pt-1 five-list" style="line-height: 1.8;">\n\t<li class="text-shadow">Medicare pays for all hospice services.</li>\n\t<li class="text-shadow">Hospice can improve your quality of life.</li>\n\t<li class="text-shadow">Hospice puts your wishes front and center.</li>\n\t<li class="text-shadow">Hospice helps you communicate with doctors.</li>\n\t<li class="text-shadow">Hospice gives your family much-needed support.</li>\n</ol>
3572	<ul class="text-shadow">\n\t<li>Pre-Admission Consultation</li>\n\t<li>Hospice Aides for Personal Care</li>\n\t<li>Trained Volunteers</li>\n\t<li>Medical Equipment and Supplies</li>\n\t<li>Continuous Care Requiring Intense Intervention*</li>\n</ul>
3574	<ul class="text-shadow">\n\t<li>Hospice Nursing Care</li>\n\t<li>Social Work and Pastoral Care</li>\n\t<li>Pain and Symptom Management</li>\n\t<li>Available 24 Hours, 7 Days a Week</li>\n\t<li>Respite or Inpatient Care if needed*</li>\n</ul>
3576	<ul class="text-shadow">\n\t<li>Hospice Physician/Medical Director</li>\n\t<li>Therapists and Counseling</li>\n\t<li>Pharmacy Consultation/Services</li>\n\t<li>Bereavement Program offered for 13 months after death</li>\n</ul>
3578	<div class="ml-4">* Eligibility required</div>
3581	<p class="text-shadow" style="text-align: center;">In 2019 the Founder and Administrator of BRIDGE Hospice, Tammie Ware, discovered herself wanting more out of the hospice experience for the patient and family. She put together a team of individuals who specialize in different areas, but all carried the same desire to make the hospice experience about the patient and family. BRIDGE Hospice is committed to extending love, comfort, and care to our patients and their loved ones, because every patient's need is unique, our caring staff offers specialized care individually for each patient and family.</p>
3582	<h4 class="text-shadow-1" style="text-align: center;">To BRIDGE Hospice, you are family.</h4>
3592	<h1>VALOR</h1>\n\n<h6>THE VETERANS DIVISION OF BRIDGE HOSPICE</h6>\n\n<h3>HONORING THOSE WHO SERVED</h3>
3603	<div class="hero-caption text-light d-flex">\n<p class="bg bg-secondary-opaque rounded px-3 mx-auto">EXTENDING LOVE, COMFORT, AND CARE</p>\n</div>
3611	<h3 style="text-align: center;">Latest News</h3>\n\n<h4 style="text-align: center;">Bridge Hospice treats your loved ones like their own</h4>\n\n<p style="text-align: center;">LUBBOCK, Texas – Hospice is something most people think of as a bad thing, a place where people go when they are dying. Well at Bridge Hospice they do not do that. They want to help make them feel better and get better. Their promise, treating their patients like they are their loved ones. Their first family to come there speaks out about what this place has done for them.</p>\n\n<p style="text-align: center;">Posted: <time datetime="2020-10-05T17:53:54-05:00">Oct 5, 2020 / 05:53 PM CDT</time> / Updated: <time datetime="2020-10-05T17:53:56-05:00">Oct 5, 2020 / 05:53 PM CDT</time></p>\n\n<p style="text-align: center;"><a href="https://www.everythinglubbock.com/news/trends-and-friends/bridge-hospice-treats-your-loved-ones-like-their-own/" style="text-align: center;">everythinglubbock.com</a></p>
3642	<h5 class="py-5" style="text-align: center;">To Bridge Hospice, you are family.</h5>\n\n<p style="text-align: center;"><cms-plugin alt="Link / Button - 3643 " title="Link / Button - 3643" id="3643"></cms-plugin>    <cms-plugin alt="Link / Button - 3644 " title="Link / Button - 3644" id="3644"></cms-plugin></p>
\.


--
-- Data for Name: djangocms_video_videoplayer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template, parameters) FROM stdin;
\.


--
-- Data for Name: djangocms_video_videosource; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
\.


--
-- Data for Name: djangocms_video_videotrack; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
1	f9bde26a1556cd667f742bd34ec7c55e	filer_public/4b/e8/4be8120d-23c8-4abe-ad9c-8ec90c76c495/home01.jpg	2020-05-16 08:43:20.018+00
2	f9bde26a1556cd667f742bd34ec7c55e	filer_public/7c/9f/7c9fb8b1-feda-4c6b-b2c4-9aa3735c2813/home05.jpg	2020-05-16 08:46:50.185+00
3	f9bde26a1556cd667f742bd34ec7c55e	filer_public/08/bc/08bca602-c1fb-4583-bf70-717f1cb6662f/home03.jpg	2020-05-16 08:46:12.103+00
4	f9bde26a1556cd667f742bd34ec7c55e	filer_public/ba/51/ba5148d6-b923-4457-b236-8057e63497b5/home04.jpg	2020-05-16 08:46:36.405+00
5	f9bde26a1556cd667f742bd34ec7c55e	filer_public/2e/94/2e94ad5d-04af-4575-b0e0-d4f93e73d748/home02.jpg	2020-05-16 08:45:56.38+00
6	f9bde26a1556cd667f742bd34ec7c55e	filer_public/6f/cb/6fcbaba0-1ba6-4968-bb59-687768f49bd6/valor.png	2020-05-16 11:23:21.247+00
7	f9bde26a1556cd667f742bd34ec7c55e	filer_public/c1/3f/c13fd1e5-72d8-490b-bb70-31b8e6113a08/daveswish.png	2020-05-16 11:31:10.538+00
10	f9bde26a1556cd667f742bd34ec7c55e	filer_public/2f/89/2f89e80b-63e6-4bce-b0ce-1e0fbab2ffde/comingsoon.png	2020-05-21 04:22:47.623+00
13	f9bde26a1556cd667f742bd34ec7c55e	filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png	2020-06-12 17:58:42.316+00
\.


--
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
1	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4b/e8/4be8120d-23c8-4abe-ad9c-8ec90c76c495/home01.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:33:46.119+00	1
2	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4b/e8/4be8120d-23c8-4abe-ad9c-8ec90c76c495/home01.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:33:46.292+00	1
3	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4b/e8/4be8120d-23c8-4abe-ad9c-8ec90c76c495/home01.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:33:46.471+00	1
4	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4b/e8/4be8120d-23c8-4abe-ad9c-8ec90c76c495/home01.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:33:46.653+00	1
5	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4b/e8/4be8120d-23c8-4abe-ad9c-8ec90c76c495/home01.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:33:46.843+00	1
6	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4b/e8/4be8120d-23c8-4abe-ad9c-8ec90c76c495/home01.jpg__1024.0x768.0_q85_crop-10_subsampling-2_upscale.jpg	2020-05-16 08:43:20.021+00	1
7	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/7c/9f/7c9fb8b1-feda-4c6b-b2c4-9aa3735c2813/home05.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:35.948+00	2
8	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/08/bc/08bca602-c1fb-4583-bf70-717f1cb6662f/home03.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:35.996+00	3
9	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/7c/9f/7c9fb8b1-feda-4c6b-b2c4-9aa3735c2813/home05.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.082+00	2
10	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ba/51/ba5148d6-b923-4457-b236-8057e63497b5/home04.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.122+00	4
11	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/08/bc/08bca602-c1fb-4583-bf70-717f1cb6662f/home03.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.232+00	3
12	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/7c/9f/7c9fb8b1-feda-4c6b-b2c4-9aa3735c2813/home05.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.26+00	2
13	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/7c/9f/7c9fb8b1-feda-4c6b-b2c4-9aa3735c2813/home05.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.388+00	2
14	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/08/bc/08bca602-c1fb-4583-bf70-717f1cb6662f/home03.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.455+00	3
15	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ba/51/ba5148d6-b923-4457-b236-8057e63497b5/home04.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.472+00	4
16	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/7c/9f/7c9fb8b1-feda-4c6b-b2c4-9aa3735c2813/home05.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.551+00	2
17	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/08/bc/08bca602-c1fb-4583-bf70-717f1cb6662f/home03.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.665+00	3
18	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ba/51/ba5148d6-b923-4457-b236-8057e63497b5/home04.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.767+00	4
19	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/08/bc/08bca602-c1fb-4583-bf70-717f1cb6662f/home03.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:36.885+00	3
20	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ba/51/ba5148d6-b923-4457-b236-8057e63497b5/home04.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:37.058+00	4
21	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ba/51/ba5148d6-b923-4457-b236-8057e63497b5/home04.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:37.351+00	4
22	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2e/94/2e94ad5d-04af-4575-b0e0-d4f93e73d748/home02.jpg__16x16_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:48.793+00	5
23	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2e/94/2e94ad5d-04af-4575-b0e0-d4f93e73d748/home02.jpg__32x32_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:48.896+00	5
24	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2e/94/2e94ad5d-04af-4575-b0e0-d4f93e73d748/home02.jpg__48x48_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:48.999+00	5
25	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2e/94/2e94ad5d-04af-4575-b0e0-d4f93e73d748/home02.jpg__64x64_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:49.103+00	5
26	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2e/94/2e94ad5d-04af-4575-b0e0-d4f93e73d748/home02.jpg__180x180_q85_crop_subsampling-2_upscale.jpg	2020-05-16 08:45:49.215+00	5
27	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2e/94/2e94ad5d-04af-4575-b0e0-d4f93e73d748/home02.jpg__1024.0x768.0_q85_crop-10_subsampling-2_upscale.jpg	2020-05-16 08:45:56.383+00	5
28	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/08/bc/08bca602-c1fb-4583-bf70-717f1cb6662f/home03.jpg__1024.0x768.0_q85_crop-10_subsampling-2_upscale.jpg	2020-05-16 08:46:12.106+00	3
29	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ba/51/ba5148d6-b923-4457-b236-8057e63497b5/home04.jpg__1024.0x768.0_q85_crop-10_subsampling-2_upscale.jpg	2020-05-16 08:46:36.408+00	4
30	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/7c/9f/7c9fb8b1-feda-4c6b-b2c4-9aa3735c2813/home05.jpg__1024.0x768.0_q85_crop-10_subsampling-2_upscale.jpg	2020-05-16 08:46:50.187+00	2
31	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6f/cb/6fcbaba0-1ba6-4968-bb59-687768f49bd6/valor.png__16x16_q85_crop_subsampling-2_upscale.png	2020-05-16 11:21:31.935+00	6
32	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6f/cb/6fcbaba0-1ba6-4968-bb59-687768f49bd6/valor.png__32x32_q85_crop_subsampling-2_upscale.png	2020-05-16 11:21:31.94+00	6
33	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6f/cb/6fcbaba0-1ba6-4968-bb59-687768f49bd6/valor.png__48x48_q85_crop_subsampling-2_upscale.png	2020-05-16 11:21:31.946+00	6
34	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6f/cb/6fcbaba0-1ba6-4968-bb59-687768f49bd6/valor.png__64x64_q85_crop_subsampling-2_upscale.png	2020-05-16 11:21:31.952+00	6
35	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6f/cb/6fcbaba0-1ba6-4968-bb59-687768f49bd6/valor.png__180x180_q85_crop_subsampling-2_upscale.png	2020-05-16 11:21:31.963+00	6
36	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/6f/cb/6fcbaba0-1ba6-4968-bb59-687768f49bd6/valor.png__181x179_q85_subsampling-2.png	2020-05-16 11:23:21.26+00	6
37	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c1/3f/c13fd1e5-72d8-490b-bb70-31b8e6113a08/daveswish.png__16x16_q85_crop_subsampling-2_upscale.png	2020-05-16 11:31:03.075+00	7
38	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c1/3f/c13fd1e5-72d8-490b-bb70-31b8e6113a08/daveswish.png__32x32_q85_crop_subsampling-2_upscale.png	2020-05-16 11:31:03.084+00	7
39	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c1/3f/c13fd1e5-72d8-490b-bb70-31b8e6113a08/daveswish.png__48x48_q85_crop_subsampling-2_upscale.png	2020-05-16 11:31:03.093+00	7
40	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c1/3f/c13fd1e5-72d8-490b-bb70-31b8e6113a08/daveswish.png__64x64_q85_crop_subsampling-2_upscale.png	2020-05-16 11:31:03.103+00	7
41	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c1/3f/c13fd1e5-72d8-490b-bb70-31b8e6113a08/daveswish.png__180x180_q85_crop_subsampling-2_upscale.png	2020-05-16 11:31:03.118+00	7
42	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/c1/3f/c13fd1e5-72d8-490b-bb70-31b8e6113a08/daveswish.png__507x230_q85_subsampling-2.png	2020-05-16 11:31:10.54+00	7
55	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2f/89/2f89e80b-63e6-4bce-b0ce-1e0fbab2ffde/comingsoon.png__16x16_q85_crop_subsampling-2_upscale.jpg	2020-05-21 04:22:30.822+00	10
56	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2f/89/2f89e80b-63e6-4bce-b0ce-1e0fbab2ffde/comingsoon.png__32x32_q85_crop_subsampling-2_upscale.jpg	2020-05-21 04:22:30.839+00	10
57	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2f/89/2f89e80b-63e6-4bce-b0ce-1e0fbab2ffde/comingsoon.png__48x48_q85_crop_subsampling-2_upscale.jpg	2020-05-21 04:22:30.858+00	10
58	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2f/89/2f89e80b-63e6-4bce-b0ce-1e0fbab2ffde/comingsoon.png__64x64_q85_crop_subsampling-2_upscale.jpg	2020-05-21 04:22:30.877+00	10
59	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2f/89/2f89e80b-63e6-4bce-b0ce-1e0fbab2ffde/comingsoon.png__180x180_q85_crop_subsampling-2_upscale.jpg	2020-05-21 04:22:30.899+00	10
60	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2f/89/2f89e80b-63e6-4bce-b0ce-1e0fbab2ffde/comingsoon.png__960x540_q85_subsampling-2.jpg	2020-05-21 04:22:47.626+00	10
73	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__16x16_q85_crop_subsampling-2_upscale.png	2020-06-12 17:58:05.123+00	13
74	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__32x32_q85_crop_subsampling-2_upscale.png	2020-06-12 17:58:05.131+00	13
75	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__48x48_q85_crop_subsampling-2_upscale.png	2020-06-12 17:58:05.138+00	13
76	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__64x64_q85_crop_subsampling-2_upscale.png	2020-06-12 17:58:05.145+00	13
77	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__180x180_q85_crop_subsampling-2_upscale.png	2020-06-12 17:58:05.16+00	13
78	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__210x0_q85_subsampling-2_upscale.png	2020-06-12 17:58:14.811+00	13
79	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__16x16_q85_crop_subject_location-196,185_subsampling-2_upscale.png	2020-06-12 17:58:35.743+00	13
80	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__32x32_q85_crop_subject_location-196,185_subsampling-2_upscale.png	2020-06-12 17:58:35.749+00	13
81	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__48x48_q85_crop_subject_location-196,185_subsampling-2_upscale.png	2020-06-12 17:58:35.757+00	13
82	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__64x64_q85_crop_subject_location-196,185_subsampling-2_upscale.png	2020-06-12 17:58:35.764+00	13
83	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png__391x370_q85_subject_location-196,185_subsampling-2.png	2020-06-12 17:58:42.32+00	13
84	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/4b/e8/4be8120d-23c8-4abe-ad9c-8ec90c76c495/home01.jpg__1024.0x682.6666666666666_q85_crop-10_subsampling-2_upscale.jpg	2020-06-13 03:10:09.942+00	1
85	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/2e/94/2e94ad5d-04af-4575-b0e0-d4f93e73d748/home02.jpg__1024.0x682.6666666666666_q85_crop-10_subsampling-2_upscale.jpg	2020-06-13 03:10:10.259+00	5
89	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/08/bc/08bca602-c1fb-4583-bf70-717f1cb6662f/home03.jpg__1024.0x682.6666666666666_q85_crop-10_subsampling-2_upscale.jpg	2020-06-13 03:10:10.672+00	3
91	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/ba/51/ba5148d6-b923-4457-b236-8057e63497b5/home04.jpg__1024.0x682.6666666666666_q85_crop-10_subsampling-2_upscale.jpg	2020-06-13 03:10:11.276+00	4
93	f9bde26a1556cd667f742bd34ec7c55e	filer_public_thumbnails/filer_public/7c/9f/7c9fb8b1-feda-4c6b-b2c4-9aa3735c2813/home05.jpg__1024.0x682.6666666666666_q85_crop-10_subsampling-2_upscale.jpg	2020-06-13 03:10:11.668+00	2
\.


--
-- Data for Name: easy_thumbnails_thumbnaildimensions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
\.


--
-- Data for Name: filer_clipboard; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_clipboard (id, user_id) FROM stdin;
2	2
\.


--
-- Data for Name: filer_clipboarditem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
\.


--
-- Data for Name: filer_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
1	filer_public/4b/e8/4be8120d-23c8-4abe-ad9c-8ec90c76c495/home01.jpg	4335358	d9e82500dd669151b1e5abad5d77026b73980631	f	Home01.jpg		\N	2020-05-16 08:33:45.926+00	2020-05-16 08:33:45.926+00	t	\N	\N	30
2	filer_public/7c/9f/7c9fb8b1-feda-4c6b-b2c4-9aa3735c2813/home05.jpg	4171782	c2321c2d9e9e1cd7559d9c7e9c8cda896ff77bb5	f	Home05.jpg		\N	2020-05-16 08:45:35.749+00	2020-05-16 08:45:35.749+00	t	\N	\N	30
3	filer_public/08/bc/08bca602-c1fb-4583-bf70-717f1cb6662f/home03.jpg	4496431	fe9aa49432b3b263e21f2754267576803685a1bb	f	Home03.jpg		\N	2020-05-16 08:45:35.758+00	2020-05-16 08:45:35.758+00	t	\N	\N	30
4	filer_public/ba/51/ba5148d6-b923-4457-b236-8057e63497b5/home04.jpg	7212136	4a6787ed7699727974ca50f0254de8fd7ea299ad	f	Home04.jpg		\N	2020-05-16 08:45:35.79+00	2020-05-16 08:45:35.79+00	t	\N	\N	30
5	filer_public/2e/94/2e94ad5d-04af-4575-b0e0-d4f93e73d748/home02.jpg	2969491	3155f9360845e17ccb20757449aab37cdf86d69d	f	Home02.jpg		\N	2020-05-16 08:45:48.691+00	2020-05-16 08:45:48.691+00	t	\N	\N	30
6	filer_public/6f/cb/6fcbaba0-1ba6-4968-bb59-687768f49bd6/valor.png	29184	00099b615f68c6459b985100a579419320efeac6	f	Valor.png		\N	2020-05-16 11:21:31.9+00	2020-05-16 11:21:31.9+00	t	\N	\N	30
7	filer_public/c1/3f/c13fd1e5-72d8-490b-bb70-31b8e6113a08/daveswish.png	29831	b74b3e3b2866044320891864ec4f5349209a3645	f	DavesWish.png		\N	2020-05-16 11:31:03.064+00	2020-05-16 11:31:03.064+00	t	\N	\N	30
10	filer_public/2f/89/2f89e80b-63e6-4bce-b0ce-1e0fbab2ffde/comingsoon.png	110254	126671a47ce88580bec8c1f384912b0b2e425d62	f	comingsoon.png		\N	2020-05-21 04:22:30.766+00	2020-05-21 04:22:30.766+00	t	\N	2	30
13	filer_public/12/e7/12e728b2-0b6c-496e-80bf-84485706c5ae/bridgehospicelogo.png	52180	cade476d711b3411da1286c71af7031386a63df8	f	BridgeHospiceLogo.png			2020-06-12 17:58:05.082+00	2020-06-12 17:58:35.697+00	t	\N	2	30
\.


--
-- Data for Name: filer_folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
\.


--
-- Data for Name: filer_folderpermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
\.


--
-- Data for Name: filer_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
1	2389	3579	2020-05-16 08:33:45.916+00	\N	\N	\N	f	f	
2	1872	2808	2020-05-16 08:45:35.725+00	\N	\N	\N	f	f	
3	2510	3760	2020-05-16 08:45:35.727+00	\N	\N	\N	f	f	
4	3070	4600	2020-05-16 08:45:35.775+00	\N	\N	\N	f	f	
5	1728	2592	2020-05-16 08:45:48.687+00	\N	\N	\N	f	f	
6	179	181	2020-05-16 11:21:31.897+00	\N	\N	\N	f	f	
7	230	507	2020-05-16 11:31:03.06+00	\N	\N	\N	f	f	
10	540	960	2020-05-21 04:22:30.763+00	\N	\N	\N	f	f	
13	370	391	2020-06-12 17:58:05.08+00	\N	\N	\N	f	f	196,185
\.


--
-- Data for Name: filer_thumbnailoption; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
\.


--
-- Data for Name: menus_cachekey; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.menus_cachekey (id, language, site, key) FROM stdin;
491	en	1	cms_3.7.2_menu_nodes_en_1_2_user:draft
492	en	1	cms_3.7.2_menu_nodes_en_1:public
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 332, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: background_task_completedtask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.background_task_completedtask_id_seq', 1, false);


--
-- Name: background_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.background_task_id_seq', 1, false);


--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_cmsplugin_id_seq', 3703, true);


--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_globalpagepermission_id_seq', 1, false);


--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_globalpagepermission_sites_id_seq', 1, false);


--
-- Name: cms_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_page_id_seq', 55, true);


--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_page_placeholders_id_seq', 62, true);


--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_pagepermission_id_seq', 1, false);


--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_placeholder_id_seq', 116, true);


--
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_staticplaceholder_id_seq', 1, true);


--
-- Name: cms_title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_title_id_seq', 55, true);


--
-- Name: cms_treenode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_treenode_id_seq', 29, true);


--
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_urlconfrevision_id_seq', 1, true);


--
-- Name: cms_usersettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cms_usersettings_id_seq', 2, true);


--
-- Name: core_app_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_app_attachment_id_seq', 324, true);


--
-- Name: core_app_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_app_image_id_seq', 202, true);


--
-- Name: core_app_target_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_app_target_id_seq', 203, true);


--
-- Name: core_forms_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_forms_profile_id_seq', 1, true);


--
-- Name: core_forms_volunteerapplication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_forms_volunteerapplication_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 792, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 84, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 180, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 2, true);


--
-- Name: djangocms_snippet_snippet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.djangocms_snippet_snippet_id_seq', 14, true);


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 13, true);


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 93, true);


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);


--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 2, true);


--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);


--
-- Name: filer_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_file_id_seq', 13, true);


--
-- Name: filer_folder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_folder_id_seq', 1, false);


--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);


--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);


--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.menus_cachekey_id_seq', 492, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: background_task_completedtask background_task_completedtask_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.background_task_completedtask
    ADD CONSTRAINT background_task_completedtask_pkey PRIMARY KEY (id);


--
-- Name: background_task background_task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.background_task
    ADD CONSTRAINT background_task_pkey PRIMARY KEY (id);


--
-- Name: bootstrap4_alerts_bootstrap4alerts bootstrap4_alerts_bootstrap4alerts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_alerts_bootstrap4alerts
    ADD CONSTRAINT bootstrap4_alerts_bootstrap4alerts_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_badge_bootstrap4badge bootstrap4_badge_bootstrap4badge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_badge_bootstrap4badge
    ADD CONSTRAINT bootstrap4_badge_bootstrap4badge_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_card_bootstrap4card bootstrap4_card_bootstrap4card_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_card_bootstrap4card
    ADD CONSTRAINT bootstrap4_card_bootstrap4card_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_card_bootstrap4cardinner bootstrap4_card_bootstrap4cardinner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_card_bootstrap4cardinner
    ADD CONSTRAINT bootstrap4_card_bootstrap4cardinner_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_carousel_bootstrap4carousel bootstrap4_carousel_bootstrap4carousel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carousel
    ADD CONSTRAINT bootstrap4_carousel_bootstrap4carousel_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel_bootstrap4carouselslide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel_bootstrap4carouselslide_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_collapse_bootstrap4collapse bootstrap4_collapse_bootstrap4collapse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapse
    ADD CONSTRAINT bootstrap4_collapse_bootstrap4collapse_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_collapse_bootstrap4collapsecontainer bootstrap4_collapse_bootstrap4collapsecontainer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapsecontainer
    ADD CONSTRAINT bootstrap4_collapse_bootstrap4collapsecontainer_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_collapse_bootstrap4collapsetrigger bootstrap4_collapse_bootstrap4collapsetrigger_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapsetrigger
    ADD CONSTRAINT bootstrap4_collapse_bootstrap4collapsetrigger_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_content_bootstrap4blockquote bootstrap4_content_bootstrap4blockquote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4blockquote
    ADD CONSTRAINT bootstrap4_content_bootstrap4blockquote_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_content_bootstrap4code bootstrap4_content_bootstrap4code_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4code
    ADD CONSTRAINT bootstrap4_content_bootstrap4code_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_content_bootstrap4figure bootstrap4_content_bootstrap4figure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4figure
    ADD CONSTRAINT bootstrap4_content_bootstrap4figure_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_grid_bootstrap4gridcolumn bootstrap4_grid_bootstrap4gridcolumn_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridcolumn
    ADD CONSTRAINT bootstrap4_grid_bootstrap4gridcolumn_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_grid_bootstrap4gridcontainer bootstrap4_grid_bootstrap4gridcontainer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridcontainer
    ADD CONSTRAINT bootstrap4_grid_bootstrap4gridcontainer_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_grid_bootstrap4gridrow bootstrap4_grid_bootstrap4gridrow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridrow
    ADD CONSTRAINT bootstrap4_grid_bootstrap4gridrow_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_jumbotron_bootstrap4jumbotron bootstrap4_jumbotron_bootstrap4jumbotron_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_jumbotron_bootstrap4jumbotron
    ADD CONSTRAINT bootstrap4_jumbotron_bootstrap4jumbotron_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_link_bootstrap4link bootstrap4_link_bootstrap4link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_link_bootstrap4link
    ADD CONSTRAINT bootstrap4_link_bootstrap4link_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_listgroup_bootstrap4listgroup bootstrap4_listgroup_bootstrap4listgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_listgroup_bootstrap4listgroup
    ADD CONSTRAINT bootstrap4_listgroup_bootstrap4listgroup_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_listgroup_bootstrap4listgroupitem bootstrap4_listgroup_bootstrap4listgroupitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_listgroup_bootstrap4listgroupitem
    ADD CONSTRAINT bootstrap4_listgroup_bootstrap4listgroupitem_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_media_bootstrap4media bootstrap4_media_bootstrap4media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_media_bootstrap4media
    ADD CONSTRAINT bootstrap4_media_bootstrap4media_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_media_bootstrap4mediabody bootstrap4_media_bootstrap4mediabody_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_media_bootstrap4mediabody
    ADD CONSTRAINT bootstrap4_media_bootstrap4mediabody_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_bootstrap4picture_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_bootstrap4picture_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_tabs_bootstrap4tab bootstrap4_tabs_bootstrap4tab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_tabs_bootstrap4tab
    ADD CONSTRAINT bootstrap4_tabs_bootstrap4tab_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_tabs_bootstrap4tabitem bootstrap4_tabs_bootstrap4tabitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_tabs_bootstrap4tabitem
    ADD CONSTRAINT bootstrap4_tabs_bootstrap4tabitem_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_utilities_bootstrap4spacing bootstrap4_utilities_bootstrap4spacing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_utilities_bootstrap4spacing
    ADD CONSTRAINT bootstrap4_utilities_bootstrap4spacing_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);


--
-- Name: cms_cmsplugin cms_cmsplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);


--
-- Name: cms_globalpagepermission cms_globalpagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);


--
-- Name: cms_page cms_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);


--
-- Name: cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);


--
-- Name: cms_page_placeholders cms_page_placeholders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);


--
-- Name: cms_page cms_page_publisher_public_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);


--
-- Name: cms_pagepermission cms_pagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_pageuser cms_pageuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: cms_pageusergroup cms_pageusergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);


--
-- Name: cms_placeholder cms_placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);


--
-- Name: cms_placeholderreference cms_placeholderreference_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);


--
-- Name: cms_staticplaceholder cms_staticplaceholder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);


--
-- Name: cms_title cms_title_language_page_id_61aaf084_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);


--
-- Name: cms_title cms_title_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);


--
-- Name: cms_title cms_title_publisher_public_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);


--
-- Name: cms_treenode cms_treenode_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);


--
-- Name: cms_treenode cms_treenode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);


--
-- Name: cms_urlconfrevision cms_urlconfrevision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);


--
-- Name: cms_usersettings cms_usersettings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);


--
-- Name: cms_usersettings cms_usersettings_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);


--
-- Name: core_app_attachment core_app_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_attachment
    ADD CONSTRAINT core_app_attachment_pkey PRIMARY KEY (id);


--
-- Name: core_app_image core_app_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_image
    ADD CONSTRAINT core_app_image_pkey PRIMARY KEY (id);


--
-- Name: core_app_post core_app_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_post
    ADD CONSTRAINT core_app_post_pkey PRIMARY KEY (id);


--
-- Name: core_app_target core_app_target_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_target
    ADD CONSTRAINT core_app_target_pkey PRIMARY KEY (id);


--
-- Name: core_forms_profile core_forms_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_forms_profile
    ADD CONSTRAINT core_forms_profile_pkey PRIMARY KEY (id);


--
-- Name: core_forms_profile core_forms_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_forms_profile
    ADD CONSTRAINT core_forms_profile_user_id_key UNIQUE (user_id);


--
-- Name: core_forms_volunteerapplication core_forms_volunteerapplication_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_forms_volunteerapplication
    ADD CONSTRAINT core_forms_volunteerapplication_pkey PRIMARY KEY (id);


--
-- Name: core_plugins_test1 core_plugins_test1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_plugins_test1
    ADD CONSTRAINT core_plugins_test1_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: djangocms_file_file djangocms_file_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_file_folder djangocms_file_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_icon_icon djangocms_icon_icon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_icon_icon
    ADD CONSTRAINT djangocms_icon_icon_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_link_link djangocms_link_link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_picture_picture djangocms_picture_picture_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_snippet_snippet djangocms_snippet_snippet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);


--
-- Name: djangocms_snippet_snippet djangocms_snippet_snippet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);


--
-- Name: djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);


--
-- Name: djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_style_style djangocms_style_style_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_style_style
    ADD CONSTRAINT djangocms_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_video_videoplayer djangocms_video_video_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_video_videosource djangocms_video_videosource_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_video_videotrack djangocms_video_videotrack_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);


--
-- Name: filer_clipboard filer_clipboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);


--
-- Name: filer_clipboarditem filer_clipboarditem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);


--
-- Name: filer_file filer_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);


--
-- Name: filer_folder filer_folder_parent_id_name_bc773258_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);


--
-- Name: filer_folder filer_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);


--
-- Name: filer_folderpermission filer_folderpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);


--
-- Name: filer_image filer_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);


--
-- Name: filer_thumbnailoption filer_thumbnailoption_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);


--
-- Name: menus_cachekey menus_cachekey_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: background_task_attempts_a9ade23d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_attempts_a9ade23d ON public.background_task USING btree (attempts);


--
-- Name: background_task_completedtask_attempts_772a6783; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_attempts_772a6783 ON public.background_task_completedtask USING btree (attempts);


--
-- Name: background_task_completedtask_creator_content_type_id_21d6a741; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_creator_content_type_id_21d6a741 ON public.background_task_completedtask USING btree (creator_content_type_id);


--
-- Name: background_task_completedtask_failed_at_3de56618; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_failed_at_3de56618 ON public.background_task_completedtask USING btree (failed_at);


--
-- Name: background_task_completedtask_locked_at_29c62708; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_locked_at_29c62708 ON public.background_task_completedtask USING btree (locked_at);


--
-- Name: background_task_completedtask_locked_by_edc8a213; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_locked_by_edc8a213 ON public.background_task_completedtask USING btree (locked_by);


--
-- Name: background_task_completedtask_locked_by_edc8a213_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_locked_by_edc8a213_like ON public.background_task_completedtask USING btree (locked_by varchar_pattern_ops);


--
-- Name: background_task_completedtask_priority_9080692e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_priority_9080692e ON public.background_task_completedtask USING btree (priority);


--
-- Name: background_task_completedtask_queue_61fb0415; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_queue_61fb0415 ON public.background_task_completedtask USING btree (queue);


--
-- Name: background_task_completedtask_queue_61fb0415_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_queue_61fb0415_like ON public.background_task_completedtask USING btree (queue varchar_pattern_ops);


--
-- Name: background_task_completedtask_run_at_77c80f34; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_run_at_77c80f34 ON public.background_task_completedtask USING btree (run_at);


--
-- Name: background_task_completedtask_task_hash_91187576; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_task_hash_91187576 ON public.background_task_completedtask USING btree (task_hash);


--
-- Name: background_task_completedtask_task_hash_91187576_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_task_hash_91187576_like ON public.background_task_completedtask USING btree (task_hash varchar_pattern_ops);


--
-- Name: background_task_completedtask_task_name_388dabc2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_task_name_388dabc2 ON public.background_task_completedtask USING btree (task_name);


--
-- Name: background_task_completedtask_task_name_388dabc2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_completedtask_task_name_388dabc2_like ON public.background_task_completedtask USING btree (task_name varchar_pattern_ops);


--
-- Name: background_task_creator_content_type_id_61cc9af3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_creator_content_type_id_61cc9af3 ON public.background_task USING btree (creator_content_type_id);


--
-- Name: background_task_failed_at_b81bba14; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_failed_at_b81bba14 ON public.background_task USING btree (failed_at);


--
-- Name: background_task_locked_at_0fb0f225; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_locked_at_0fb0f225 ON public.background_task USING btree (locked_at);


--
-- Name: background_task_locked_by_db7779e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_locked_by_db7779e3 ON public.background_task USING btree (locked_by);


--
-- Name: background_task_locked_by_db7779e3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_locked_by_db7779e3_like ON public.background_task USING btree (locked_by varchar_pattern_ops);


--
-- Name: background_task_priority_88bdbce9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_priority_88bdbce9 ON public.background_task USING btree (priority);


--
-- Name: background_task_queue_1d5f3a40; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_queue_1d5f3a40 ON public.background_task USING btree (queue);


--
-- Name: background_task_queue_1d5f3a40_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_queue_1d5f3a40_like ON public.background_task USING btree (queue varchar_pattern_ops);


--
-- Name: background_task_run_at_7baca3aa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_run_at_7baca3aa ON public.background_task USING btree (run_at);


--
-- Name: background_task_task_hash_d8f233bd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_task_hash_d8f233bd ON public.background_task USING btree (task_hash);


--
-- Name: background_task_task_hash_d8f233bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_task_hash_d8f233bd_like ON public.background_task USING btree (task_hash varchar_pattern_ops);


--
-- Name: background_task_task_name_4562d56a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_task_name_4562d56a ON public.background_task USING btree (task_name);


--
-- Name: background_task_task_name_4562d56a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX background_task_task_name_4562d56a_like ON public.background_task USING btree (task_name varchar_pattern_ops);


--
-- Name: bootstrap4_carousel_bootst_carousel_image_id_c7547e1f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_carousel_bootst_carousel_image_id_c7547e1f ON public.bootstrap4_carousel_bootstrap4carouselslide USING btree (carousel_image_id);


--
-- Name: bootstrap4_carousel_bootst_file_link_id_926e466f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_carousel_bootst_file_link_id_926e466f ON public.bootstrap4_carousel_bootstrap4carouselslide USING btree (file_link_id);


--
-- Name: bootstrap4_carousel_bootst_internal_link_id_9040d8b6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_carousel_bootst_internal_link_id_9040d8b6 ON public.bootstrap4_carousel_bootstrap4carouselslide USING btree (internal_link_id);


--
-- Name: bootstrap4_collapse_boot_identifier_70258b88_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_collapse_boot_identifier_70258b88_like ON public.bootstrap4_collapse_bootstrap4collapsetrigger USING btree (identifier varchar_pattern_ops);


--
-- Name: bootstrap4_collapse_boot_identifier_ed2446e8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_collapse_boot_identifier_ed2446e8_like ON public.bootstrap4_collapse_bootstrap4collapsecontainer USING btree (identifier varchar_pattern_ops);


--
-- Name: bootstrap4_collapse_bootst_identifier_70258b88; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_collapse_bootst_identifier_70258b88 ON public.bootstrap4_collapse_bootstrap4collapsetrigger USING btree (identifier);


--
-- Name: bootstrap4_collapse_bootst_identifier_ed2446e8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_collapse_bootst_identifier_ed2446e8 ON public.bootstrap4_collapse_bootstrap4collapsecontainer USING btree (identifier);


--
-- Name: bootstrap4_link_bootstrap4link_file_link_id_73e3dbff; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_link_bootstrap4link_file_link_id_73e3dbff ON public.bootstrap4_link_bootstrap4link USING btree (file_link_id);


--
-- Name: bootstrap4_link_bootstrap4link_internal_link_id_bc4ec61e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_link_bootstrap4link_internal_link_id_bc4ec61e ON public.bootstrap4_link_bootstrap4link USING btree (internal_link_id);


--
-- Name: bootstrap4_picture_bootstr_thumbnail_options_id_15520a42; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_picture_bootstr_thumbnail_options_id_15520a42 ON public.bootstrap4_picture_bootstrap4picture USING btree (thumbnail_options_id);


--
-- Name: bootstrap4_picture_bootstrap4picture_link_page_id_f01c1a21; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_picture_bootstrap4picture_link_page_id_f01c1a21 ON public.bootstrap4_picture_bootstrap4picture USING btree (link_page_id);


--
-- Name: bootstrap4_picture_bootstrap4picture_picture_id_f26d968d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bootstrap4_picture_bootstrap4picture_picture_id_f26d968d ON public.bootstrap4_picture_bootstrap4picture USING btree (picture_id);


--
-- Name: cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON public.cms_aliaspluginmodel USING btree (alias_placeholder_id);


--
-- Name: cms_aliaspluginmodel_plugin_id_9867676e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON public.cms_aliaspluginmodel USING btree (plugin_id);


--
-- Name: cms_cmsplugin_language_bbea8a48; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_cmsplugin_language_bbea8a48 ON public.cms_cmsplugin USING btree (language);


--
-- Name: cms_cmsplugin_language_bbea8a48_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON public.cms_cmsplugin USING btree (language varchar_pattern_ops);


--
-- Name: cms_cmsplugin_parent_id_fd3bd9dd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON public.cms_cmsplugin USING btree (parent_id);


--
-- Name: cms_cmsplugin_path_4917bb44_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_cmsplugin_path_4917bb44_like ON public.cms_cmsplugin USING btree (path varchar_pattern_ops);


--
-- Name: cms_cmsplugin_placeholder_id_0bfa3b26; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON public.cms_cmsplugin USING btree (placeholder_id);


--
-- Name: cms_cmsplugin_plugin_type_94e96ebf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON public.cms_cmsplugin USING btree (plugin_type);


--
-- Name: cms_cmsplugin_plugin_type_94e96ebf_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON public.cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);


--
-- Name: cms_globalpagepermission_group_id_991b4733; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON public.cms_globalpagepermission USING btree (group_id);


--
-- Name: cms_globalpagepermission_sites_globalpagepermission_id_46bd2681; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON public.cms_globalpagepermission_sites USING btree (globalpagepermission_id);


--
-- Name: cms_globalpagepermission_sites_site_id_00460b53; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON public.cms_globalpagepermission_sites USING btree (site_id);


--
-- Name: cms_globalpagepermission_user_id_a227cee1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON public.cms_globalpagepermission USING btree (user_id);


--
-- Name: cms_page_application_urls_9ef47497; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_application_urls_9ef47497 ON public.cms_page USING btree (application_urls);


--
-- Name: cms_page_application_urls_9ef47497_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_application_urls_9ef47497_like ON public.cms_page USING btree (application_urls varchar_pattern_ops);


--
-- Name: cms_page_in_navigation_01c24279; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_in_navigation_01c24279 ON public.cms_page USING btree (in_navigation);


--
-- Name: cms_page_is_home_edadca07; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_is_home_edadca07 ON public.cms_page USING btree (is_home);


--
-- Name: cms_page_limit_visibility_in_menu_30db6aa6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON public.cms_page USING btree (limit_visibility_in_menu);


--
-- Name: cms_page_navigation_extenders_c24af8dd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_navigation_extenders_c24af8dd ON public.cms_page USING btree (navigation_extenders);


--
-- Name: cms_page_navigation_extenders_c24af8dd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON public.cms_page USING btree (navigation_extenders varchar_pattern_ops);


--
-- Name: cms_page_node_id_c87b85a9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_node_id_c87b85a9 ON public.cms_page USING btree (node_id);


--
-- Name: cms_page_placeholders_page_id_f2ce8dec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON public.cms_page_placeholders USING btree (page_id);


--
-- Name: cms_page_placeholders_placeholder_id_6b120886; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON public.cms_page_placeholders USING btree (placeholder_id);


--
-- Name: cms_page_publication_date_684fabf7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_publication_date_684fabf7 ON public.cms_page USING btree (publication_date);


--
-- Name: cms_page_publication_end_date_12a0c46a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_publication_end_date_12a0c46a ON public.cms_page USING btree (publication_end_date);


--
-- Name: cms_page_publisher_is_draft_141cba60; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_publisher_is_draft_141cba60 ON public.cms_page USING btree (publisher_is_draft);


--
-- Name: cms_page_reverse_id_ffc9ede2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_reverse_id_ffc9ede2 ON public.cms_page USING btree (reverse_id);


--
-- Name: cms_page_reverse_id_ffc9ede2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON public.cms_page USING btree (reverse_id varchar_pattern_ops);


--
-- Name: cms_page_soft_root_51efccbe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_page_soft_root_51efccbe ON public.cms_page USING btree (soft_root);


--
-- Name: cms_pagepermission_group_id_af5af193; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_pagepermission_group_id_af5af193 ON public.cms_pagepermission USING btree (group_id);


--
-- Name: cms_pagepermission_page_id_0ae9a163; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON public.cms_pagepermission USING btree (page_id);


--
-- Name: cms_pagepermission_user_id_0c7d2b3c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON public.cms_pagepermission USING btree (user_id);


--
-- Name: cms_pageuser_created_by_id_8e9fbf83; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON public.cms_pageuser USING btree (created_by_id);


--
-- Name: cms_pageusergroup_created_by_id_7d57fa39; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON public.cms_pageusergroup USING btree (created_by_id);


--
-- Name: cms_placeholder_slot_0bc04d21; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_placeholder_slot_0bc04d21 ON public.cms_placeholder USING btree (slot);


--
-- Name: cms_placeholder_slot_0bc04d21_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_placeholder_slot_0bc04d21_like ON public.cms_placeholder USING btree (slot varchar_pattern_ops);


--
-- Name: cms_placeholderreference_placeholder_ref_id_244759b1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON public.cms_placeholderreference USING btree (placeholder_ref_id);


--
-- Name: cms_staticplaceholder_draft_id_5aee407b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON public.cms_staticplaceholder USING btree (draft_id);


--
-- Name: cms_staticplaceholder_public_id_876aaa66; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON public.cms_staticplaceholder USING btree (public_id);


--
-- Name: cms_staticplaceholder_site_id_dc6a85b6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON public.cms_staticplaceholder USING btree (site_id);


--
-- Name: cms_title_has_url_overwrite_ecf27bb9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON public.cms_title USING btree (has_url_overwrite);


--
-- Name: cms_title_language_50a0dfa1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_language_50a0dfa1 ON public.cms_title USING btree (language);


--
-- Name: cms_title_language_50a0dfa1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_language_50a0dfa1_like ON public.cms_title USING btree (language varchar_pattern_ops);


--
-- Name: cms_title_page_id_5fade2a3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_page_id_5fade2a3 ON public.cms_title USING btree (page_id);


--
-- Name: cms_title_path_c484314c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_path_c484314c ON public.cms_title USING btree (path);


--
-- Name: cms_title_path_c484314c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_path_c484314c_like ON public.cms_title USING btree (path varchar_pattern_ops);


--
-- Name: cms_title_publisher_is_draft_95874c88; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_publisher_is_draft_95874c88 ON public.cms_title USING btree (publisher_is_draft);


--
-- Name: cms_title_publisher_state_9a952b0f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_publisher_state_9a952b0f ON public.cms_title USING btree (publisher_state);


--
-- Name: cms_title_slug_4947d146; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_slug_4947d146 ON public.cms_title USING btree (slug);


--
-- Name: cms_title_slug_4947d146_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_title_slug_4947d146_like ON public.cms_title USING btree (slug varchar_pattern_ops);


--
-- Name: cms_treenode_parent_id_59bb02c4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_treenode_parent_id_59bb02c4 ON public.cms_treenode USING btree (parent_id);


--
-- Name: cms_treenode_path_6eb22885_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_treenode_path_6eb22885_like ON public.cms_treenode USING btree (path varchar_pattern_ops);


--
-- Name: cms_treenode_site_id_d3f46985; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_treenode_site_id_d3f46985 ON public.cms_treenode USING btree (site_id);


--
-- Name: cms_usersettings_clipboard_id_3ae17c19; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON public.cms_usersettings USING btree (clipboard_id);


--
-- Name: core_app_attachment_post_id_6220f8d6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_app_attachment_post_id_6220f8d6 ON public.core_app_attachment USING btree (post_id);


--
-- Name: core_app_attachment_post_id_6220f8d6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_app_attachment_post_id_6220f8d6_like ON public.core_app_attachment USING btree (post_id varchar_pattern_ops);


--
-- Name: core_app_image_attachment_id_37458ec6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_app_image_attachment_id_37458ec6 ON public.core_app_image USING btree (attachment_id);


--
-- Name: core_app_post_id_3e8b389c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_app_post_id_3e8b389c_like ON public.core_app_post USING btree (id varchar_pattern_ops);


--
-- Name: core_app_target_attachment_id_041eb45a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_app_target_attachment_id_041eb45a ON public.core_app_target USING btree (attachment_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: djangocms_file_file_file_src_id_74ac14a5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON public.djangocms_file_file USING btree (file_src_id);


--
-- Name: djangocms_file_folder_folder_src_id_9558406a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON public.djangocms_file_folder USING btree (folder_src_id);


--
-- Name: djangocms_googlemap_googlemapmarker_icon_id_3b103213; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON public.djangocms_googlemap_googlemapmarker USING btree (icon_id);


--
-- Name: djangocms_link_link_file_link_id_c7869e4c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_link_link_file_link_id_c7869e4c ON public.djangocms_link_link USING btree (file_link_id);


--
-- Name: djangocms_link_link_page_link_id_adba1bc7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON public.djangocms_link_link USING btree (internal_link_id);


--
-- Name: djangocms_picture_picture_page_link_id_d5c782e0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON public.djangocms_picture_picture USING btree (link_page_id);


--
-- Name: djangocms_picture_picture_picture_id_f7d6711b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON public.djangocms_picture_picture USING btree (picture_id);


--
-- Name: djangocms_picture_picture_thumbnail_options_id_59cf80d1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON public.djangocms_picture_picture USING btree (thumbnail_options_id);


--
-- Name: djangocms_snippet_snippet_name_260f397b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON public.djangocms_snippet_snippet USING btree (name varchar_pattern_ops);


--
-- Name: djangocms_snippet_snippet_slug_bd43cd96_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON public.djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);


--
-- Name: djangocms_snippet_snippetptr_snippet_id_56b99614; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON public.djangocms_snippet_snippetptr USING btree (snippet_id);


--
-- Name: djangocms_video_videoplayer_poster_id_07790e24; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON public.djangocms_video_videoplayer USING btree (poster_id);


--
-- Name: djangocms_video_videosource_source_file_id_16f11167; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON public.djangocms_video_videosource USING btree (source_file_id);


--
-- Name: djangocms_video_videotrack_src_id_e5a015d8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON public.djangocms_video_videotrack USING btree (src_id);


--
-- Name: easy_thumbnails_source_name_5fe0edc6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);


--
-- Name: easy_thumbnails_source_name_5fe0edc6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_source_id_5b57bc77; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);


--
-- Name: filer_clipboard_user_id_b52ff0bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_clipboard_user_id_b52ff0bc ON public.filer_clipboard USING btree (user_id);


--
-- Name: filer_clipboarditem_clipboard_id_7a76518b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON public.filer_clipboarditem USING btree (clipboard_id);


--
-- Name: filer_clipboarditem_file_id_06196f80; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_clipboarditem_file_id_06196f80 ON public.filer_clipboarditem USING btree (file_id);


--
-- Name: filer_file_folder_id_af803bbb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_file_folder_id_af803bbb ON public.filer_file USING btree (folder_id);


--
-- Name: filer_file_owner_id_b9e32671; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_file_owner_id_b9e32671 ON public.filer_file USING btree (owner_id);


--
-- Name: filer_file_polymorphic_ctype_id_f44903c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON public.filer_file USING btree (polymorphic_ctype_id);


--
-- Name: filer_folder_owner_id_be530fb4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_folder_owner_id_be530fb4 ON public.filer_folder USING btree (owner_id);


--
-- Name: filer_folder_parent_id_308aecda; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_folder_parent_id_308aecda ON public.filer_folder USING btree (parent_id);


--
-- Name: filer_folder_tree_id_b016223c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_folder_tree_id_b016223c ON public.filer_folder USING btree (tree_id);


--
-- Name: filer_folder_tree_id_lft_088ce52b_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_folder_tree_id_lft_088ce52b_idx ON public.filer_folder USING btree (tree_id, lft);


--
-- Name: filer_folderpermission_folder_id_5d02f1da; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON public.filer_folderpermission USING btree (folder_id);


--
-- Name: filer_folderpermission_group_id_8901bafa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_folderpermission_group_id_8901bafa ON public.filer_folderpermission USING btree (group_id);


--
-- Name: filer_folderpermission_user_id_7673d4b6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON public.filer_folderpermission USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: background_task_completedtask background_task_comp_creator_content_type_21d6a741_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.background_task_completedtask
    ADD CONSTRAINT background_task_comp_creator_content_type_21d6a741_fk_django_co FOREIGN KEY (creator_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: background_task background_task_creator_content_type_61cc9af3_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.background_task
    ADD CONSTRAINT background_task_creator_content_type_61cc9af3_fk_django_co FOREIGN KEY (creator_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_alerts_bootstrap4alerts bootstrap4_alerts_bo_cmsplugin_ptr_id_16c9e6e1_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_alerts_bootstrap4alerts
    ADD CONSTRAINT bootstrap4_alerts_bo_cmsplugin_ptr_id_16c9e6e1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_badge_bootstrap4badge bootstrap4_badge_boo_cmsplugin_ptr_id_1cfc1292_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_badge_bootstrap4badge
    ADD CONSTRAINT bootstrap4_badge_boo_cmsplugin_ptr_id_1cfc1292_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_card_bootstrap4cardinner bootstrap4_card_boot_cmsplugin_ptr_id_8c0b627d_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_card_bootstrap4cardinner
    ADD CONSTRAINT bootstrap4_card_boot_cmsplugin_ptr_id_8c0b627d_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_card_bootstrap4card bootstrap4_card_boot_cmsplugin_ptr_id_c6cf1064_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_card_bootstrap4card
    ADD CONSTRAINT bootstrap4_card_boot_cmsplugin_ptr_id_c6cf1064_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel__carousel_image_id_c7547e1f_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel__carousel_image_id_c7547e1f_fk_filer_ima FOREIGN KEY (carousel_image_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel__cmsplugin_ptr_id_50bebcc8_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel__cmsplugin_ptr_id_50bebcc8_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carousel bootstrap4_carousel__cmsplugin_ptr_id_d97c4671_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carousel
    ADD CONSTRAINT bootstrap4_carousel__cmsplugin_ptr_id_d97c4671_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel__file_link_id_926e466f_fk_filer_fil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel__file_link_id_926e466f_fk_filer_fil FOREIGN KEY (file_link_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_ FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_collapse_bootstrap4collapsecontainer bootstrap4_collapse__cmsplugin_ptr_id_1d125930_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapsecontainer
    ADD CONSTRAINT bootstrap4_collapse__cmsplugin_ptr_id_1d125930_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_collapse_bootstrap4collapse bootstrap4_collapse__cmsplugin_ptr_id_c9f9a375_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapse
    ADD CONSTRAINT bootstrap4_collapse__cmsplugin_ptr_id_c9f9a375_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_collapse_bootstrap4collapsetrigger bootstrap4_collapse__cmsplugin_ptr_id_f71d6f15_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapsetrigger
    ADD CONSTRAINT bootstrap4_collapse__cmsplugin_ptr_id_f71d6f15_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_content_bootstrap4figure bootstrap4_content_b_cmsplugin_ptr_id_4ec12771_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4figure
    ADD CONSTRAINT bootstrap4_content_b_cmsplugin_ptr_id_4ec12771_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_content_bootstrap4blockquote bootstrap4_content_b_cmsplugin_ptr_id_8b0021f2_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4blockquote
    ADD CONSTRAINT bootstrap4_content_b_cmsplugin_ptr_id_8b0021f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_content_bootstrap4code bootstrap4_content_b_cmsplugin_ptr_id_c1953358_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4code
    ADD CONSTRAINT bootstrap4_content_b_cmsplugin_ptr_id_c1953358_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_grid_bootstrap4gridrow bootstrap4_grid_boot_cmsplugin_ptr_id_02c25f67_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridrow
    ADD CONSTRAINT bootstrap4_grid_boot_cmsplugin_ptr_id_02c25f67_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_grid_bootstrap4gridcolumn bootstrap4_grid_boot_cmsplugin_ptr_id_e1f10b7c_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridcolumn
    ADD CONSTRAINT bootstrap4_grid_boot_cmsplugin_ptr_id_e1f10b7c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_grid_bootstrap4gridcontainer bootstrap4_grid_boot_cmsplugin_ptr_id_ff053e0f_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridcontainer
    ADD CONSTRAINT bootstrap4_grid_boot_cmsplugin_ptr_id_ff053e0f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_jumbotron_bootstrap4jumbotron bootstrap4_jumbotron_cmsplugin_ptr_id_1429c898_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_jumbotron_bootstrap4jumbotron
    ADD CONSTRAINT bootstrap4_jumbotron_cmsplugin_ptr_id_1429c898_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_link_bootstrap4link bootstrap4_link_boot_cmsplugin_ptr_id_49f69e60_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_link_bootstrap4link
    ADD CONSTRAINT bootstrap4_link_boot_cmsplugin_ptr_id_49f69e60_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_link_bootstrap4link bootstrap4_link_boot_file_link_id_73e3dbff_fk_filer_fil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_link_bootstrap4link
    ADD CONSTRAINT bootstrap4_link_boot_file_link_id_73e3dbff_fk_filer_fil FOREIGN KEY (file_link_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_link_bootstrap4link bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_link_bootstrap4link
    ADD CONSTRAINT bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_ FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_listgroup_bootstrap4listgroup bootstrap4_listgroup_cmsplugin_ptr_id_c0811351_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_listgroup_bootstrap4listgroup
    ADD CONSTRAINT bootstrap4_listgroup_cmsplugin_ptr_id_c0811351_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_listgroup_bootstrap4listgroupitem bootstrap4_listgroup_cmsplugin_ptr_id_df52f490_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_listgroup_bootstrap4listgroupitem
    ADD CONSTRAINT bootstrap4_listgroup_cmsplugin_ptr_id_df52f490_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_media_bootstrap4mediabody bootstrap4_media_boo_cmsplugin_ptr_id_574b3dd8_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_media_bootstrap4mediabody
    ADD CONSTRAINT bootstrap4_media_boo_cmsplugin_ptr_id_574b3dd8_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_media_bootstrap4media bootstrap4_media_boo_cmsplugin_ptr_id_9eb94f74_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_media_bootstrap4media
    ADD CONSTRAINT bootstrap4_media_boo_cmsplugin_ptr_id_9eb94f74_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_b_cmsplugin_ptr_id_3d3bfb59_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_b_cmsplugin_ptr_id_3d3bfb59_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_b_link_page_id_f01c1a21_fk_cms_page_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_b_link_page_id_f01c1a21_fk_cms_page_ FOREIGN KEY (link_page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_b_picture_id_f26d968d_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_b_picture_id_f26d968d_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES public.filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_tabs_bootstrap4tabitem bootstrap4_tabs_boot_cmsplugin_ptr_id_e017af58_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_tabs_bootstrap4tabitem
    ADD CONSTRAINT bootstrap4_tabs_boot_cmsplugin_ptr_id_e017af58_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_tabs_bootstrap4tab bootstrap4_tabs_boot_cmsplugin_ptr_id_e655c7b6_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_tabs_bootstrap4tab
    ADD CONSTRAINT bootstrap4_tabs_boot_cmsplugin_ptr_id_e655c7b6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_utilities_bootstrap4spacing bootstrap4_utilities_cmsplugin_ptr_id_c15ec8d1_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bootstrap4_utilities_bootstrap4spacing
    ADD CONSTRAINT bootstrap4_utilities_cmsplugin_ptr_id_c15ec8d1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES public.cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_title cms_title_page_id_5fade2a3_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_title(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_app_attachment core_app_attachment_post_id_6220f8d6_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_attachment
    ADD CONSTRAINT core_app_attachment_post_id_6220f8d6_fk FOREIGN KEY (post_id) REFERENCES public.core_app_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_app_image core_app_image_attachment_id_37458ec6_fk_core_app_attachment_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_image
    ADD CONSTRAINT core_app_image_attachment_id_37458ec6_fk_core_app_attachment_id FOREIGN KEY (attachment_id) REFERENCES public.core_app_attachment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_app_target core_app_target_attachment_id_041eb45a_fk_core_app_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_app_target
    ADD CONSTRAINT core_app_target_attachment_id_041eb45a_fk_core_app_ FOREIGN KEY (attachment_id) REFERENCES public.core_app_attachment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_forms_profile core_forms_profile_user_id_4bd7fe6c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_forms_profile
    ADD CONSTRAINT core_forms_profile_user_id_4bd7fe6c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_plugins_test1 core_plugins_test1_cmsplugin_ptr_id_7dc1d3c4_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_plugins_test1
    ADD CONSTRAINT core_plugins_test1_cmsplugin_ptr_id_7dc1d3c4_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_icon_icon djangocms_icon_icon_cmsplugin_ptr_id_e04b5be4_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_icon_icon
    ADD CONSTRAINT djangocms_icon_icon_cmsplugin_ptr_id_e04b5be4_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_link_link djangocms_link_link_file_link_id_c7869e4c_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_file_link_id_c7869e4c_fk_filer_file_id FOREIGN KEY (file_link_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES public.filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_snippet_snippetptr djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms FOREIGN KEY (snippet_id) REFERENCES public.djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_style_style djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_style_style
    ADD CONSTRAINT djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES public.filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_owner_id_b9e32671_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

