PGDMP                 
        q            dc55r3hmvus02n    9.1.9    9.1.6 (    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false            �           1262    494919    dc55r3hmvus02n    DATABASE     �   CREATE DATABASE dc55r3hmvus02n WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE dc55r3hmvus02n;
             plyubtnhbqhwpz    false                        2615    1602292    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             plyubtnhbqhwpz    false            �            3079    12027    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    170            �            1259    1602310    facts    TABLE     �   CREATE TABLE facts (
    id integer NOT NULL,
    name character varying(255),
    value character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.facts;
       public         plyubtnhbqhwpz    false    6            �            1259    1602308    facts_id_seq    SEQUENCE     n   CREATE SEQUENCE facts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.facts_id_seq;
       public       plyubtnhbqhwpz    false    6    165            �           0    0    facts_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE facts_id_seq OWNED BY facts.id;
            public       plyubtnhbqhwpz    false    164            �           0    0    facts_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('facts_id_seq', 4, true);
            public       plyubtnhbqhwpz    false    164            �            1259    1602321    pictures    TABLE     �   CREATE TABLE pictures (
    id integer NOT NULL,
    title character varying(255),
    picture character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.pictures;
       public         plyubtnhbqhwpz    false    6            �            1259    1602319    pictures_id_seq    SEQUENCE     q   CREATE SEQUENCE pictures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pictures_id_seq;
       public       plyubtnhbqhwpz    false    6    167            �           0    0    pictures_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE pictures_id_seq OWNED BY pictures.id;
            public       plyubtnhbqhwpz    false    166            �           0    0    pictures_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('pictures_id_seq', 6, true);
            public       plyubtnhbqhwpz    false    166            �            1259    1602293    schema_migrations    TABLE     P   CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         plyubtnhbqhwpz    false    6            �            1259    1602299    tips    TABLE     �   CREATE TABLE tips (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    title character varying(255),
    body text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.tips;
       public         plyubtnhbqhwpz    false    6            �            1259    1602297    tips_id_seq    SEQUENCE     m   CREATE SEQUENCE tips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tips_id_seq;
       public       plyubtnhbqhwpz    false    6    163            �           0    0    tips_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE tips_id_seq OWNED BY tips.id;
            public       plyubtnhbqhwpz    false    162            �           0    0    tips_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('tips_id_seq', 1, true);
            public       plyubtnhbqhwpz    false    162            �            1259    1602332    users    TABLE     �  CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    confirmation_token character varying(255),
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying(255),
    authentication_token character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    admin boolean DEFAULT false
);
    DROP TABLE public.users;
       public         plyubtnhbqhwpz    false    2264    2265    2266    2267    6            �            1259    1602330    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       plyubtnhbqhwpz    false    6    169            �           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       plyubtnhbqhwpz    false    168            �           0    0    users_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('users_id_seq', 3, true);
            public       plyubtnhbqhwpz    false    168            �           2604    1602313    id    DEFAULT     V   ALTER TABLE ONLY facts ALTER COLUMN id SET DEFAULT nextval('facts_id_seq'::regclass);
 7   ALTER TABLE public.facts ALTER COLUMN id DROP DEFAULT;
       public       plyubtnhbqhwpz    false    165    164    165            �           2604    1602324    id    DEFAULT     \   ALTER TABLE ONLY pictures ALTER COLUMN id SET DEFAULT nextval('pictures_id_seq'::regclass);
 :   ALTER TABLE public.pictures ALTER COLUMN id DROP DEFAULT;
       public       plyubtnhbqhwpz    false    166    167    167            �           2604    1602302    id    DEFAULT     T   ALTER TABLE ONLY tips ALTER COLUMN id SET DEFAULT nextval('tips_id_seq'::regclass);
 6   ALTER TABLE public.tips ALTER COLUMN id DROP DEFAULT;
       public       plyubtnhbqhwpz    false    163    162    163            �           2604    1602335    id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       plyubtnhbqhwpz    false    169    168    169            �          0    1602310    facts 
   TABLE DATA               A   COPY facts (id, name, value, created_at, updated_at) FROM stdin;
    public       plyubtnhbqhwpz    false    165    2285            �          0    1602321    pictures 
   TABLE DATA               G   COPY pictures (id, title, picture, created_at, updated_at) FROM stdin;
    public       plyubtnhbqhwpz    false    167    2285            �          0    1602293    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       plyubtnhbqhwpz    false    161    2285            �          0    1602299    tips 
   TABLE DATA               M   COPY tips (id, name, email, title, body, created_at, updated_at) FROM stdin;
    public       plyubtnhbqhwpz    false    163    2285            �          0    1602332    users 
   TABLE DATA               S  COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, authentication_token, created_at, updated_at, admin) FROM stdin;
    public       plyubtnhbqhwpz    false    169    2285            �           2606    1602318 
   facts_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY facts
    ADD CONSTRAINT facts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.facts DROP CONSTRAINT facts_pkey;
       public         plyubtnhbqhwpz    false    165    165    2286            �           2606    1602329    pictures_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY pictures
    ADD CONSTRAINT pictures_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pictures DROP CONSTRAINT pictures_pkey;
       public         plyubtnhbqhwpz    false    167    167    2286            �           2606    1602307 	   tips_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY tips
    ADD CONSTRAINT tips_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tips DROP CONSTRAINT tips_pkey;
       public         plyubtnhbqhwpz    false    163    163    2286            �           2606    1602343 
   users_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         plyubtnhbqhwpz    false    169    169    2286            �           1259    1602346 #   index_users_on_authentication_token    INDEX     e   CREATE UNIQUE INDEX index_users_on_authentication_token ON users USING btree (authentication_token);
 7   DROP INDEX public.index_users_on_authentication_token;
       public         plyubtnhbqhwpz    false    169    2286            �           1259    1602344    index_users_on_email    INDEX     G   CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public         plyubtnhbqhwpz    false    169    2286            �           1259    1602345 #   index_users_on_reset_password_token    INDEX     e   CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public         plyubtnhbqhwpz    false    169    2286            �           1259    1602296    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         plyubtnhbqhwpz    false    161    2286            �   �   x�}�;�0�z��@,V�I	}�BK��K&�̦�������ћ�Få�+��k��Fi;(��L�MJI�dM�����0�����n;O�w-�8p�en�<9�;�ײ�9���'�$�J9�����Cx����AV      �   c   x�}α	�0D�:7E��dY�<D&��s��E����u��VH�)2eL��b��@�V�[O-���[BЬv���&���&ԛ`a͕H�=��x �dGl      �   ;   x�E��	�0Cѻ�	�lc�K��#�6���o*������v���|��f�루7�� _��      �   }   x�3�t���M,R�/�J�����+IT�KM/J�t��S/QH�/JO-Q(�W(�,�,Q@R���Y�^���P�ZT����XZ��V�b%g�q���(Y�[�Y�Z������ pA*�      �   �  x���Oo�0��ɧ���8vlNJKKhɪ��$����'��KwYm+`�J�,���<�<h�ˤ��T��g	/�Qè�����n�����i�MEqxT����v;L��5�\�滛�"�7���;.4�����o������3#BI���W��|x/��g7(�P�V7����U�}�[��Q]p)��ib� ,#5��b�:?����(�ig�mwFT�ֺr��n7��C:�l��}�g�^���bOޫX�cs J"m�Iڏҗ�0�Ǯ�O��t2����_�
w�%-��4C"�<�+��l�����ވN��ѹ3��sy�¦�VozAI�|���k���7KGuq_�'��]�6�A�h���>J_a��G�%�L���N�~7U�b��b_:�^����Lv �@1v��gb��v��     