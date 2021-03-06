PGDMP     $                    x            postgres    10.13    10.13 �    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            W           1262    12938    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE postgres;
             postgres    false            X           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    3159                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            Y           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            Z           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            [           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            �            1259    74595 	   age_group    TABLE     Z  CREATE TABLE public.age_group (
    age_group_id integer NOT NULL,
    token character varying(80),
    age_group character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.age_group;
       public         postgres    false    4            �            1259    74593    age_group_age_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.age_group_age_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.age_group_age_group_id_seq;
       public       postgres    false    218    4            \           0    0    age_group_age_group_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.age_group_age_group_id_seq OWNED BY public.age_group.age_group_id;
            public       postgres    false    217            �            1259    74601    age_group_version    TABLE     �  CREATE TABLE public.age_group_version (
    age_group_id integer NOT NULL,
    token character varying(80),
    age_group character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 %   DROP TABLE public.age_group_version;
       public         postgres    false    4            �            1259    74551    brandcategory    TABLE     �  CREATE TABLE public.brandcategory (
    category_id integer NOT NULL,
    token character varying(80),
    category_name character varying(255),
    logo character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
 !   DROP TABLE public.brandcategory;
       public         postgres    false    4            �            1259    74549    brandcategory_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brandcategory_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.brandcategory_category_id_seq;
       public       postgres    false    4    213            ]           0    0    brandcategory_category_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.brandcategory_category_id_seq OWNED BY public.brandcategory.category_id;
            public       postgres    false    212            �            1259    74560    brandcategory_version    TABLE     �  CREATE TABLE public.brandcategory_version (
    category_id integer NOT NULL,
    token character varying(80),
    category_name character varying(255),
    logo character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 )   DROP TABLE public.brandcategory_version;
       public         postgres    false    4            �            1259    74702    brands    TABLE     �  CREATE TABLE public.brands (
    brand_id integer NOT NULL,
    token character varying(80),
    brand_name character varying(255),
    user_id integer,
    industry_id integer,
    brand_category_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.brands;
       public         postgres    false    4            �            1259    74700    brands_brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.brands_brand_id_seq;
       public       postgres    false    237    4            ^           0    0    brands_brand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.brands_brand_id_seq OWNED BY public.brands.brand_id;
            public       postgres    false    236            �            1259    74503    brands_version    TABLE       CREATE TABLE public.brands_version (
    brand_id integer NOT NULL,
    token character varying(80),
    brand_name character varying(255),
    user_id integer,
    industry_id integer,
    brand_category_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 "   DROP TABLE public.brands_version;
       public         postgres    false    4            �            1259    74778    campaign    TABLE     �  CREATE TABLE public.campaign (
    campaign_id integer NOT NULL,
    token character varying(80),
    campaign_name character varying(255),
    description character varying(255),
    brand_id integer,
    product_ids character varying(255),
    currency_id integer,
    budget_amount integer,
    objective_id integer,
    kpi_id integer,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    days integer,
    target_locations character varying(255),
    exclude_locations character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.campaign;
       public         postgres    false    4            �            1259    74776    campaign_campaign_id_seq    SEQUENCE     �   CREATE SEQUENCE public.campaign_campaign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.campaign_campaign_id_seq;
       public       postgres    false    4    245            _           0    0    campaign_campaign_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.campaign_campaign_id_seq OWNED BY public.campaign.campaign_id;
            public       postgres    false    244            �            1259    74793    campaign_version    TABLE     X  CREATE TABLE public.campaign_version (
    campaign_id integer NOT NULL,
    token character varying(80),
    campaign_name character varying(255),
    description character varying(255),
    brand_id integer,
    product_ids character varying(255),
    currency_id integer,
    budget_amount integer,
    objective_id integer,
    kpi_id integer,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    days integer,
    target_locations character varying(255),
    exclude_locations character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 $   DROP TABLE public.campaign_version;
       public         postgres    false    4            �            1259    74659 	   education    TABLE     _  CREATE TABLE public.education (
    education_id integer NOT NULL,
    token character varying(80),
    education_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.education;
       public         postgres    false    4            �            1259    74657    education_education_id_seq    SEQUENCE     �   CREATE SEQUENCE public.education_education_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.education_education_id_seq;
       public       postgres    false    4    230            `           0    0    education_education_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.education_education_id_seq OWNED BY public.education.education_id;
            public       postgres    false    229            �            1259    74665    education_version    TABLE     �  CREATE TABLE public.education_version (
    education_id integer NOT NULL,
    token character varying(80),
    education_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 %   DROP TABLE public.education_version;
       public         postgres    false    4            �            1259    74611    gender    TABLE     V  CREATE TABLE public.gender (
    gender_id integer NOT NULL,
    token character varying(80),
    gender_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.gender;
       public         postgres    false    4            �            1259    74609    gender_gender_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gender_gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.gender_gender_id_seq;
       public       postgres    false    221    4            a           0    0    gender_gender_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.gender_gender_id_seq OWNED BY public.gender.gender_id;
            public       postgres    false    220            �            1259    74617    gender_version    TABLE     �  CREATE TABLE public.gender_version (
    gender_id integer NOT NULL,
    token character varying(80),
    gender_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 "   DROP TABLE public.gender_version;
       public         postgres    false    4            �            1259    74489    industry    TABLE     \  CREATE TABLE public.industry (
    industry_id integer NOT NULL,
    token character varying(80),
    industry_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.industry;
       public         postgres    false    4            �            1259    74487    industry_industry_id_seq    SEQUENCE     �   CREATE SEQUENCE public.industry_industry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.industry_industry_id_seq;
       public       postgres    false    203    4            b           0    0    industry_industry_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.industry_industry_id_seq OWNED BY public.industry.industry_id;
            public       postgres    false    202            �            1259    74495    industry_version    TABLE     �  CREATE TABLE public.industry_version (
    industry_id integer NOT NULL,
    token character varying(80),
    industry_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 $   DROP TABLE public.industry_version;
       public         postgres    false    4            �            1259    74627    language    TABLE     \  CREATE TABLE public.language (
    language_id integer NOT NULL,
    token character varying(80),
    language_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.language;
       public         postgres    false    4            �            1259    74625    language_language_id_seq    SEQUENCE     �   CREATE SEQUENCE public.language_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.language_language_id_seq;
       public       postgres    false    224    4            c           0    0    language_language_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.language_language_id_seq OWNED BY public.language.language_id;
            public       postgres    false    223            �            1259    74633    language_version    TABLE     �  CREATE TABLE public.language_version (
    language_id integer NOT NULL,
    token character varying(80),
    language_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 $   DROP TABLE public.language_version;
       public         postgres    false    4            �            1259    74643    nationality    TABLE     e  CREATE TABLE public.nationality (
    nationality_id integer NOT NULL,
    token character varying(80),
    nationality_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.nationality;
       public         postgres    false    4            �            1259    74641    nationality_nationality_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nationality_nationality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.nationality_nationality_id_seq;
       public       postgres    false    4    227            d           0    0    nationality_nationality_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.nationality_nationality_id_seq OWNED BY public.nationality.nationality_id;
            public       postgres    false    226            �            1259    74649    nationality_version    TABLE     �  CREATE TABLE public.nationality_version (
    nationality_id integer NOT NULL,
    token character varying(80),
    nationality_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 '   DROP TABLE public.nationality_version;
       public         postgres    false    4            �            1259    74675 
   occupation    TABLE     b  CREATE TABLE public.occupation (
    occupation_id integer NOT NULL,
    token character varying(80),
    occupation_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.occupation;
       public         postgres    false    4            �            1259    74673    occupation_occupation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.occupation_occupation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.occupation_occupation_id_seq;
       public       postgres    false    233    4            e           0    0    occupation_occupation_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.occupation_occupation_id_seq OWNED BY public.occupation.occupation_id;
            public       postgres    false    232            �            1259    74681    occupation_version    TABLE     �  CREATE TABLE public.occupation_version (
    occupation_id integer NOT NULL,
    token character varying(80),
    occupation_name character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 &   DROP TABLE public.occupation_version;
       public         postgres    false    4            �            1259    74736    products    TABLE     �  CREATE TABLE public.products (
    product_id integer NOT NULL,
    token character varying(80),
    product_name character varying(255),
    logo character varying(255),
    brand_id integer,
    category_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.products;
       public         postgres    false    4            �            1259    74734    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public       postgres    false    4    241            f           0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;
            public       postgres    false    240            �            1259    74571    products_version    TABLE       CREATE TABLE public.products_version (
    product_id integer NOT NULL,
    token character varying(80),
    product_name character varying(255),
    logo character varying(255),
    brand_id integer,
    category_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 $   DROP TABLE public.products_version;
       public         postgres    false    4            �            1259    74757    service    TABLE     �  CREATE TABLE public.service (
    service_id integer NOT NULL,
    token character varying(80),
    service_name character varying(255),
    logo character varying(255),
    brand_id integer,
    category_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.service;
       public         postgres    false    4            �            1259    74755    service_service_id_seq    SEQUENCE     �   CREATE SEQUENCE public.service_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.service_service_id_seq;
       public       postgres    false    243    4            g           0    0    service_service_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.service_service_id_seq OWNED BY public.service.service_id;
            public       postgres    false    242            �            1259    74582    service_version    TABLE       CREATE TABLE public.service_version (
    service_id integer NOT NULL,
    token character varying(80),
    service_name character varying(255),
    logo character varying(255),
    brand_id integer,
    category_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 #   DROP TABLE public.service_version;
       public         postgres    false    4            �            1259    74715    target_audience_profile    TABLE     �  CREATE TABLE public.target_audience_profile (
    target_audience_profile_id integer NOT NULL,
    token character varying(80),
    audience_profile_name character varying(255),
    business character varying(255),
    age_group_id integer,
    gender_id integer,
    target_languages character varying(255),
    target_nationality character varying(255),
    target_education character varying(255),
    target_occupation character varying(255),
    target_interest character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
 +   DROP TABLE public.target_audience_profile;
       public         postgres    false    4            �            1259    74713 6   target_audience_profile_target_audience_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.target_audience_profile_target_audience_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.target_audience_profile_target_audience_profile_id_seq;
       public       postgres    false    4    239            h           0    0 6   target_audience_profile_target_audience_profile_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.target_audience_profile_target_audience_profile_id_seq OWNED BY public.target_audience_profile.target_audience_profile_id;
            public       postgres    false    238            �            1259    74689    target_audience_profile_version    TABLE     ,  CREATE TABLE public.target_audience_profile_version (
    target_audience_profile_id integer NOT NULL,
    token character varying(80),
    audience_profile_name character varying(255),
    business character varying(255),
    age_group_id integer,
    gender_id integer,
    target_languages character varying(255),
    target_nationality character varying(255),
    target_education character varying(255),
    target_occupation character varying(255),
    target_interest character varying(255),
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 3   DROP TABLE public.target_audience_profile_version;
       public         postgres    false    4            �            1259    74482    transaction    TABLE     �   CREATE TABLE public.transaction (
    issued_at timestamp without time zone,
    id bigint NOT NULL,
    remote_addr character varying(50)
);
    DROP TABLE public.transaction;
       public         postgres    false    4            �            1259    74480    transaction_id_seq    SEQUENCE     {   CREATE SEQUENCE public.transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.transaction_id_seq;
       public       postgres    false    4            �            1259    74535 	   userlevel    TABLE     u  CREATE TABLE public.userlevel (
    userlevel_id integer NOT NULL,
    token character varying(80),
    level_name character varying(255),
    user_type_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.userlevel;
       public         postgres    false    4            �            1259    74533    userlevel_userlevel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userlevel_userlevel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.userlevel_userlevel_id_seq;
       public       postgres    false    4    210            i           0    0    userlevel_userlevel_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.userlevel_userlevel_id_seq OWNED BY public.userlevel.userlevel_id;
            public       postgres    false    209            �            1259    74541    userlevel_version    TABLE     �  CREATE TABLE public.userlevel_version (
    userlevel_id integer NOT NULL,
    token character varying(80),
    level_name character varying(255),
    user_type_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 %   DROP TABLE public.userlevel_version;
       public         postgres    false    4            �            1259    74513    userpermissions    TABLE     �  CREATE TABLE public.userpermissions (
    permission_id integer NOT NULL,
    token character varying(80),
    section_name character varying(255),
    feature_name character varying(255),
    user_type_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
 #   DROP TABLE public.userpermissions;
       public         postgres    false    4            �            1259    74511 !   userpermissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userpermissions_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.userpermissions_permission_id_seq;
       public       postgres    false    4    207            j           0    0 !   userpermissions_permission_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.userpermissions_permission_id_seq OWNED BY public.userpermissions.permission_id;
            public       postgres    false    206            �            1259    74522    userpermissions_version    TABLE       CREATE TABLE public.userpermissions_version (
    permission_id integer NOT NULL,
    token character varying(80),
    section_name character varying(255),
    feature_name character varying(255),
    user_type_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 +   DROP TABLE public.userpermissions_version;
       public         postgres    false    4            �            1259    74460    users    TABLE       CREATE TABLE public.users (
    user_id integer NOT NULL,
    token character varying(80),
    email character varying(255),
    password character varying(55),
    user_type_id integer,
    company_name character varying(255),
    first_name character varying(55),
    last_name character varying(55),
    phone character varying(10),
    title character varying(255),
    owner_manager character varying(255),
    yearly_budget integer,
    logo character varying(255),
    city character varying(255),
    country_id integer,
    address character varying(255),
    timezone character varying(255),
    level character varying(255),
    permission character varying(255),
    assigned_brands character varying(255),
    assigned_products character varying(255),
    assigned_services character varying(255),
    parent_user_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone
);
    DROP TABLE public.users;
       public         postgres    false    4            �            1259    74458    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public       postgres    false    4    198            k           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
            public       postgres    false    197            �            1259    74469    users_version    TABLE     �  CREATE TABLE public.users_version (
    user_id integer NOT NULL,
    token character varying(80),
    email character varying(255),
    password character varying(55),
    user_type_id integer,
    company_name character varying(255),
    first_name character varying(55),
    last_name character varying(55),
    phone character varying(10),
    title character varying(255),
    owner_manager character varying(255),
    yearly_budget integer,
    logo character varying(255),
    city character varying(255),
    country_id integer,
    address character varying(255),
    timezone character varying(255),
    level character varying(255),
    permission character varying(255),
    assigned_brands character varying(255),
    assigned_products character varying(255),
    assigned_services character varying(255),
    parent_user_id integer,
    created_by integer,
    created_on timestamp without time zone,
    modified_by integer,
    modified_on timestamp without time zone,
    deleted_by integer,
    deleted_on timestamp without time zone,
    transaction_id bigint NOT NULL,
    end_transaction_id bigint,
    operation_type smallint NOT NULL
);
 !   DROP TABLE public.users_version;
       public         postgres    false    4            "           2604    74598    age_group age_group_id    DEFAULT     �   ALTER TABLE ONLY public.age_group ALTER COLUMN age_group_id SET DEFAULT nextval('public.age_group_age_group_id_seq'::regclass);
 E   ALTER TABLE public.age_group ALTER COLUMN age_group_id DROP DEFAULT;
       public       postgres    false    218    217    218            !           2604    74554    brandcategory category_id    DEFAULT     �   ALTER TABLE ONLY public.brandcategory ALTER COLUMN category_id SET DEFAULT nextval('public.brandcategory_category_id_seq'::regclass);
 H   ALTER TABLE public.brandcategory ALTER COLUMN category_id DROP DEFAULT;
       public       postgres    false    212    213    213            (           2604    74705    brands brand_id    DEFAULT     r   ALTER TABLE ONLY public.brands ALTER COLUMN brand_id SET DEFAULT nextval('public.brands_brand_id_seq'::regclass);
 >   ALTER TABLE public.brands ALTER COLUMN brand_id DROP DEFAULT;
       public       postgres    false    236    237    237            ,           2604    74781    campaign campaign_id    DEFAULT     |   ALTER TABLE ONLY public.campaign ALTER COLUMN campaign_id SET DEFAULT nextval('public.campaign_campaign_id_seq'::regclass);
 C   ALTER TABLE public.campaign ALTER COLUMN campaign_id DROP DEFAULT;
       public       postgres    false    245    244    245            &           2604    74662    education education_id    DEFAULT     �   ALTER TABLE ONLY public.education ALTER COLUMN education_id SET DEFAULT nextval('public.education_education_id_seq'::regclass);
 E   ALTER TABLE public.education ALTER COLUMN education_id DROP DEFAULT;
       public       postgres    false    230    229    230            #           2604    74614    gender gender_id    DEFAULT     t   ALTER TABLE ONLY public.gender ALTER COLUMN gender_id SET DEFAULT nextval('public.gender_gender_id_seq'::regclass);
 ?   ALTER TABLE public.gender ALTER COLUMN gender_id DROP DEFAULT;
       public       postgres    false    220    221    221                       2604    74492    industry industry_id    DEFAULT     |   ALTER TABLE ONLY public.industry ALTER COLUMN industry_id SET DEFAULT nextval('public.industry_industry_id_seq'::regclass);
 C   ALTER TABLE public.industry ALTER COLUMN industry_id DROP DEFAULT;
       public       postgres    false    202    203    203            $           2604    74630    language language_id    DEFAULT     |   ALTER TABLE ONLY public.language ALTER COLUMN language_id SET DEFAULT nextval('public.language_language_id_seq'::regclass);
 C   ALTER TABLE public.language ALTER COLUMN language_id DROP DEFAULT;
       public       postgres    false    223    224    224            %           2604    74646    nationality nationality_id    DEFAULT     �   ALTER TABLE ONLY public.nationality ALTER COLUMN nationality_id SET DEFAULT nextval('public.nationality_nationality_id_seq'::regclass);
 I   ALTER TABLE public.nationality ALTER COLUMN nationality_id DROP DEFAULT;
       public       postgres    false    226    227    227            '           2604    74678    occupation occupation_id    DEFAULT     �   ALTER TABLE ONLY public.occupation ALTER COLUMN occupation_id SET DEFAULT nextval('public.occupation_occupation_id_seq'::regclass);
 G   ALTER TABLE public.occupation ALTER COLUMN occupation_id DROP DEFAULT;
       public       postgres    false    233    232    233            *           2604    74739    products product_id    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN product_id DROP DEFAULT;
       public       postgres    false    240    241    241            +           2604    74760    service service_id    DEFAULT     x   ALTER TABLE ONLY public.service ALTER COLUMN service_id SET DEFAULT nextval('public.service_service_id_seq'::regclass);
 A   ALTER TABLE public.service ALTER COLUMN service_id DROP DEFAULT;
       public       postgres    false    243    242    243            )           2604    74718 2   target_audience_profile target_audience_profile_id    DEFAULT     �   ALTER TABLE ONLY public.target_audience_profile ALTER COLUMN target_audience_profile_id SET DEFAULT nextval('public.target_audience_profile_target_audience_profile_id_seq'::regclass);
 a   ALTER TABLE public.target_audience_profile ALTER COLUMN target_audience_profile_id DROP DEFAULT;
       public       postgres    false    239    238    239                        2604    74538    userlevel userlevel_id    DEFAULT     �   ALTER TABLE ONLY public.userlevel ALTER COLUMN userlevel_id SET DEFAULT nextval('public.userlevel_userlevel_id_seq'::regclass);
 E   ALTER TABLE public.userlevel ALTER COLUMN userlevel_id DROP DEFAULT;
       public       postgres    false    209    210    210                       2604    74516    userpermissions permission_id    DEFAULT     �   ALTER TABLE ONLY public.userpermissions ALTER COLUMN permission_id SET DEFAULT nextval('public.userpermissions_permission_id_seq'::regclass);
 L   ALTER TABLE public.userpermissions ALTER COLUMN permission_id DROP DEFAULT;
       public       postgres    false    206    207    207                       2604    74463    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    197    198    198            5          0    74595 	   age_group 
   TABLE DATA               �   COPY public.age_group (age_group_id, token, age_group, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    218   oR      6          0    74601    age_group_version 
   TABLE DATA               �   COPY public.age_group_version (age_group_id, token, age_group, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    219   �R      0          0    74551    brandcategory 
   TABLE DATA               �   COPY public.brandcategory (category_id, token, category_name, logo, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    213   BS      1          0    74560    brandcategory_version 
   TABLE DATA               �   COPY public.brandcategory_version (category_id, token, category_name, logo, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    214   �S      H          0    74702    brands 
   TABLE DATA               �   COPY public.brands (brand_id, token, brand_name, user_id, industry_id, brand_category_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    237   PT      (          0    74503    brands_version 
   TABLE DATA               �   COPY public.brands_version (brand_id, token, brand_name, user_id, industry_id, brand_category_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    205   �U      P          0    74778    campaign 
   TABLE DATA               &  COPY public.campaign (campaign_id, token, campaign_name, description, brand_id, product_ids, currency_id, budget_amount, objective_id, kpi_id, start_date, end_date, days, target_locations, exclude_locations, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    245   X      Q          0    74793    campaign_version 
   TABLE DATA               b  COPY public.campaign_version (campaign_id, token, campaign_name, description, brand_id, product_ids, currency_id, budget_amount, objective_id, kpi_id, start_date, end_date, days, target_locations, exclude_locations, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    246   �X      A          0    74659 	   education 
   TABLE DATA               �   COPY public.education (education_id, token, education_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    230   �Y      B          0    74665    education_version 
   TABLE DATA               �   COPY public.education_version (education_id, token, education_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    231   +Z      8          0    74611    gender 
   TABLE DATA               �   COPY public.gender (gender_id, token, gender_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    221   �Z      9          0    74617    gender_version 
   TABLE DATA               �   COPY public.gender_version (gender_id, token, gender_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    222   w[      &          0    74489    industry 
   TABLE DATA               �   COPY public.industry (industry_id, token, industry_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    203   U\      '          0    74495    industry_version 
   TABLE DATA               �   COPY public.industry_version (industry_id, token, industry_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    204   �\      ;          0    74627    language 
   TABLE DATA               �   COPY public.language (language_id, token, language_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    224   �]      <          0    74633    language_version 
   TABLE DATA               �   COPY public.language_version (language_id, token, language_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    225   ^      >          0    74643    nationality 
   TABLE DATA               �   COPY public.nationality (nationality_id, token, nationality_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    227   �^      ?          0    74649    nationality_version 
   TABLE DATA               �   COPY public.nationality_version (nationality_id, token, nationality_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    228   
_      D          0    74675 
   occupation 
   TABLE DATA               �   COPY public.occupation (occupation_id, token, occupation_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    233   �_      E          0    74681    occupation_version 
   TABLE DATA               �   COPY public.occupation_version (occupation_id, token, occupation_name, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    234   `      L          0    74736    products 
   TABLE DATA               �   COPY public.products (product_id, token, product_name, logo, brand_id, category_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    241   �`      2          0    74571    products_version 
   TABLE DATA               �   COPY public.products_version (product_id, token, product_name, logo, brand_id, category_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    215   Ga      N          0    74757    service 
   TABLE DATA               �   COPY public.service (service_id, token, service_name, logo, brand_id, category_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    243   b      3          0    74582    service_version 
   TABLE DATA               �   COPY public.service_version (service_id, token, service_name, logo, brand_id, category_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    216   �b      J          0    74715    target_audience_profile 
   TABLE DATA               4  COPY public.target_audience_profile (target_audience_profile_id, token, audience_profile_name, business, age_group_id, gender_id, target_languages, target_nationality, target_education, target_occupation, target_interest, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    239   )c      F          0    74689    target_audience_profile_version 
   TABLE DATA               p  COPY public.target_audience_profile_version (target_audience_profile_id, token, audience_profile_name, business, age_group_id, gender_id, target_languages, target_nationality, target_education, target_occupation, target_interest, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    235   �c      $          0    74482    transaction 
   TABLE DATA               A   COPY public.transaction (issued_at, id, remote_addr) FROM stdin;
    public       postgres    false    201   Sd      -          0    74535 	   userlevel 
   TABLE DATA               �   COPY public.userlevel (userlevel_id, token, level_name, user_type_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    210   >g      .          0    74541    userlevel_version 
   TABLE DATA               �   COPY public.userlevel_version (userlevel_id, token, level_name, user_type_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    211   �g      *          0    74513    userpermissions 
   TABLE DATA               �   COPY public.userpermissions (permission_id, token, section_name, feature_name, user_type_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    207   <h      +          0    74522    userpermissions_version 
   TABLE DATA               �   COPY public.userpermissions_version (permission_id, token, section_name, feature_name, user_type_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    208   �h      !          0    74460    users 
   TABLE DATA               n  COPY public.users (user_id, token, email, password, user_type_id, company_name, first_name, last_name, phone, title, owner_manager, yearly_budget, logo, city, country_id, address, timezone, level, permission, assigned_brands, assigned_products, assigned_services, parent_user_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on) FROM stdin;
    public       postgres    false    198   Hi      "          0    74469    users_version 
   TABLE DATA               �  COPY public.users_version (user_id, token, email, password, user_type_id, company_name, first_name, last_name, phone, title, owner_manager, yearly_budget, logo, city, country_id, address, timezone, level, permission, assigned_brands, assigned_products, assigned_services, parent_user_id, created_by, created_on, modified_by, modified_on, deleted_by, deleted_on, transaction_id, end_transaction_id, operation_type) FROM stdin;
    public       postgres    false    199   0j      l           0    0    age_group_age_group_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.age_group_age_group_id_seq', 1, true);
            public       postgres    false    217            m           0    0    brandcategory_category_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.brandcategory_category_id_seq', 1, true);
            public       postgres    false    212            n           0    0    brands_brand_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.brands_brand_id_seq', 10, true);
            public       postgres    false    236            o           0    0    campaign_campaign_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.campaign_campaign_id_seq', 2, true);
            public       postgres    false    244            p           0    0    education_education_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.education_education_id_seq', 1, true);
            public       postgres    false    229            q           0    0    gender_gender_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.gender_gender_id_seq', 2, true);
            public       postgres    false    220            r           0    0    industry_industry_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.industry_industry_id_seq', 2, true);
            public       postgres    false    202            s           0    0    language_language_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.language_language_id_seq', 1, true);
            public       postgres    false    223            t           0    0    nationality_nationality_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.nationality_nationality_id_seq', 1, true);
            public       postgres    false    226            u           0    0    occupation_occupation_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.occupation_occupation_id_seq', 1, true);
            public       postgres    false    232            v           0    0    products_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.products_product_id_seq', 3, true);
            public       postgres    false    240            w           0    0    service_service_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.service_service_id_seq', 1, true);
            public       postgres    false    242            x           0    0 6   target_audience_profile_target_audience_profile_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.target_audience_profile_target_audience_profile_id_seq', 1, true);
            public       postgres    false    238            y           0    0    transaction_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.transaction_id_seq', 79, true);
            public       postgres    false    200            z           0    0    userlevel_userlevel_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.userlevel_userlevel_id_seq', 1, true);
            public       postgres    false    209            {           0    0 !   userpermissions_permission_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.userpermissions_permission_id_seq', 1, true);
            public       postgres    false    206            |           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);
            public       postgres    false    197            b           2606    74600    age_group age_group_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.age_group
    ADD CONSTRAINT age_group_pkey PRIMARY KEY (age_group_id);
 B   ALTER TABLE ONLY public.age_group DROP CONSTRAINT age_group_pkey;
       public         postgres    false    218            d           2606    74605 (   age_group_version age_group_version_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.age_group_version
    ADD CONSTRAINT age_group_version_pkey PRIMARY KEY (age_group_id, transaction_id);
 R   ALTER TABLE ONLY public.age_group_version DROP CONSTRAINT age_group_version_pkey;
       public         postgres    false    219    219            Q           2606    74559     brandcategory brandcategory_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.brandcategory
    ADD CONSTRAINT brandcategory_pkey PRIMARY KEY (category_id);
 J   ALTER TABLE ONLY public.brandcategory DROP CONSTRAINT brandcategory_pkey;
       public         postgres    false    213            S           2606    74567 0   brandcategory_version brandcategory_version_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.brandcategory_version
    ADD CONSTRAINT brandcategory_version_pkey PRIMARY KEY (category_id, transaction_id);
 Z   ALTER TABLE ONLY public.brandcategory_version DROP CONSTRAINT brandcategory_version_pkey;
       public         postgres    false    214    214            �           2606    74707    brands brands_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (brand_id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public         postgres    false    237            >           2606    74507 "   brands_version brands_version_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.brands_version
    ADD CONSTRAINT brands_version_pkey PRIMARY KEY (brand_id, transaction_id);
 L   ALTER TABLE ONLY public.brands_version DROP CONSTRAINT brands_version_pkey;
       public         postgres    false    205    205            �           2606    74786    campaign campaign_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_pkey PRIMARY KEY (campaign_id);
 @   ALTER TABLE ONLY public.campaign DROP CONSTRAINT campaign_pkey;
       public         postgres    false    245            �           2606    74800 &   campaign_version campaign_version_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.campaign_version
    ADD CONSTRAINT campaign_version_pkey PRIMARY KEY (campaign_id, transaction_id);
 P   ALTER TABLE ONLY public.campaign_version DROP CONSTRAINT campaign_version_pkey;
       public         postgres    false    246    246            ~           2606    74664    education education_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.education
    ADD CONSTRAINT education_pkey PRIMARY KEY (education_id);
 B   ALTER TABLE ONLY public.education DROP CONSTRAINT education_pkey;
       public         postgres    false    230            �           2606    74669 (   education_version education_version_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.education_version
    ADD CONSTRAINT education_version_pkey PRIMARY KEY (education_id, transaction_id);
 R   ALTER TABLE ONLY public.education_version DROP CONSTRAINT education_version_pkey;
       public         postgres    false    231    231            i           2606    74616    gender gender_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (gender_id);
 <   ALTER TABLE ONLY public.gender DROP CONSTRAINT gender_pkey;
       public         postgres    false    221            k           2606    74621 "   gender_version gender_version_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.gender_version
    ADD CONSTRAINT gender_version_pkey PRIMARY KEY (gender_id, transaction_id);
 L   ALTER TABLE ONLY public.gender_version DROP CONSTRAINT gender_version_pkey;
       public         postgres    false    222    222            7           2606    74494    industry industry_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.industry
    ADD CONSTRAINT industry_pkey PRIMARY KEY (industry_id);
 @   ALTER TABLE ONLY public.industry DROP CONSTRAINT industry_pkey;
       public         postgres    false    203            9           2606    74499 &   industry_version industry_version_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.industry_version
    ADD CONSTRAINT industry_version_pkey PRIMARY KEY (industry_id, transaction_id);
 P   ALTER TABLE ONLY public.industry_version DROP CONSTRAINT industry_version_pkey;
       public         postgres    false    204    204            p           2606    74632    language language_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (language_id);
 @   ALTER TABLE ONLY public.language DROP CONSTRAINT language_pkey;
       public         postgres    false    224            u           2606    74637 &   language_version language_version_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.language_version
    ADD CONSTRAINT language_version_pkey PRIMARY KEY (language_id, transaction_id);
 P   ALTER TABLE ONLY public.language_version DROP CONSTRAINT language_version_pkey;
       public         postgres    false    225    225            w           2606    74648    nationality nationality_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.nationality
    ADD CONSTRAINT nationality_pkey PRIMARY KEY (nationality_id);
 F   ALTER TABLE ONLY public.nationality DROP CONSTRAINT nationality_pkey;
       public         postgres    false    227            |           2606    74653 ,   nationality_version nationality_version_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.nationality_version
    ADD CONSTRAINT nationality_version_pkey PRIMARY KEY (nationality_id, transaction_id);
 V   ALTER TABLE ONLY public.nationality_version DROP CONSTRAINT nationality_version_pkey;
       public         postgres    false    228    228            �           2606    74680    occupation occupation_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.occupation
    ADD CONSTRAINT occupation_pkey PRIMARY KEY (occupation_id);
 D   ALTER TABLE ONLY public.occupation DROP CONSTRAINT occupation_pkey;
       public         postgres    false    233            �           2606    74685 *   occupation_version occupation_version_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.occupation_version
    ADD CONSTRAINT occupation_version_pkey PRIMARY KEY (occupation_id, transaction_id);
 T   ALTER TABLE ONLY public.occupation_version DROP CONSTRAINT occupation_version_pkey;
       public         postgres    false    234    234            �           2606    74744    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         postgres    false    241            [           2606    74578 &   products_version products_version_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.products_version
    ADD CONSTRAINT products_version_pkey PRIMARY KEY (product_id, transaction_id);
 P   ALTER TABLE ONLY public.products_version DROP CONSTRAINT products_version_pkey;
       public         postgres    false    215    215            �           2606    74765    service service_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (service_id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public         postgres    false    243            `           2606    74589 $   service_version service_version_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.service_version
    ADD CONSTRAINT service_version_pkey PRIMARY KEY (service_id, transaction_id);
 N   ALTER TABLE ONLY public.service_version DROP CONSTRAINT service_version_pkey;
       public         postgres    false    216    216            �           2606    74723 4   target_audience_profile target_audience_profile_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.target_audience_profile
    ADD CONSTRAINT target_audience_profile_pkey PRIMARY KEY (target_audience_profile_id);
 ^   ALTER TABLE ONLY public.target_audience_profile DROP CONSTRAINT target_audience_profile_pkey;
       public         postgres    false    239            �           2606    74696 D   target_audience_profile_version target_audience_profile_version_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.target_audience_profile_version
    ADD CONSTRAINT target_audience_profile_version_pkey PRIMARY KEY (target_audience_profile_id, transaction_id);
 n   ALTER TABLE ONLY public.target_audience_profile_version DROP CONSTRAINT target_audience_profile_version_pkey;
       public         postgres    false    235    235            5           2606    74486    transaction transaction_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.transaction DROP CONSTRAINT transaction_pkey;
       public         postgres    false    201            J           2606    74540    userlevel userlevel_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.userlevel
    ADD CONSTRAINT userlevel_pkey PRIMARY KEY (userlevel_id);
 B   ALTER TABLE ONLY public.userlevel DROP CONSTRAINT userlevel_pkey;
       public         postgres    false    210            O           2606    74545 (   userlevel_version userlevel_version_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.userlevel_version
    ADD CONSTRAINT userlevel_version_pkey PRIMARY KEY (userlevel_id, transaction_id);
 R   ALTER TABLE ONLY public.userlevel_version DROP CONSTRAINT userlevel_version_pkey;
       public         postgres    false    211    211            C           2606    74521 $   userpermissions userpermissions_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.userpermissions
    ADD CONSTRAINT userpermissions_pkey PRIMARY KEY (permission_id);
 N   ALTER TABLE ONLY public.userpermissions DROP CONSTRAINT userpermissions_pkey;
       public         postgres    false    207            H           2606    74529 4   userpermissions_version userpermissions_version_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.userpermissions_version
    ADD CONSTRAINT userpermissions_version_pkey PRIMARY KEY (permission_id, transaction_id);
 ^   ALTER TABLE ONLY public.userpermissions_version DROP CONSTRAINT userpermissions_version_pkey;
       public         postgres    false    208    208            .           2606    74468    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    198            3           2606    74476     users_version users_version_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.users_version
    ADD CONSTRAINT users_version_pkey PRIMARY KEY (user_id, transaction_id);
 J   ALTER TABLE ONLY public.users_version DROP CONSTRAINT users_version_pkey;
       public         postgres    false    199    199            e           1259    74607 '   ix_age_group_version_end_transaction_id    INDEX     s   CREATE INDEX ix_age_group_version_end_transaction_id ON public.age_group_version USING btree (end_transaction_id);
 ;   DROP INDEX public.ix_age_group_version_end_transaction_id;
       public         postgres    false    219            f           1259    74608 #   ix_age_group_version_operation_type    INDEX     k   CREATE INDEX ix_age_group_version_operation_type ON public.age_group_version USING btree (operation_type);
 7   DROP INDEX public.ix_age_group_version_operation_type;
       public         postgres    false    219            g           1259    74606 #   ix_age_group_version_transaction_id    INDEX     k   CREATE INDEX ix_age_group_version_transaction_id ON public.age_group_version USING btree (transaction_id);
 7   DROP INDEX public.ix_age_group_version_transaction_id;
       public         postgres    false    219            T           1259    74570 +   ix_brandcategory_version_end_transaction_id    INDEX     {   CREATE INDEX ix_brandcategory_version_end_transaction_id ON public.brandcategory_version USING btree (end_transaction_id);
 ?   DROP INDEX public.ix_brandcategory_version_end_transaction_id;
       public         postgres    false    214            U           1259    74568 '   ix_brandcategory_version_operation_type    INDEX     s   CREATE INDEX ix_brandcategory_version_operation_type ON public.brandcategory_version USING btree (operation_type);
 ;   DROP INDEX public.ix_brandcategory_version_operation_type;
       public         postgres    false    214            V           1259    74569 '   ix_brandcategory_version_transaction_id    INDEX     s   CREATE INDEX ix_brandcategory_version_transaction_id ON public.brandcategory_version USING btree (transaction_id);
 ;   DROP INDEX public.ix_brandcategory_version_transaction_id;
       public         postgres    false    214            ?           1259    74508 $   ix_brands_version_end_transaction_id    INDEX     m   CREATE INDEX ix_brands_version_end_transaction_id ON public.brands_version USING btree (end_transaction_id);
 8   DROP INDEX public.ix_brands_version_end_transaction_id;
       public         postgres    false    205            @           1259    74509     ix_brands_version_operation_type    INDEX     e   CREATE INDEX ix_brands_version_operation_type ON public.brands_version USING btree (operation_type);
 4   DROP INDEX public.ix_brands_version_operation_type;
       public         postgres    false    205            A           1259    74510     ix_brands_version_transaction_id    INDEX     e   CREATE INDEX ix_brands_version_transaction_id ON public.brands_version USING btree (transaction_id);
 4   DROP INDEX public.ix_brands_version_transaction_id;
       public         postgres    false    205            �           1259    74801 &   ix_campaign_version_end_transaction_id    INDEX     q   CREATE INDEX ix_campaign_version_end_transaction_id ON public.campaign_version USING btree (end_transaction_id);
 :   DROP INDEX public.ix_campaign_version_end_transaction_id;
       public         postgres    false    246            �           1259    74802 "   ix_campaign_version_operation_type    INDEX     i   CREATE INDEX ix_campaign_version_operation_type ON public.campaign_version USING btree (operation_type);
 6   DROP INDEX public.ix_campaign_version_operation_type;
       public         postgres    false    246            �           1259    74803 "   ix_campaign_version_transaction_id    INDEX     i   CREATE INDEX ix_campaign_version_transaction_id ON public.campaign_version USING btree (transaction_id);
 6   DROP INDEX public.ix_campaign_version_transaction_id;
       public         postgres    false    246            �           1259    74670 '   ix_education_version_end_transaction_id    INDEX     s   CREATE INDEX ix_education_version_end_transaction_id ON public.education_version USING btree (end_transaction_id);
 ;   DROP INDEX public.ix_education_version_end_transaction_id;
       public         postgres    false    231            �           1259    74671 #   ix_education_version_operation_type    INDEX     k   CREATE INDEX ix_education_version_operation_type ON public.education_version USING btree (operation_type);
 7   DROP INDEX public.ix_education_version_operation_type;
       public         postgres    false    231            �           1259    74672 #   ix_education_version_transaction_id    INDEX     k   CREATE INDEX ix_education_version_transaction_id ON public.education_version USING btree (transaction_id);
 7   DROP INDEX public.ix_education_version_transaction_id;
       public         postgres    false    231            l           1259    74622 $   ix_gender_version_end_transaction_id    INDEX     m   CREATE INDEX ix_gender_version_end_transaction_id ON public.gender_version USING btree (end_transaction_id);
 8   DROP INDEX public.ix_gender_version_end_transaction_id;
       public         postgres    false    222            m           1259    74623     ix_gender_version_operation_type    INDEX     e   CREATE INDEX ix_gender_version_operation_type ON public.gender_version USING btree (operation_type);
 4   DROP INDEX public.ix_gender_version_operation_type;
       public         postgres    false    222            n           1259    74624     ix_gender_version_transaction_id    INDEX     e   CREATE INDEX ix_gender_version_transaction_id ON public.gender_version USING btree (transaction_id);
 4   DROP INDEX public.ix_gender_version_transaction_id;
       public         postgres    false    222            :           1259    74502 &   ix_industry_version_end_transaction_id    INDEX     q   CREATE INDEX ix_industry_version_end_transaction_id ON public.industry_version USING btree (end_transaction_id);
 :   DROP INDEX public.ix_industry_version_end_transaction_id;
       public         postgres    false    204            ;           1259    74500 "   ix_industry_version_operation_type    INDEX     i   CREATE INDEX ix_industry_version_operation_type ON public.industry_version USING btree (operation_type);
 6   DROP INDEX public.ix_industry_version_operation_type;
       public         postgres    false    204            <           1259    74501 "   ix_industry_version_transaction_id    INDEX     i   CREATE INDEX ix_industry_version_transaction_id ON public.industry_version USING btree (transaction_id);
 6   DROP INDEX public.ix_industry_version_transaction_id;
       public         postgres    false    204            q           1259    74640 &   ix_language_version_end_transaction_id    INDEX     q   CREATE INDEX ix_language_version_end_transaction_id ON public.language_version USING btree (end_transaction_id);
 :   DROP INDEX public.ix_language_version_end_transaction_id;
       public         postgres    false    225            r           1259    74638 "   ix_language_version_operation_type    INDEX     i   CREATE INDEX ix_language_version_operation_type ON public.language_version USING btree (operation_type);
 6   DROP INDEX public.ix_language_version_operation_type;
       public         postgres    false    225            s           1259    74639 "   ix_language_version_transaction_id    INDEX     i   CREATE INDEX ix_language_version_transaction_id ON public.language_version USING btree (transaction_id);
 6   DROP INDEX public.ix_language_version_transaction_id;
       public         postgres    false    225            x           1259    74654 )   ix_nationality_version_end_transaction_id    INDEX     w   CREATE INDEX ix_nationality_version_end_transaction_id ON public.nationality_version USING btree (end_transaction_id);
 =   DROP INDEX public.ix_nationality_version_end_transaction_id;
       public         postgres    false    228            y           1259    74655 %   ix_nationality_version_operation_type    INDEX     o   CREATE INDEX ix_nationality_version_operation_type ON public.nationality_version USING btree (operation_type);
 9   DROP INDEX public.ix_nationality_version_operation_type;
       public         postgres    false    228            z           1259    74656 %   ix_nationality_version_transaction_id    INDEX     o   CREATE INDEX ix_nationality_version_transaction_id ON public.nationality_version USING btree (transaction_id);
 9   DROP INDEX public.ix_nationality_version_transaction_id;
       public         postgres    false    228            �           1259    74688 (   ix_occupation_version_end_transaction_id    INDEX     u   CREATE INDEX ix_occupation_version_end_transaction_id ON public.occupation_version USING btree (end_transaction_id);
 <   DROP INDEX public.ix_occupation_version_end_transaction_id;
       public         postgres    false    234            �           1259    74686 $   ix_occupation_version_operation_type    INDEX     m   CREATE INDEX ix_occupation_version_operation_type ON public.occupation_version USING btree (operation_type);
 8   DROP INDEX public.ix_occupation_version_operation_type;
       public         postgres    false    234            �           1259    74687 $   ix_occupation_version_transaction_id    INDEX     m   CREATE INDEX ix_occupation_version_transaction_id ON public.occupation_version USING btree (transaction_id);
 8   DROP INDEX public.ix_occupation_version_transaction_id;
       public         postgres    false    234            W           1259    74581 &   ix_products_version_end_transaction_id    INDEX     q   CREATE INDEX ix_products_version_end_transaction_id ON public.products_version USING btree (end_transaction_id);
 :   DROP INDEX public.ix_products_version_end_transaction_id;
       public         postgres    false    215            X           1259    74579 "   ix_products_version_operation_type    INDEX     i   CREATE INDEX ix_products_version_operation_type ON public.products_version USING btree (operation_type);
 6   DROP INDEX public.ix_products_version_operation_type;
       public         postgres    false    215            Y           1259    74580 "   ix_products_version_transaction_id    INDEX     i   CREATE INDEX ix_products_version_transaction_id ON public.products_version USING btree (transaction_id);
 6   DROP INDEX public.ix_products_version_transaction_id;
       public         postgres    false    215            \           1259    74592 %   ix_service_version_end_transaction_id    INDEX     o   CREATE INDEX ix_service_version_end_transaction_id ON public.service_version USING btree (end_transaction_id);
 9   DROP INDEX public.ix_service_version_end_transaction_id;
       public         postgres    false    216            ]           1259    74590 !   ix_service_version_operation_type    INDEX     g   CREATE INDEX ix_service_version_operation_type ON public.service_version USING btree (operation_type);
 5   DROP INDEX public.ix_service_version_operation_type;
       public         postgres    false    216            ^           1259    74591 !   ix_service_version_transaction_id    INDEX     g   CREATE INDEX ix_service_version_transaction_id ON public.service_version USING btree (transaction_id);
 5   DROP INDEX public.ix_service_version_transaction_id;
       public         postgres    false    216            �           1259    74698 5   ix_target_audience_profile_version_end_transaction_id    INDEX     �   CREATE INDEX ix_target_audience_profile_version_end_transaction_id ON public.target_audience_profile_version USING btree (end_transaction_id);
 I   DROP INDEX public.ix_target_audience_profile_version_end_transaction_id;
       public         postgres    false    235            �           1259    74699 1   ix_target_audience_profile_version_operation_type    INDEX     �   CREATE INDEX ix_target_audience_profile_version_operation_type ON public.target_audience_profile_version USING btree (operation_type);
 E   DROP INDEX public.ix_target_audience_profile_version_operation_type;
       public         postgres    false    235            �           1259    74697 1   ix_target_audience_profile_version_transaction_id    INDEX     �   CREATE INDEX ix_target_audience_profile_version_transaction_id ON public.target_audience_profile_version USING btree (transaction_id);
 E   DROP INDEX public.ix_target_audience_profile_version_transaction_id;
       public         postgres    false    235            K           1259    74548 '   ix_userlevel_version_end_transaction_id    INDEX     s   CREATE INDEX ix_userlevel_version_end_transaction_id ON public.userlevel_version USING btree (end_transaction_id);
 ;   DROP INDEX public.ix_userlevel_version_end_transaction_id;
       public         postgres    false    211            L           1259    74546 #   ix_userlevel_version_operation_type    INDEX     k   CREATE INDEX ix_userlevel_version_operation_type ON public.userlevel_version USING btree (operation_type);
 7   DROP INDEX public.ix_userlevel_version_operation_type;
       public         postgres    false    211            M           1259    74547 #   ix_userlevel_version_transaction_id    INDEX     k   CREATE INDEX ix_userlevel_version_transaction_id ON public.userlevel_version USING btree (transaction_id);
 7   DROP INDEX public.ix_userlevel_version_transaction_id;
       public         postgres    false    211            D           1259    74531 -   ix_userpermissions_version_end_transaction_id    INDEX        CREATE INDEX ix_userpermissions_version_end_transaction_id ON public.userpermissions_version USING btree (end_transaction_id);
 A   DROP INDEX public.ix_userpermissions_version_end_transaction_id;
       public         postgres    false    208            E           1259    74530 )   ix_userpermissions_version_operation_type    INDEX     w   CREATE INDEX ix_userpermissions_version_operation_type ON public.userpermissions_version USING btree (operation_type);
 =   DROP INDEX public.ix_userpermissions_version_operation_type;
       public         postgres    false    208            F           1259    74532 )   ix_userpermissions_version_transaction_id    INDEX     w   CREATE INDEX ix_userpermissions_version_transaction_id ON public.userpermissions_version USING btree (transaction_id);
 =   DROP INDEX public.ix_userpermissions_version_transaction_id;
       public         postgres    false    208            /           1259    74478 #   ix_users_version_end_transaction_id    INDEX     k   CREATE INDEX ix_users_version_end_transaction_id ON public.users_version USING btree (end_transaction_id);
 7   DROP INDEX public.ix_users_version_end_transaction_id;
       public         postgres    false    199            0           1259    74479    ix_users_version_operation_type    INDEX     c   CREATE INDEX ix_users_version_operation_type ON public.users_version USING btree (operation_type);
 3   DROP INDEX public.ix_users_version_operation_type;
       public         postgres    false    199            1           1259    74477    ix_users_version_transaction_id    INDEX     c   CREATE INDEX ix_users_version_transaction_id ON public.users_version USING btree (transaction_id);
 3   DROP INDEX public.ix_users_version_transaction_id;
       public         postgres    false    199            �           2606    74708    brands brands_industry_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_industry_id_fkey FOREIGN KEY (industry_id) REFERENCES public.industry(industry_id);
 H   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_industry_id_fkey;
       public       postgres    false    237    2871    203            �           2606    74787    campaign campaign_brand_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brands(brand_id);
 I   ALTER TABLE ONLY public.campaign DROP CONSTRAINT campaign_brand_id_fkey;
       public       postgres    false    245    237    2961            �           2606    74745    products products_brand_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brands(brand_id);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT products_brand_id_fkey;
       public       postgres    false    2961    237    241            �           2606    74750 "   products products_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.brandcategory(category_id);
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_fkey;
       public       postgres    false    2897    213    241            �           2606    74766    service service_brand_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brands(brand_id);
 G   ALTER TABLE ONLY public.service DROP CONSTRAINT service_brand_id_fkey;
       public       postgres    false    2961    237    243            �           2606    74771     service service_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.brandcategory(category_id);
 J   ALTER TABLE ONLY public.service DROP CONSTRAINT service_category_id_fkey;
       public       postgres    false    213    243    2897            �           2606    74724 A   target_audience_profile target_audience_profile_age_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.target_audience_profile
    ADD CONSTRAINT target_audience_profile_age_group_id_fkey FOREIGN KEY (age_group_id) REFERENCES public.age_group(age_group_id);
 k   ALTER TABLE ONLY public.target_audience_profile DROP CONSTRAINT target_audience_profile_age_group_id_fkey;
       public       postgres    false    2914    239    218            �           2606    74729 >   target_audience_profile target_audience_profile_gender_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.target_audience_profile
    ADD CONSTRAINT target_audience_profile_gender_id_fkey FOREIGN KEY (gender_id) REFERENCES public.gender(gender_id);
 h   ALTER TABLE ONLY public.target_audience_profile DROP CONSTRAINT target_audience_profile_gender_id_fkey;
       public       postgres    false    239    2921    221            5   S   x���� E��2�@^[
�!���q�$�\�p�#��)�b�k����
7�@��3�`��q�R����/��R� ��&      6   `   x�����0�I� ���$GT�'D�%�;@��ST�T��a���{�oo~�K�b�8"�}�F9-u��t��3��V��s��c]U      0   d   x�e�1�0��9E/@��� !q������K:vy�S�_�tkz�@(n�q6 ȡ�u�?��MTbB���Z��9gW/��Ҭ���	��ӑSJ_צ�      1   �   x���1
1E��)�����d��	�l��Y;�?�n�,Ӽ��-W:����!HXx�<���j�*�Wh��x�TŴ��DS�ڌ�%kkf6��p�����{L��1A�]t�S~��|#��=�x��ULY�      H   �  x�u�[��@���Q�n8�GF ����^���
i��@������f>���I'�)��H�k���k�6�{@~ ��8�N�#�m�>��~<�!Ӷ�y���C�!cl��=�p��(�Q�(�r[� {]{���J�g�e�k0
��l�wr�Xr�diʁ��k�����h�b�Sl�����@O,�d=(,�>m%m�<LM9=��X{��a���?b`�om<EI�׶�y�C�a���X�h�q�X�Ѿ\?~~��Yl�\�%���bu�~�0�.�	p���#Z'�*��ҵZ�X{/���	��?9��	�q*
u��l���Ym�Ћ�i{H�xY���߱�?��U����<t�)W�Z�*������ve�	�<��'���1�S����c��      (     x���Mn�0���)�1�#��w�(�dc�����@i;-&M��(f��@~�{�$��51� (IÜ��9�֥m�C�ֳL��C ���Jy��8��L0�|;/H�u��vQ����1�\з��۬�Z���hNX���K̍<ݛ�3ؑw5�<u5S�ѷ1r+�B��[��I{eL�R}�="��Ap �{B>��~���]�s��Q{6e�^]P��2ZʣL�{{�'�'��wd!ˎo��hG�.�u��,S���%Ȓ�]�H�}T�^sc)�*�!�$Kryˠ��#�E5�n�� _����^Ϸ�Ǟu����x������l�X2��[�$�Q���4_ l�H�{06?�b���A]T�y=I�5�Y
��8�TH�$���H�l]a�޹*��v��> ���@4A�/��s;6���Oƽ��՚�l��<j*�Rj�esm�hy�Ge(�kL����x��]^��.�����F��2$��wH���R��KKq2ho}`xe^����̯o����e=�8�,�<�(,M(      P   �   x����n�@���S���3���'@������3��d��s��.��L1Z�gYC�af�Z\�AJ�iJ�z ��'
f������p�����^>�|O����p�N�N�6
G�R���v�EGW�I�/57��TS�̩��w�s��_���!EM��я�Q���<]����E�      Q   �   x����j�0���S������
�䚋e9�PhH��GrM�$7��2sX�oM�K�{sRP�2��'��|�&����Ua�q'͗9~�{��/?׻�01�(�Hޠ� �}�0�^,"�)��ӿ���`��9W{�@ҁ��A"�!y#a!e��f���%��a.*J������n�pt����#�4�v�%��Z-챷�� �b��      A   j   x�eɱ!���`N:���6�<��{�zf�����M��w�wY�۞^��9}�R���x�A�=A�`�%���"�%�:D57X�O0WЕ�c��^	      B   �   x���;�0D��)�@�ُ7�;���M'��G :�P$���fF�F�4\�t�� ��w ��Ka&l���B����8�l~�iξ���,��	��g�aO��m���bJ�͒��d�{��t�;�Se�*�w��wQ+4&h%ӭ�?�<W���a�!�;��o|      8   �   x�u�1!�N���� { ;=�6��J���ll�z��@��<���ԉL*Mטݍ{�r������u�\Hw��%e��~cީ&a{#�q�D�9� ��P���F�p�FK9#��d�)�����H\�';R��N1�      9   �   x���MN!�5���W?@���	fC���o��d&q�h'nHH��R��   01���H�`��NJ�a��S���"o���6Y�:}�e«��J�ʠ6�uR�T�koùɗU͏%h=
<��_���.(Iد��>����L��\7A�hV[�]&�ܛ�cL�h�4V��=�]1/L�s��F_��=�l��b����p      &   �   x�e�=�0��9he��'`ba����HLT��	��O�;PXjݹ!aUkʊ�Z�D���u�	���q[�W�9�:���ۗ j�zq^REFҎ�bFA^8��}��ߪ�*�
���ns�tu'�      '   �   x���;�@E�U�Ȼ��V`ecK�|&V�/��Ċ���\���,(e���a)ZBTF��<�'s�_���P(��Nx�!��>@a�L�n,�9%���T�[N2��d,Acu�����)�3��{}<�ښF�^���m���9g�ͅ�zk���@W      ;   _   x�eɡ�0P�N����?�v�����F=�E�1\a�pS����t�A�~��DB��3��e�Z;j6oM�Ot���Lے��Rz ?��      <   �   x���1�0��9E/��v�m��`b�K�����0� ���=��OZOt�n�u�HHYyf��L���5��& �g@J���E��]a��(n�aR��-J(G���?�X�3�/u���K6�7\�-i�)�;�NU�      >   `   x�eɱ� �ZL�����4"8wi��K��>��ı���p�W��ǵ��8�D�vq:���$dxF=�סVL[g�g����g�%����      ?   ~   x���1�0Eg��@#ۉm��p�.N[$�?��ԥ��/��=}������	��f����87�dZ*+��CԀ�!q�{�G��[�e�fT8�D�V��;�T�&���aV����K6�KB���:p      D   e   x�e�;�0�z}�\ ��/���4{+$E��δCI��c7gðЛu�`�Z�w�,��Y�g��=�(ʄ�b�ʚ�G����Z#<����n�ι/H~�      E   �   x���;�0�z}
.�hv��]Ss�4q�EHP�8?$J3͌�4L㉎�y9��BLA���8d��c�Ğ�N���Dl�|(a�T�I��֢��U�%�PG�T��j����SJv����-��;ϥa3�Ƙ7.�@�      L   �   x�m�1
�0Eg��@�dɶ�(=@�8��B�?5�P
Z����o�� 蜀����}�B� ��������B��zSQ���ZW�*�bG�<'��&���cc�^$Mk����{�g[/"R�}�j���?���wt�3z�ιdt1�      2   �   x���=�0F��\ dǎg����� U�*�?�J��Вgp���M{6�q|dc�Lj5P����M��*�˥P�h݊�7����ȑu����|\��=/��5�SP�^Ј+|�CT�S? h腮C�!�C��zCα�r��7g�����-j���L��C��T(T�XL��*q�:/�Q��m�Xk_��w      N   h   x�eɻ	�@ �Z7E𡏥�2���$c�����ᕏ`�i.�5��T�mU.�"8��u����?��臑q�2�<Ⱥr��Qk#�Ϲ�f��N�噖�R����      3   �   x���;
�@Dk�)r/���~N�*� n��C Er0�"M��L3o�`����zo0�'�!F���BZ�%��2	`���@���Đ-D����*�Lᘴ5n��Rl������ī�����?wR;���s;AH      J   w   x�e�9�0@�z|
.ko�� ��46A�
��CD���#PE$K��.��Şo����H����ؖ��|=N�������x9O��02���JX�}VU��ȕ�g�����9��$      F   �   x���=�0���9he;��	He��KB-:�zhA��.��I�#�l��~}����t�`w<t�y���`l�n(f�l��"Bp>�$$dDICII������N�:�IEM��د��9sl�����[�M2K���1��?Zv      $   �  x�u�ۍ%+E��(:�F~b ��`���fNK�LI��K<�7>E@���k�n�>�5l�|ѥ����F�.�� ���_�<&Q�Ga����L��k]єڨu\�F_��>�j��I7�_�P��k���-Bm�������s�ؠ�xHC|d �a�����o���2��P.����R�&��B��F�6�vZ����`��Hp�v?A��/�3 ����%���U�l�o�ɤՈj�=��) ̍���8���<�#��aU�̾�x�P#� +㲖�o1� %�XaU�M�uSCo6M��}M��Ms��S��ԥ�Nm\4��������\< ;x �zd�ik�E��K�l\DΘ;17L�7��3�+uD�$�z��٤<�T���@�裋bC���h�3�Sd/���6���S�?��kN�)� Ğ�|v��(��"���&�L��X	<���4�g"c��V�crO�����.�4�F���.&����C/&�:</�Z/&��L�bR$��+{���>@:�9���?��
�J>G;Hvs��c��k�b� ���(&1R��֑g�$� ��o�PL��ˍ��e`F1���[�x��e��B1��g�/kR�a�`W}V(&1ަOI�<�]L*�x�l�]L�0c���/��I
����	���٢��������>|\d��� xT[1� c|}$�&������ �d��      -   `   x�mɱ	�0�:����i�9� 8�M<	ֺ?(���ǰg0��6?�0�U��)Uh�eg��u�K�K �Qzh�2�N*�0���#����c| ��      .   ~   x���1
�0���|�b���!� ���2"u�Hi�l��Q�E���ߧP�v��j�i$r�$��O8�U([�n�֑��ՙЊ�-�R�2�����~�b�/���|�5��C/�D;�      *   h   x�e�1� F�N���N)RN�"P���RۡS�7|p�SO��5�q�f�2SIb0���n=�����oLL�B�V�%�PAzb���1��\�}���`�      +   �   x���Q
1C����[&3�N�'O�?������ J ?	����x�ݯ'�.a�}b=����4��#��<�!�ܻo��⹩��x���f���Q,��	yc}!}�s�DI�5����r�a�!�t�>�      !   �   x�mP�j�0<���?��e�Ω�B��^a#�Q=��Я�]���f�9���F�SF����� /r�n�P��B�	�J�^��H>�6Gx�5�� �+�B�#'G`��h=�a�k`ȟ��9R����W��{��vȹµn��_91�s��K�����6���Pr�W/%��]�8���[��$�(��ݓ��Q��(�����h�[���֜ڦi��:XM      "   �   x�Ւ=n�0�g��@J����c�]�Kv�X�!9)���n�6C�]�<�|?�������q�ǺK�V�Z���|�pJ��F+)�bf?��[ty(��2����ki:�- k�+eI�����]������SZ���2E[~���=w�M��|�+ 80��q�j���[l�(kc�a-�zߧ(J��B"��
%��N�����G��cR��(t�T~6�^�|#Sf��u��n^H�\X����� @�1     