PGDMP         %                z            product    14.2    14.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16727    product    DATABASE     k   CREATE DATABASE product WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE product;
                postgres    false                        2615    2200    product    SCHEMA        CREATE SCHEMA product;
    DROP SCHEMA product;
                postgres    false            �           0    0    SCHEMA product    COMMENT     7   COMMENT ON SCHEMA product IS 'standard public schema';
                   postgres    false    3            �            1259    16763    admin_permissions    TABLE     K  CREATE TABLE product.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 &   DROP TABLE product.admin_permissions;
       product         heap    postgres    false    3            �            1259    16762    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE product.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE product.admin_permissions_id_seq;
       product          postgres    false    3    218            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE product.admin_permissions_id_seq OWNED BY product.admin_permissions.id;
          product          postgres    false    217            �            1259    16859    admin_permissions_role_links    TABLE     f   CREATE TABLE product.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);
 1   DROP TABLE product.admin_permissions_role_links;
       product         heap    postgres    false    3            �            1259    16785    admin_roles    TABLE     <  CREATE TABLE product.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
     DROP TABLE product.admin_roles;
       product         heap    postgres    false    3            �            1259    16784    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE product.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE product.admin_roles_id_seq;
       product          postgres    false    3    222            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE product.admin_roles_id_seq OWNED BY product.admin_roles.id;
          product          postgres    false    221            �            1259    16774    admin_users    TABLE     C  CREATE TABLE product.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
     DROP TABLE product.admin_users;
       product         heap    postgres    false    3            �            1259    16773    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE product.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE product.admin_users_id_seq;
       product          postgres    false    220    3            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE product.admin_users_id_seq OWNED BY product.admin_users.id;
          product          postgres    false    219            �            1259    16864    admin_users_roles_links    TABLE     [   CREATE TABLE product.admin_users_roles_links (
    user_id integer,
    role_id integer
);
 ,   DROP TABLE product.admin_users_roles_links;
       product         heap    postgres    false    3            �            1259    17188 '   components_product_info_tariff_variants    TABLE     �   CREATE TABLE product.components_product_info_tariff_variants (
    id integer NOT NULL,
    period character varying(255),
    ops_json jsonb,
    discount integer
);
 <   DROP TABLE product.components_product_info_tariff_variants;
       product         heap    postgres    false    3            �            1259    17187 .   components_product_info_tariff_variants_id_seq    SEQUENCE     �   CREATE SEQUENCE product.components_product_info_tariff_variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE product.components_product_info_tariff_variants_id_seq;
       product          postgres    false    3    245            �           0    0 .   components_product_info_tariff_variants_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE product.components_product_info_tariff_variants_id_seq OWNED BY product.components_product_info_tariff_variants.id;
          product          postgres    false    244            �            1259    17177    components_product_info_tariffs    TABLE       CREATE TABLE product.components_product_info_tariffs (
    id integer NOT NULL,
    name character varying(255),
    description text,
    maximum_licenses_count integer,
    "order" integer,
    unit_price double precision,
    unit_period character varying(255),
    ops_json jsonb
);
 4   DROP TABLE product.components_product_info_tariffs;
       product         heap    postgres    false    3            �            1259    17199 *   components_product_info_tariffs_components    TABLE     �   CREATE TABLE product.components_product_info_tariffs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 ?   DROP TABLE product.components_product_info_tariffs_components;
       product         heap    postgres    false    3            �            1259    17198 1   components_product_info_tariffs_components_id_seq    SEQUENCE     �   CREATE SEQUENCE product.components_product_info_tariffs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE product.components_product_info_tariffs_components_id_seq;
       product          postgres    false    3    247            �           0    0 1   components_product_info_tariffs_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE product.components_product_info_tariffs_components_id_seq OWNED BY product.components_product_info_tariffs_components.id;
          product          postgres    false    246            �            1259    17176 &   components_product_info_tariffs_id_seq    SEQUENCE     �   CREATE SEQUENCE product.components_product_info_tariffs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE product.components_product_info_tariffs_id_seq;
       product          postgres    false    3    243            �           0    0 &   components_product_info_tariffs_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE product.components_product_info_tariffs_id_seq OWNED BY product.components_product_info_tariffs.id;
          product          postgres    false    242            �            1259    16807    files    TABLE     |  CREATE TABLE product.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE product.files;
       product         heap    postgres    false    3            �            1259    16806    files_id_seq    SEQUENCE     �   CREATE SEQUENCE product.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE product.files_id_seq;
       product          postgres    false    3    226                        0    0    files_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE product.files_id_seq OWNED BY product.files.id;
          product          postgres    false    225            �            1259    16869    files_related_morphs    TABLE     �   CREATE TABLE product.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);
 )   DROP TABLE product.files_related_morphs;
       product         heap    postgres    false    3            �            1259    16849    i18n_locale    TABLE       CREATE TABLE product.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
     DROP TABLE product.i18n_locale;
       product         heap    postgres    false    3            �            1259    16848    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE product.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE product.i18n_locale_id_seq;
       product          postgres    false    3    234                       0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE product.i18n_locale_id_seq OWNED BY product.i18n_locale.id;
          product          postgres    false    233            �            1259    17023    products    TABLE       CREATE TABLE product.products (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    widjet text,
    ops_json jsonb
);
    DROP TABLE product.products;
       product         heap    postgres    false    3            �            1259    17225    products_components    TABLE     �   CREATE TABLE product.products_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 (   DROP TABLE product.products_components;
       product         heap    postgres    false    3            �            1259    17224    products_components_id_seq    SEQUENCE     �   CREATE SEQUENCE product.products_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE product.products_components_id_seq;
       product          postgres    false    249    3                       0    0    products_components_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE product.products_components_id_seq OWNED BY product.products_components.id;
          product          postgres    false    248            �            1259    17022    products_id_seq    SEQUENCE     �   CREATE SEQUENCE product.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE product.products_id_seq;
       product          postgres    false    3    241                       0    0    products_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE product.products_id_seq OWNED BY product.products.id;
          product          postgres    false    240            �            1259    16796    strapi_api_tokens    TABLE     i  CREATE TABLE product.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 &   DROP TABLE product.strapi_api_tokens;
       product         heap    postgres    false    3            �            1259    16795    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE product.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE product.strapi_api_tokens_id_seq;
       product          postgres    false    224    3                       0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE product.strapi_api_tokens_id_seq OWNED BY product.strapi_api_tokens.id;
          product          postgres    false    223            �            1259    16745    strapi_core_store_settings    TABLE     �   CREATE TABLE product.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 /   DROP TABLE product.strapi_core_store_settings;
       product         heap    postgres    false    3            �            1259    16744 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE product.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE product.strapi_core_store_settings_id_seq;
       product          postgres    false    3    214                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE product.strapi_core_store_settings_id_seq OWNED BY product.strapi_core_store_settings.id;
          product          postgres    false    213            �            1259    16736    strapi_database_schema    TABLE     �   CREATE TABLE product.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 +   DROP TABLE product.strapi_database_schema;
       product         heap    postgres    false    3            �            1259    16735    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE product.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE product.strapi_database_schema_id_seq;
       product          postgres    false    212    3                       0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE product.strapi_database_schema_id_seq OWNED BY product.strapi_database_schema.id;
          product          postgres    false    211            �            1259    16729    strapi_migrations    TABLE     �   CREATE TABLE product.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 &   DROP TABLE product.strapi_migrations;
       product         heap    postgres    false    3            �            1259    16728    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE product.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE product.strapi_migrations_id_seq;
       product          postgres    false    3    210                       0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE product.strapi_migrations_id_seq OWNED BY product.strapi_migrations.id;
          product          postgres    false    209            �            1259    16754    strapi_webhooks    TABLE     �   CREATE TABLE product.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 $   DROP TABLE product.strapi_webhooks;
       product         heap    postgres    false    3            �            1259    16753    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE product.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE product.strapi_webhooks_id_seq;
       product          postgres    false    216    3                       0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE product.strapi_webhooks_id_seq OWNED BY product.strapi_webhooks.id;
          product          postgres    false    215            �            1259    16818    up_permissions    TABLE     �   CREATE TABLE product.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 #   DROP TABLE product.up_permissions;
       product         heap    postgres    false    3            �            1259    16817    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE product.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE product.up_permissions_id_seq;
       product          postgres    false    228    3            	           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE product.up_permissions_id_seq OWNED BY product.up_permissions.id;
          product          postgres    false    227            �            1259    16875    up_permissions_role_links    TABLE     c   CREATE TABLE product.up_permissions_role_links (
    permission_id integer,
    role_id integer
);
 .   DROP TABLE product.up_permissions_role_links;
       product         heap    postgres    false    3            �            1259    16827    up_roles    TABLE     9  CREATE TABLE product.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE product.up_roles;
       product         heap    postgres    false    3            �            1259    16826    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE product.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE product.up_roles_id_seq;
       product          postgres    false    3    230            
           0    0    up_roles_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE product.up_roles_id_seq OWNED BY product.up_roles.id;
          product          postgres    false    229            �            1259    16838    up_users    TABLE     �  CREATE TABLE product.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE product.up_users;
       product         heap    postgres    false    3            �            1259    16837    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE product.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE product.up_users_id_seq;
       product          postgres    false    3    232                       0    0    up_users_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE product.up_users_id_seq OWNED BY product.up_users.id;
          product          postgres    false    231            �            1259    16880    up_users_role_links    TABLE     W   CREATE TABLE product.up_users_role_links (
    user_id integer,
    role_id integer
);
 (   DROP TABLE product.up_users_role_links;
       product         heap    postgres    false    3            �           2604    16766    admin_permissions id    DEFAULT     ~   ALTER TABLE ONLY product.admin_permissions ALTER COLUMN id SET DEFAULT nextval('product.admin_permissions_id_seq'::regclass);
 D   ALTER TABLE product.admin_permissions ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    218    217    218            �           2604    16788    admin_roles id    DEFAULT     r   ALTER TABLE ONLY product.admin_roles ALTER COLUMN id SET DEFAULT nextval('product.admin_roles_id_seq'::regclass);
 >   ALTER TABLE product.admin_roles ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    222    221    222            �           2604    16777    admin_users id    DEFAULT     r   ALTER TABLE ONLY product.admin_users ALTER COLUMN id SET DEFAULT nextval('product.admin_users_id_seq'::regclass);
 >   ALTER TABLE product.admin_users ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    219    220    220            �           2604    17191 *   components_product_info_tariff_variants id    DEFAULT     �   ALTER TABLE ONLY product.components_product_info_tariff_variants ALTER COLUMN id SET DEFAULT nextval('product.components_product_info_tariff_variants_id_seq'::regclass);
 Z   ALTER TABLE product.components_product_info_tariff_variants ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    245    244    245            �           2604    17180 "   components_product_info_tariffs id    DEFAULT     �   ALTER TABLE ONLY product.components_product_info_tariffs ALTER COLUMN id SET DEFAULT nextval('product.components_product_info_tariffs_id_seq'::regclass);
 R   ALTER TABLE product.components_product_info_tariffs ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    243    242    243            �           2604    17202 -   components_product_info_tariffs_components id    DEFAULT     �   ALTER TABLE ONLY product.components_product_info_tariffs_components ALTER COLUMN id SET DEFAULT nextval('product.components_product_info_tariffs_components_id_seq'::regclass);
 ]   ALTER TABLE product.components_product_info_tariffs_components ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    246    247    247            �           2604    16810    files id    DEFAULT     f   ALTER TABLE ONLY product.files ALTER COLUMN id SET DEFAULT nextval('product.files_id_seq'::regclass);
 8   ALTER TABLE product.files ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    226    225    226            �           2604    16852    i18n_locale id    DEFAULT     r   ALTER TABLE ONLY product.i18n_locale ALTER COLUMN id SET DEFAULT nextval('product.i18n_locale_id_seq'::regclass);
 >   ALTER TABLE product.i18n_locale ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    233    234    234            �           2604    17026    products id    DEFAULT     l   ALTER TABLE ONLY product.products ALTER COLUMN id SET DEFAULT nextval('product.products_id_seq'::regclass);
 ;   ALTER TABLE product.products ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    241    240    241            �           2604    17228    products_components id    DEFAULT     �   ALTER TABLE ONLY product.products_components ALTER COLUMN id SET DEFAULT nextval('product.products_components_id_seq'::regclass);
 F   ALTER TABLE product.products_components ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    248    249    249            �           2604    16799    strapi_api_tokens id    DEFAULT     ~   ALTER TABLE ONLY product.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('product.strapi_api_tokens_id_seq'::regclass);
 D   ALTER TABLE product.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    224    223    224            �           2604    16748    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY product.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('product.strapi_core_store_settings_id_seq'::regclass);
 M   ALTER TABLE product.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    214    213    214            �           2604    16739    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY product.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('product.strapi_database_schema_id_seq'::regclass);
 I   ALTER TABLE product.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    212    211    212            �           2604    16732    strapi_migrations id    DEFAULT     ~   ALTER TABLE ONLY product.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('product.strapi_migrations_id_seq'::regclass);
 D   ALTER TABLE product.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    210    209    210            �           2604    16757    strapi_webhooks id    DEFAULT     z   ALTER TABLE ONLY product.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('product.strapi_webhooks_id_seq'::regclass);
 B   ALTER TABLE product.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    216    215    216            �           2604    16821    up_permissions id    DEFAULT     x   ALTER TABLE ONLY product.up_permissions ALTER COLUMN id SET DEFAULT nextval('product.up_permissions_id_seq'::regclass);
 A   ALTER TABLE product.up_permissions ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    228    227    228            �           2604    16830    up_roles id    DEFAULT     l   ALTER TABLE ONLY product.up_roles ALTER COLUMN id SET DEFAULT nextval('product.up_roles_id_seq'::regclass);
 ;   ALTER TABLE product.up_roles ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    229    230    230            �           2604    16841    up_users id    DEFAULT     l   ALTER TABLE ONLY product.up_users ALTER COLUMN id SET DEFAULT nextval('product.up_users_id_seq'::regclass);
 ;   ALTER TABLE product.up_users ALTER COLUMN id DROP DEFAULT;
       product          postgres    false    232    231    232            �          0    16763    admin_permissions 
   TABLE DATA           �   COPY product.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    product          postgres    false    218   �      �          0    16859    admin_permissions_role_links 
   TABLE DATA           O   COPY product.admin_permissions_role_links (permission_id, role_id) FROM stdin;
    product          postgres    false    235   �      �          0    16785    admin_roles 
   TABLE DATA           y   COPY product.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    product          postgres    false    222   /      �          0    16774    admin_users 
   TABLE DATA           �   COPY product.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    product          postgres    false    220         �          0    16864    admin_users_roles_links 
   TABLE DATA           D   COPY product.admin_users_roles_links (user_id, role_id) FROM stdin;
    product          postgres    false    236   �      �          0    17188 '   components_product_info_tariff_variants 
   TABLE DATA           b   COPY product.components_product_info_tariff_variants (id, period, ops_json, discount) FROM stdin;
    product          postgres    false    245   �      �          0    17177    components_product_info_tariffs 
   TABLE DATA           �   COPY product.components_product_info_tariffs (id, name, description, maximum_licenses_count, "order", unit_price, unit_period, ops_json) FROM stdin;
    product          postgres    false    243   }      �          0    17199 *   components_product_info_tariffs_components 
   TABLE DATA           �   COPY product.components_product_info_tariffs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    product          postgres    false    247   �      �          0    16807    files 
   TABLE DATA           �   COPY product.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    product          postgres    false    226   �      �          0    16869    files_related_morphs 
   TABLE DATA           b   COPY product.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
    product          postgres    false    237   �      �          0    16849    i18n_locale 
   TABLE DATA           l   COPY product.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    product          postgres    false    234          �          0    17023    products 
   TABLE DATA           u   COPY product.products (id, name, created_at, updated_at, created_by_id, updated_by_id, widjet, ops_json) FROM stdin;
    product          postgres    false    241   h       �          0    17225    products_components 
   TABLE DATA           k   COPY product.products_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    product          postgres    false    249   :#      �          0    16796    strapi_api_tokens 
   TABLE DATA           �   COPY product.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    product          postgres    false    224   :$      �          0    16745    strapi_core_store_settings 
   TABLE DATA           ]   COPY product.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    product          postgres    false    214   W$      �          0    16736    strapi_database_schema 
   TABLE DATA           K   COPY product.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    product          postgres    false    212   �5      �          0    16729    strapi_migrations 
   TABLE DATA           >   COPY product.strapi_migrations (id, name, "time") FROM stdin;
    product          postgres    false    210   �;      �          0    16754    strapi_webhooks 
   TABLE DATA           S   COPY product.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    product          postgres    false    216   �;      �          0    16818    up_permissions 
   TABLE DATA           k   COPY product.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    product          postgres    false    228   �;      �          0    16875    up_permissions_role_links 
   TABLE DATA           L   COPY product.up_permissions_role_links (permission_id, role_id) FROM stdin;
    product          postgres    false    238   �<      �          0    16827    up_roles 
   TABLE DATA           v   COPY product.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    product          postgres    false    230   ==      �          0    16838    up_users 
   TABLE DATA           �   COPY product.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    product          postgres    false    232   �=      �          0    16880    up_users_role_links 
   TABLE DATA           @   COPY product.up_users_role_links (user_id, role_id) FROM stdin;
    product          postgres    false    239   �=                 0    0    admin_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('product.admin_permissions_id_seq', 114, true);
          product          postgres    false    217                       0    0    admin_roles_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('product.admin_roles_id_seq', 3, true);
          product          postgres    false    221                       0    0    admin_users_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('product.admin_users_id_seq', 1, true);
          product          postgres    false    219                       0    0 .   components_product_info_tariff_variants_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('product.components_product_info_tariff_variants_id_seq', 42, true);
          product          postgres    false    244                       0    0 1   components_product_info_tariffs_components_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('product.components_product_info_tariffs_components_id_seq', 55, true);
          product          postgres    false    246                       0    0 &   components_product_info_tariffs_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('product.components_product_info_tariffs_id_seq', 61, true);
          product          postgres    false    242                       0    0    files_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('product.files_id_seq', 1, false);
          product          postgres    false    225                       0    0    i18n_locale_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('product.i18n_locale_id_seq', 1, true);
          product          postgres    false    233                       0    0    products_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('product.products_components_id_seq', 95, true);
          product          postgres    false    248                       0    0    products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('product.products_id_seq', 71, true);
          product          postgres    false    240                       0    0    strapi_api_tokens_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('product.strapi_api_tokens_id_seq', 1, false);
          product          postgres    false    223                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('product.strapi_core_store_settings_id_seq', 22, true);
          product          postgres    false    213                       0    0    strapi_database_schema_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('product.strapi_database_schema_id_seq', 23, true);
          product          postgres    false    211                       0    0    strapi_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('product.strapi_migrations_id_seq', 1, false);
          product          postgres    false    209                       0    0    strapi_webhooks_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('product.strapi_webhooks_id_seq', 1, false);
          product          postgres    false    215                       0    0    up_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('product.up_permissions_id_seq', 21, true);
          product          postgres    false    227                       0    0    up_roles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('product.up_roles_id_seq', 2, true);
          product          postgres    false    229                       0    0    up_users_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('product.up_users_id_seq', 1, false);
          product          postgres    false    231            �           2606    16770 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY product.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY product.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       product            postgres    false    218            �           2606    16792    admin_roles admin_roles_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY product.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY product.admin_roles DROP CONSTRAINT admin_roles_pkey;
       product            postgres    false    222            �           2606    16781    admin_users admin_users_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY product.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY product.admin_users DROP CONSTRAINT admin_users_pkey;
       product            postgres    false    220                       2606    17193 T   components_product_info_tariff_variants components_product_info_tariff_variants_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY product.components_product_info_tariff_variants
    ADD CONSTRAINT components_product_info_tariff_variants_pkey PRIMARY KEY (id);
    ALTER TABLE ONLY product.components_product_info_tariff_variants DROP CONSTRAINT components_product_info_tariff_variants_pkey;
       product            postgres    false    245                       2606    17207 Z   components_product_info_tariffs_components components_product_info_tariffs_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY product.components_product_info_tariffs_components
    ADD CONSTRAINT components_product_info_tariffs_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY product.components_product_info_tariffs_components DROP CONSTRAINT components_product_info_tariffs_components_pkey;
       product            postgres    false    247                       2606    17184 D   components_product_info_tariffs components_product_info_tariffs_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY product.components_product_info_tariffs
    ADD CONSTRAINT components_product_info_tariffs_pkey PRIMARY KEY (id);
 o   ALTER TABLE ONLY product.components_product_info_tariffs DROP CONSTRAINT components_product_info_tariffs_pkey;
       product            postgres    false    243            �           2606    16814    files files_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY product.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY product.files DROP CONSTRAINT files_pkey;
       product            postgres    false    226                       2606    16856    i18n_locale i18n_locale_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY product.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY product.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       product            postgres    false    234                       2606    17233 ,   products_components products_components_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY product.products_components
    ADD CONSTRAINT products_components_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY product.products_components DROP CONSTRAINT products_components_pkey;
       product            postgres    false    249                       2606    17028    products products_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY product.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY product.products DROP CONSTRAINT products_pkey;
       product            postgres    false    241            �           2606    16803 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY product.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY product.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       product            postgres    false    224            �           2606    16752 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY product.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY product.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       product            postgres    false    214            �           2606    16743 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY product.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY product.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       product            postgres    false    212            �           2606    16734 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY product.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY product.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       product            postgres    false    210            �           2606    16761 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY product.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY product.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       product            postgres    false    216            �           2606    16823 "   up_permissions up_permissions_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY product.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY product.up_permissions DROP CONSTRAINT up_permissions_pkey;
       product            postgres    false    228            �           2606    16834    up_roles up_roles_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY product.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY product.up_roles DROP CONSTRAINT up_roles_pkey;
       product            postgres    false    230            �           2606    16845    up_users up_users_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY product.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY product.up_users DROP CONSTRAINT up_users_pkey;
       product            postgres    false    232            �           1259    16771 "   admin_permissions_created_by_id_fk    INDEX     j   CREATE INDEX admin_permissions_created_by_id_fk ON product.admin_permissions USING btree (created_by_id);
 7   DROP INDEX product.admin_permissions_created_by_id_fk;
       product            postgres    false    218                       1259    16862    admin_permissions_role_links_fk    INDEX     r   CREATE INDEX admin_permissions_role_links_fk ON product.admin_permissions_role_links USING btree (permission_id);
 4   DROP INDEX product.admin_permissions_role_links_fk;
       product            postgres    false    235                       1259    16863 #   admin_permissions_role_links_inv_fk    INDEX     p   CREATE INDEX admin_permissions_role_links_inv_fk ON product.admin_permissions_role_links USING btree (role_id);
 8   DROP INDEX product.admin_permissions_role_links_inv_fk;
       product            postgres    false    235            �           1259    16772 "   admin_permissions_updated_by_id_fk    INDEX     j   CREATE INDEX admin_permissions_updated_by_id_fk ON product.admin_permissions USING btree (updated_by_id);
 7   DROP INDEX product.admin_permissions_updated_by_id_fk;
       product            postgres    false    218            �           1259    16793    admin_roles_created_by_id_fk    INDEX     ^   CREATE INDEX admin_roles_created_by_id_fk ON product.admin_roles USING btree (created_by_id);
 1   DROP INDEX product.admin_roles_created_by_id_fk;
       product            postgres    false    222            �           1259    16794    admin_roles_updated_by_id_fk    INDEX     ^   CREATE INDEX admin_roles_updated_by_id_fk ON product.admin_roles USING btree (updated_by_id);
 1   DROP INDEX product.admin_roles_updated_by_id_fk;
       product            postgres    false    222            �           1259    16782    admin_users_created_by_id_fk    INDEX     ^   CREATE INDEX admin_users_created_by_id_fk ON product.admin_users USING btree (created_by_id);
 1   DROP INDEX product.admin_users_created_by_id_fk;
       product            postgres    false    220                       1259    16867    admin_users_roles_links_fk    INDEX     b   CREATE INDEX admin_users_roles_links_fk ON product.admin_users_roles_links USING btree (user_id);
 /   DROP INDEX product.admin_users_roles_links_fk;
       product            postgres    false    236                       1259    16868    admin_users_roles_links_inv_fk    INDEX     f   CREATE INDEX admin_users_roles_links_inv_fk ON product.admin_users_roles_links USING btree (role_id);
 3   DROP INDEX product.admin_users_roles_links_inv_fk;
       product            postgres    false    236            �           1259    16783    admin_users_updated_by_id_fk    INDEX     ^   CREATE INDEX admin_users_updated_by_id_fk ON product.admin_users USING btree (updated_by_id);
 1   DROP INDEX product.admin_users_updated_by_id_fk;
       product            postgres    false    220                       1259    17209 4   components_product_info_tariffs_component_type_index    INDEX     �   CREATE INDEX components_product_info_tariffs_component_type_index ON product.components_product_info_tariffs_components USING btree (component_type);
 I   DROP INDEX product.components_product_info_tariffs_component_type_index;
       product            postgres    false    247                       1259    17210 )   components_product_info_tariffs_entity_fk    INDEX     �   CREATE INDEX components_product_info_tariffs_entity_fk ON product.components_product_info_tariffs_components USING btree (entity_id);
 >   DROP INDEX product.components_product_info_tariffs_entity_fk;
       product            postgres    false    247                       1259    17208 +   components_product_info_tariffs_field_index    INDEX     �   CREATE INDEX components_product_info_tariffs_field_index ON product.components_product_info_tariffs_components USING btree (field);
 @   DROP INDEX product.components_product_info_tariffs_field_index;
       product            postgres    false    247            �           1259    16815    files_created_by_id_fk    INDEX     R   CREATE INDEX files_created_by_id_fk ON product.files USING btree (created_by_id);
 +   DROP INDEX product.files_created_by_id_fk;
       product            postgres    false    226            	           1259    16874    files_related_morphs_fk    INDEX     \   CREATE INDEX files_related_morphs_fk ON product.files_related_morphs USING btree (file_id);
 ,   DROP INDEX product.files_related_morphs_fk;
       product            postgres    false    237            �           1259    16816    files_updated_by_id_fk    INDEX     R   CREATE INDEX files_updated_by_id_fk ON product.files USING btree (updated_by_id);
 +   DROP INDEX product.files_updated_by_id_fk;
       product            postgres    false    226                       1259    16857    i18n_locale_created_by_id_fk    INDEX     ^   CREATE INDEX i18n_locale_created_by_id_fk ON product.i18n_locale USING btree (created_by_id);
 1   DROP INDEX product.i18n_locale_created_by_id_fk;
       product            postgres    false    234                       1259    16858    i18n_locale_updated_by_id_fk    INDEX     ^   CREATE INDEX i18n_locale_updated_by_id_fk ON product.i18n_locale USING btree (updated_by_id);
 1   DROP INDEX product.i18n_locale_updated_by_id_fk;
       product            postgres    false    234                       1259    17235    products_component_type_index    INDEX     h   CREATE INDEX products_component_type_index ON product.products_components USING btree (component_type);
 2   DROP INDEX product.products_component_type_index;
       product            postgres    false    249                       1259    17029    products_created_by_id_fk    INDEX     X   CREATE INDEX products_created_by_id_fk ON product.products USING btree (created_by_id);
 .   DROP INDEX product.products_created_by_id_fk;
       product            postgres    false    241                       1259    17236    products_entity_fk    INDEX     X   CREATE INDEX products_entity_fk ON product.products_components USING btree (entity_id);
 '   DROP INDEX product.products_entity_fk;
       product            postgres    false    249                       1259    17234    products_field_index    INDEX     V   CREATE INDEX products_field_index ON product.products_components USING btree (field);
 )   DROP INDEX product.products_field_index;
       product            postgres    false    249                       1259    17030    products_updated_by_id_fk    INDEX     X   CREATE INDEX products_updated_by_id_fk ON product.products USING btree (updated_by_id);
 .   DROP INDEX product.products_updated_by_id_fk;
       product            postgres    false    241            �           1259    16804 "   strapi_api_tokens_created_by_id_fk    INDEX     j   CREATE INDEX strapi_api_tokens_created_by_id_fk ON product.strapi_api_tokens USING btree (created_by_id);
 7   DROP INDEX product.strapi_api_tokens_created_by_id_fk;
       product            postgres    false    224            �           1259    16805 "   strapi_api_tokens_updated_by_id_fk    INDEX     j   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON product.strapi_api_tokens USING btree (updated_by_id);
 7   DROP INDEX product.strapi_api_tokens_updated_by_id_fk;
       product            postgres    false    224            �           1259    16824    up_permissions_created_by_id_fk    INDEX     d   CREATE INDEX up_permissions_created_by_id_fk ON product.up_permissions USING btree (created_by_id);
 4   DROP INDEX product.up_permissions_created_by_id_fk;
       product            postgres    false    228            
           1259    16878    up_permissions_role_links_fk    INDEX     l   CREATE INDEX up_permissions_role_links_fk ON product.up_permissions_role_links USING btree (permission_id);
 1   DROP INDEX product.up_permissions_role_links_fk;
       product            postgres    false    238                       1259    16879     up_permissions_role_links_inv_fk    INDEX     j   CREATE INDEX up_permissions_role_links_inv_fk ON product.up_permissions_role_links USING btree (role_id);
 5   DROP INDEX product.up_permissions_role_links_inv_fk;
       product            postgres    false    238            �           1259    16825    up_permissions_updated_by_id_fk    INDEX     d   CREATE INDEX up_permissions_updated_by_id_fk ON product.up_permissions USING btree (updated_by_id);
 4   DROP INDEX product.up_permissions_updated_by_id_fk;
       product            postgres    false    228            �           1259    16835    up_roles_created_by_id_fk    INDEX     X   CREATE INDEX up_roles_created_by_id_fk ON product.up_roles USING btree (created_by_id);
 .   DROP INDEX product.up_roles_created_by_id_fk;
       product            postgres    false    230            �           1259    16836    up_roles_updated_by_id_fk    INDEX     X   CREATE INDEX up_roles_updated_by_id_fk ON product.up_roles USING btree (updated_by_id);
 .   DROP INDEX product.up_roles_updated_by_id_fk;
       product            postgres    false    230            �           1259    16846    up_users_created_by_id_fk    INDEX     X   CREATE INDEX up_users_created_by_id_fk ON product.up_users USING btree (created_by_id);
 .   DROP INDEX product.up_users_created_by_id_fk;
       product            postgres    false    232                       1259    16883    up_users_role_links_fk    INDEX     Z   CREATE INDEX up_users_role_links_fk ON product.up_users_role_links USING btree (user_id);
 +   DROP INDEX product.up_users_role_links_fk;
       product            postgres    false    239                       1259    16884    up_users_role_links_inv_fk    INDEX     ^   CREATE INDEX up_users_role_links_inv_fk ON product.up_users_role_links USING btree (role_id);
 /   DROP INDEX product.up_users_role_links_inv_fk;
       product            postgres    false    239                        1259    16847    up_users_updated_by_id_fk    INDEX     X   CREATE INDEX up_users_updated_by_id_fk ON product.up_users USING btree (updated_by_id);
 .   DROP INDEX product.up_users_updated_by_id_fk;
       product            postgres    false    232                        2606    16885 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 _   ALTER TABLE ONLY product.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       product          postgres    false    218    220    3303            2           2606    16975 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES product.admin_permissions(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY product.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       product          postgres    false    235    218    3299            3           2606    16980 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES product.admin_roles(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY product.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       product          postgres    false    222    235    3307            !           2606    16890 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 _   ALTER TABLE ONLY product.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       product          postgres    false    218    220    3303            $           2606    16905 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY product.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       product          postgres    false    220    222    3303            %           2606    16910 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY product.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       product          postgres    false    3303    222    220            "           2606    16895 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY product.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       product          postgres    false    220    220    3303            4           2606    16985 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES product.admin_users(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY product.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       product          postgres    false    236    220    3303            5           2606    16990 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES product.admin_roles(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY product.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       product          postgres    false    222    236    3307            #           2606    16900 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY product.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       product          postgres    false    220    3303    220            =           2606    17211 T   components_product_info_tariffs_components components_product_info_tariffs_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.components_product_info_tariffs_components
    ADD CONSTRAINT components_product_info_tariffs_entity_fk FOREIGN KEY (entity_id) REFERENCES product.components_product_info_tariffs(id) ON DELETE CASCADE;
    ALTER TABLE ONLY product.components_product_info_tariffs_components DROP CONSTRAINT components_product_info_tariffs_entity_fk;
       product          postgres    false    243    247    3347            (           2606    16925    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 G   ALTER TABLE ONLY product.files DROP CONSTRAINT files_created_by_id_fk;
       product          postgres    false    3303    226    220            6           2606    16995 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES product.files(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY product.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       product          postgres    false    3315    226    237            )           2606    16930    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 G   ALTER TABLE ONLY product.files DROP CONSTRAINT files_updated_by_id_fk;
       product          postgres    false    220    226    3303            0           2606    16965 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY product.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       product          postgres    false    220    234    3303            1           2606    16970 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 S   ALTER TABLE ONLY product.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       product          postgres    false    3303    234    220            ;           2606    17031 "   products products_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.products
    ADD CONSTRAINT products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY product.products DROP CONSTRAINT products_created_by_id_fk;
       product          postgres    false    3303    241    220            >           2606    17237 &   products_components products_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.products_components
    ADD CONSTRAINT products_entity_fk FOREIGN KEY (entity_id) REFERENCES product.products(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY product.products_components DROP CONSTRAINT products_entity_fk;
       product          postgres    false    3344    249    241            <           2606    17036 "   products products_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.products
    ADD CONSTRAINT products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY product.products DROP CONSTRAINT products_updated_by_id_fk;
       product          postgres    false    220    3303    241            &           2606    16915 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 _   ALTER TABLE ONLY product.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       product          postgres    false    224    3303    220            '           2606    16920 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 _   ALTER TABLE ONLY product.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       product          postgres    false    220    224    3303            *           2606    16935 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY product.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       product          postgres    false    220    228    3303            7           2606    17000 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES product.up_permissions(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY product.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       product          postgres    false    228    3319    238            8           2606    17005 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES product.up_roles(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY product.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       product          postgres    false    3323    230    238            +           2606    16940 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY product.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       product          postgres    false    228    220    3303            ,           2606    16945 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY product.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       product          postgres    false    220    230    3303            -           2606    16950 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY product.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       product          postgres    false    230    220    3303            .           2606    16955 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY product.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       product          postgres    false    3303    220    232            9           2606    17010 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES product.up_users(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY product.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       product          postgres    false    239    232    3327            :           2606    17015 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES product.up_roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY product.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       product          postgres    false    230    3323    239            /           2606    16960 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY product.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES product.admin_users(id) ON DELETE SET NULL;
 M   ALTER TABLE ONLY product.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       product          postgres    false    220    232    3303            �   �  x��X]o�8}NE���1�#F��o�Q���0⣙j��}M�=I�����a�y�Bo�s�9��v�i��U�Y64���JQl�>m~����eQ�ċ�cg4�H�Ǆ�q�ŧO�5��:�w~n�{��NC0~B' ��t�O�@/��_���Vi��w�T�~� �'����[QT�T������a��?b1L`քe���Vc��~�u���	?>h;K���:�\׽�{��x��/���<L�7�d�y�l+�uJ�F_��ؾ(Y�6{��#�����ǭ��*Ǉ��o�����,��b|n�Y��S����5���J��:(��{.u�?=����/�	���M�0Z��X��
)�#S�#C���TL��@#Im#	��,%B�o���-���_K�������uh����a�#�@%��b�5�e)�т�����\��7X�F�&r�W�w=�+����c|bMf��¼�A�����e����sHs�7���:�r��Ӟi6!���A�	5����z����0{1.g��࡭n,s@'��CeA�a�ۻ'g"@�����Zc�D�%٢��*b=@���UTZ���8�'�t�h�	+DЂ�Hp�ȎM�t�X�\$DQ�:!���D7Ȏ���eՔ�
�:�����F��lez�Po��e��S����
��ĭp�:'v&�o�^�����D�;������NK�,B�Da@`�!]G��h��і���Z�v/{��9J�,�9K�%��J:����,�H�I��&]o�5��םf)�4��U�=r�ŀ�����0B�p5v��,*�k��YL�^��0*?��O�>v��@�Ƕ�M�_�"�2�%\z����i�m���)��q;�*���R�����)$�U��KL�����{F/1Q�&�XL�Xd��D��~�1@
� 3����u��[[�/ �$�K�q�4Ni��&��ƈ����pg��UC����2w�Ȩь����%�|r}�����^QT�M��S/Z�����/��Bvy���&�<\���]�r���v�� �N7^6`F_�kZ�yT�J������|��:D7��[w���S�n���3g:Gv��7j��#4��,|w	2[�����үt)��'���ԑ�8��r�}?9��?<<�Ũ?�      �   }   x�%ϱ�0��.���z��:nM�����{�Uoϳw���:�k.��"���"wGA!�B!�Ba�Fa�FaDADADA��(D!
Q�Bb�W�������s�w�(�      �   �   x�u��n� @g���l�R�]�t�r�K�������E����{H���JE�؇�%��Z�Q����1�Ah1z�x'�u���H�3�8�N�^�[��t>��q�&=V�|ͫ���:	��2X*u�m�{u��	^���fM6�,�	��,��)֢*MGҨ.)��N�2�/)���}��2������ʋ~yB�}�      �   �   x�3�tL�������L���^Q)��Q����J�~z�k��I���Ey��YvDz�^�oi�KdNQ��^F^@hN�Q�srY��aq��wU`*�8 *�LQFFF�ƺF�
�fV&V��zF�Pa]CCs+SK+cc=3KS�^�=... Za)�      �      x�3�4����� ]      �   �   x�U�K�0��)P�;�-gaSP>R)�
qw*�
��<�o��E�|� ��ܮ��1���C��HAJ�ڀP��\.
���e�8\�A��3���_���g�3��;�![\��oW��(��p��u���?���^>�R��٭E� A�Y      �   B  x��TAn�0<�_�����G��c.�ඇ�RHOI�^�l�B4R�fƻ��������N���U�%������gQe���FQ1b�%��-Ue]Qߵ�X���D�%t�F$�B�B��ќ՚�քzE@	>���ڮN�l�����^l
+�0E8����s��<�-ܔF���j��X-�o=�~��V���Z��aYbY˲#�x:\� 1�F��bYdYͲ��BP����\�q��I�{@ٮ�j�OQ��;b��4F6���,Y�B�z٬ɭ}6.���aw>�v7A����&�Jo�|��(�G���'!�o�J@      �     x���An�0��_�KJ��R Z�%)R��/���$�0���a�V�|=?�ߏ���?���u���O��a����˼y��6ʂ|�(4��]�5*�C����1��D�	�?V�"Ƅա�1����	]UL͑�$`B���	�Z&�j	6b�%h��ƠZNL���a��%�4K��:��%��,AK�1ԽeS��9��޲S��c���1�T���j�Z�뛅������Г�6��m,���o���/zㇵ      �      x������ � �      �      x������ � �      �   <   x�3�t�K��,�P�H���L��4202�50�52W04�21�26�357�)�D\1z\\\ �uE      �   �  x��V[n�0��O!����%��G�!��%��$���@���=R)˱R,`�?�`g5Z.g��5��~4�D2	�R^	}����>�T��<G���/��_�e�\g*P���2Ӹ������֏u��.������/�z���~Y5���z�=7���ö�]�]��\����_�/���������{�Od?	���ڃXǾ�-+� ��P^;�T
���6O��T������^�j�{m�F�T��ÉXS��Rmą��HT�-�8MZ��	W��h��A��~80S�=�-�\Wģ6�aR����4KE<�+ֵI�j���?��e���a����Z�"�0��4ܑ*��{P���l4E<jc�mT`p�6'<jc�.-s����"�����:�g:����?e^x�"�4��-�"��]���;�UN�,W@E<���Es�����j�;�77��⤦��/��Դ���m���]T�j�QWi�bX��i��8��@F���h���CK/-�l'�8���r��b����!�By�f���[�-���q7/{q2��j]��f��ǰ��b��)n�wfޘ\b0�]�؇�%`�&�5L-�{#l�~2\�� ����l�"�5�!p�����Lbb�INm�2L4��0Ӹ�)]^:i�OZ�&S�{ ��J���b��bu&v���?���      �   �   x���;n1D��]lH��s7F��ā��?��k*5�䛕�a4�������u�������>��,cm�IQ�UH'i��q���k���:L �a�1!:a1�^H`�E�XH�eBbMP�7ִ	�{LaʼŚ^��9�e��pɾ6��}l�-��c1��,�`>��	|fS��"�y��y���k!��d�4K�{lF��N��>SyC*�Juk5���˹����w\      �      x������ � �      �      x��]{��6�{�)\�o�ɦm��h{���^sI�lp8$�AK�ͮ,�zx��k�׻Or$ŧ4��v�@@�֐�!9�!9��eq5'�$L�'�d�4�9�=#�*G%I5�\g���Bђ$WWΗ�(h��AE��*hQ���eI�y\}�U|��1�ʼ�����%��'Fy�0�dT���O����y�D$������u��*._�y���Ax�G8����6�.Q�J��b�pDJ�/%Ƥ`1��֡tH���տ7��hX3S,��0'Y].���x�Ƶx����h�q2ZiK�X�HXT��pXB"JR2j�>BfyJU�$���4�}�j�7����������>(W*(�A�C^����y�~�%����6�-q �-��Q�0Ǩ��SPk5q'���l]����U�e��^d5�o��1@�*��ּ��P�E�-�����p�����������������\�4��红m�5�?�J�*�J��l�R����s�߃/qoU��cc�zui3�%�e۫9hw��tۀZۂ�L�>���-���!���)�.��T�>�4��ȉ�~Ɛ�5�	%g�X�m�G����K����șc�/E����a"P���f�z1��j���D�P?}h���R<��iڝ��!���k��c�ɚp�a�`9�����(I}�������3���J�����Q���F��!>�p،@'���+,.��؊gZ��D ���[u�ۄ�j�[�*�� �bn��	t����İVA=7b��IH9Z������l���Z���;"�{
�]�go��Qg�F�l�y?�(��lV�mMr���}�`(Q�Jh�s,>��	����#wB�^@^�j�s�pp�w�� h9k����B���y%x .�a�Ng��!�e�d����apk'��>:�����?�CD���-�E�+^�n��ϙ��>��N��
�up ;a��ȗ*ܪji��<���u���,NQ4����7 m�'�����5���f�^�Ն�!�#��^VjhvK�r�X�Pr�o��|λ��!�b�u���KT��/I���O��[b-PN3�� ֌���`��˚�-xI`h���M0��T�HSb�{�Q�{�H9x"��rb�{���xE��X>���y�f��"�90˫����%��"�D(]�B}Jn�2�A���[� �Е��#\jqP�
pL���hxg(AK����SL���b�).���@��)�� [F�N3��a6��xal=���j�½.�\��s��4��Ax�يI҃pX�m�.�ة}Fl��/���*k��1漟��X��}�E�Y�
Y^�h���bS�\𳠋"\���/.IAgm����4�y��s��/ԣ@t�B 2{dO7?i�˰!��V$���q�2'Ӫ�Ӳ4��{�bڿ����g8��m�Kοv�������,SJ(�q/� v�W�
�����ld7�+�{���F��`��g"���J���s�[Q�#�l�)Q>�e`�v4QN4��$5�Z��E���4M���)��#;���z�(Z�)I��BYNVT.�O��-&��$�}i���7�'�&��(��ȩ�,bN#_�M�v�)���b	z�:x�q/��PI��q:E�/��S���n�)3)����7rV(�Ʋ?��dYgx�ff]�i�F���+�7{Y�yu��敓-�=9��!��LA5�{�;Z �m�3�h�Hiݩ9�Ǆ/h4�	��fܒ؋�yYA0��>����l�Z���^��O��M��6�y;��W��n����:���5+m������(r�Y��|��>m�u�rC��օ���%��Ds��@-�"6���c;��b"-�VW)-�~%���oA�<Am��[��{5���Hm�Pҍq3e�ŷ0�%�2a�rN�0dӺS�{�<ԁ��ͬU�7����ƍp�Q���!�
���Z߻C���L�!� �����iFF���e���(��m�&���&z��}gľ|��"� K�%Υj�_����"Mb�׳*�/���|�65�M���1�k��#��>}��J�J�Ǧ�8��v{f������g��yUa9��Ap_��D�ʚG�k�<^W��I��2� �Ѭ|�D/�iLؕuLݰ1o�h)�-�~�&ڗ,�u�ѐ�f�u�.3
�	�"Ψ#0s�4Uuָf��fń������u�bn����`��`������!l���c@�K]04f$&3��z�|�f;�#t(��Cli��b����9��/�����.�e�*����8�ݝ��hc^&��`��ܚG��w,����J�Lܯ)ywPz-�%�����}��m_���yn�V�+j>s���ub���J�l�6�
>D'#��+����@~�?<4���o�Q��c;(~ßq2B_r�u2��ա��D���OhKC�l|&g�u_{|k����z��9�q���!x8)1����vN�v�_5_^ l���14���D7���˯��	67&���C�j�u_���"؉��j&�:� �s����"������+Q�8u1�_?��i��6��/(z��D��r������>8ʡӎt?��<N�;��Eb��{e�5��wZ94R輳�<,�Ҿvvݖ,�cJ"��W��������v��X`����'�xk��o�`��s4��FZ�u�t���_
�E��Y��0,��\i��>)�G�h��>���/{�l��r�eK�i�+���/-��EZ�󜺘R5�|Ml�lGE�.i�11�"q@> � ���G�>7շ���F��Y7^����_l}�r��_zY���^�/��_��w!��Ü*H �����ë��d��ϙ5T�����~�x����\��c��sv�����߹��ך���S��R��@����6�o��#a�"��,����zM&�?9�O�׹��\P�����0�*�W��hlX�H
�|��*��)�_��'��X��*~hc"L�\4�>�0�7|4�{}Nn��>'vSz���|?����]?�el���B=|zK3�������L�T/����ځ���o�ǝ����&��h�>�[xMA%�15���FCxhhxF邴@V緍L����to�'��"I�(���� ��`�RFy�ţ����>�Z,�fI�{��R�h��
�H�8�W5���/rBBQ��li4�X5��&�%%m\�	�.�5CB�)8Y�8�w�#R�ғ��BYDiY�<�ao���]��tY�M�x�����!��*�V	Y�\;h��l��}cF�v��7b�"����.�Ȫ�<Z�y����"�;�\���.)մ�ݺ�.��`�b�����2,I��E:+;ĸ%I���ȡ�:E��)q�[R�"���%v@T��o�)TQ"j*ˎ�t�S�����@�_Zd^u���f��W�t��C��2��bסή^��54,&	�S�tȠ�� ��ʑObRb9�|'\E9���	)���[�j�,R�?���9ӥC^�^�t�l �p'jjK�#
8�\�����!����]����1��ꢤՓr�+�8�f@i����2G)�w�q��rQn"��rw�c�:�����9�3�#31��"w�6�+3.�2c��Ǎ����:	+�d��K#����M���%8V#K��"�Y��{�f�1I��
a�DcM����(#39�Zi}�M�ݿ�hA��hT.P9���(N�G��G��<_�Д���g�<̾{�.��Q�ӧQ���?�-G���g�SF!JFt0i<��q�Rw51x�鈏��Ε�JY~����7���>��ol��[���ů?=�O���(�)��Y�6t&暴s���j�����.��i�UR��Y3�{�gl��\l��!�'����0s��u��H �x�2ƈNV��fD{�f��]���c��5;ZB>K?����IjZޗn�C�
%!��F+O���%�s�T�\���+�r��IM;f��P5Z0"�LV�K���z�ͱ�Aq�_�����Ǿ{��i�zŘ������^F��fw��ϭfRos؛�͇G�^vv�o�k����M����|�U%�ށ���]��{�o��� %  �)�l�J�mmhe��m��5a��`κ��<pv�V3����\����iz��
�'��@��p7���E�M�� �d�hS@��+�L�ҳ�Y&H�$�)ޟ�����noKR؊�f��D�������c>t[{׏/�-vE��F����&x�.��;^�?ȲZN���Ek1q����}t�ٔO��ܑWQz�"�B]��%jN{�����Dc���ֹ�0���뿔��D��;]�� �l��
�vM�vX��Ӥݸ!V~��2Y`Mh[I�jC)�J,�8t��n�����+�͖      �     x��\Ks�:^'������N�6�uҮ�馹�{;�!1B8q;��068�<�&.�6��p�ӧs�`zq���t�!�f������Y�V�gĖ
H���Ak&�5��p�1��9�ܨ�-�WX��%=���9�Sz�'�[�Bǚ�Zl}�<���L��"-�4��VZ3r>���ߣ_bO7R#+Adk�R��hg�֙�(����Z��D[���!d4<�L�ťX$jo(1��SR�݁iF�E����p}��R��ׁ���K��K�� 3uH1����'��X0��s)9P�-F��1A|P&�>J����T�C�k���[y�Z{�V�A�N����HSa�t���R��a�s�y��0�@)k�ɴl��3p��3?�ܾ��ϷoVwAw��aj��m`�M���F�G|%���0����a:�hF�As�+�fɤ�CA���_;}��Ũ�fWՐ��!R��Q'��!7(4,@�y���)F�d�ȼ[�8J�@Kz�����§t�@O��]���?r�o#�l�Q�Qg%R9�6D�7�Z"Z��d�`��*�񭱀���*���R��ʜK�%��g(	�8�S���Cq�I��J��D�e���ma�~a��&��-T��b>vY;��)�l�p�K��#T[3&ܢ��h������2聂_6Eb�RQۆ  țzџ2��J:������՘�w
�bs3�0I�,ā��s� �x;��H��1lw�jĭ.;�F�4����(��L>5n S���x�!^b&)���=����tLO���R���F�GQ��,i���d ywP�WN�Ms噁�x4��ƉX1x �f�9	��m4�h��ؐ��cl�Q.m��pV�0���:��Ќ���ӌ���s4��)�_�W�ޗ1��gj���6�a2a�pO��Vtu�tUr�g�چ��=�c�2-�z�M�UV�sB���mkV��⅙GȬ:\�8��
},c��m[
�Ż�܆H�!�T��6�0Ǟ�kKϗ"�]��"L��h���U�g'�
3�����8,�e(p7U}PL"po�~��G�$�#\}d^��lA\��#-�x���P�h�WQH9��C�V��MS�ŏxa$B��?R	�=Q��3��O���0�*�J�e��o�uƱe� W��|�q�����ԍ�ȵ��!�S��A�8����E�t����b�I�}U!�l;7����f��\��v�f��wY�a��]�!��~$�[޸�Sj��r��KTk�$�^ ����Ņj-����QW�g�Y|�P�z�/;����c&`��ձ�!x��'�'��,=�/Y&�P��u5m�C�����&����c�/�|�m*덣����:L�4c����Ѥ�|�0��N����n��|�֪*=���}h��z�D�� �����E��Gm��"U�Z�'�7�r�r�P��̋�f~>�M�������ɇ7����z6�~7��<���p����{�^^���;��0�k�^ٗ���;??��ʱb      �      x������ � �      �      x������ � �      �     x����n� �����k����i/��%U$���}٬�t�R�L |	�?���6i#����*�h��j<�[x��j��C �
A{�L�DT7������?�W��in��|���J��+�C=?�;5i���S����
i�֭������W[Abq̚6�we�V��km���
�>�B�M�CL�_���=�Tx��vm�?Q~}�aƛ$��uY�2�IG�*�ǟ����&$�.�Gⷸ���me�v<�o�3.����33      �   0   x�ɻ  ��(���B�/Y!7KX�:��0��(C4���|�      �   �   x�u�A
�0E��)�	�i�`v�����u�@H�&=��](��W���Cq�����1���BM�)1������ųL�!R�Q� ;�ߠ�����I�\/)�;Қ����d�ح�U� D��N���q�R�7�@D�      �      x������ � �      �      x������ � �     