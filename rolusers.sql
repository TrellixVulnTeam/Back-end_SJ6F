PGDMP                         z            donitos    14.2    14.2 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16395    donitos    DATABASE     c   CREATE DATABASE donitos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE donitos;
                postgres    false            �            1259    24604    ciudad    TABLE     �   CREATE TABLE public.ciudad (
    id_ciudad bigint NOT NULL,
    ciudad character varying(50),
    direccion character varying(50)
);
    DROP TABLE public.ciudad;
       public         heap    postgres    false            �            1259    24603    ciudad_id_ciudad_seq    SEQUENCE     }   CREATE SEQUENCE public.ciudad_id_ciudad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ciudad_id_ciudad_seq;
       public          postgres    false    212                       0    0    ciudad_id_ciudad_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ciudad_id_ciudad_seq OWNED BY public.ciudad.id_ciudad;
          public          postgres    false    211            �            1259    24611    hospital    TABLE     �   CREATE TABLE public.hospital (
    id_hos bigint NOT NULL,
    nombre_hos character varying(50),
    descripcion character varying(100)
);
    DROP TABLE public.hospital;
       public         heap    postgres    false            �            1259    24610    hospital_id_hos_seq    SEQUENCE     |   CREATE SEQUENCE public.hospital_id_hos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.hospital_id_hos_seq;
       public          postgres    false    214                       0    0    hospital_id_hos_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.hospital_id_hos_seq OWNED BY public.hospital.id_hos;
          public          postgres    false    213            �            1259    32781 
   rolusuario    TABLE     �   CREATE TABLE public.rolusuario (
    id integer NOT NULL,
    fecha date,
    descripcion character varying,
    usuario integer,
    usuname character varying
);
    DROP TABLE public.rolusuario;
       public         heap    postgres    false            �            1259    32780    rolusuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rolusuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.rolusuario_id_seq;
       public          postgres    false    218                       0    0    rolusuario_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.rolusuario_id_seq OWNED BY public.rolusuario.id;
          public          postgres    false    217            �            1259    32772    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    token character varying,
    passwd character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    32771    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            �            1259    24590    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usu integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    email character varying(100),
    pass character varying(100)
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    24589    usuario_id_usu_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.usuario_id_usu_seq;
       public          postgres    false    210                       0    0    usuario_id_usu_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.usuario_id_usu_seq OWNED BY public.usuario.id_usu;
          public          postgres    false    209            q           2604    24607    ciudad id_ciudad    DEFAULT     t   ALTER TABLE ONLY public.ciudad ALTER COLUMN id_ciudad SET DEFAULT nextval('public.ciudad_id_ciudad_seq'::regclass);
 ?   ALTER TABLE public.ciudad ALTER COLUMN id_ciudad DROP DEFAULT;
       public          postgres    false    211    212    212            r           2604    24614    hospital id_hos    DEFAULT     r   ALTER TABLE ONLY public.hospital ALTER COLUMN id_hos SET DEFAULT nextval('public.hospital_id_hos_seq'::regclass);
 >   ALTER TABLE public.hospital ALTER COLUMN id_hos DROP DEFAULT;
       public          postgres    false    213    214    214            t           2604    32784    rolusuario id    DEFAULT     n   ALTER TABLE ONLY public.rolusuario ALTER COLUMN id SET DEFAULT nextval('public.rolusuario_id_seq'::regclass);
 <   ALTER TABLE public.rolusuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            s           2604    32775    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            p           2604    24593    usuario id_usu    DEFAULT     p   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usu SET DEFAULT nextval('public.usuario_id_usu_seq'::regclass);
 =   ALTER TABLE public.usuario ALTER COLUMN id_usu DROP DEFAULT;
       public          postgres    false    210    209    210                      0    24604    ciudad 
   TABLE DATA           >   COPY public.ciudad (id_ciudad, ciudad, direccion) FROM stdin;
    public          postgres    false    212   (                 0    24611    hospital 
   TABLE DATA           C   COPY public.hospital (id_hos, nombre_hos, descripcion) FROM stdin;
    public          postgres    false    214   �(                 0    32781 
   rolusuario 
   TABLE DATA           N   COPY public.rolusuario (id, fecha, descripcion, usuario, usuname) FROM stdin;
    public          postgres    false    218   )                 0    32772    users 
   TABLE DATA           8   COPY public.users (id, name, token, passwd) FROM stdin;
    public          postgres    false    216   �)                 0    24590    usuario 
   TABLE DATA           H   COPY public.usuario (id_usu, nombre, apellido, email, pass) FROM stdin;
    public          postgres    false    210   Q*                  0    0    ciudad_id_ciudad_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ciudad_id_ciudad_seq', 1, true);
          public          postgres    false    211                        0    0    hospital_id_hos_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hospital_id_hos_seq', 1, false);
          public          postgres    false    213            !           0    0    rolusuario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.rolusuario_id_seq', 13, true);
          public          postgres    false    217            "           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    215            #           0    0    usuario_id_usu_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.usuario_id_usu_seq', 2, true);
          public          postgres    false    209            x           2606    24609    ciudad ciudad_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ciudad
    ADD CONSTRAINT ciudad_pkey PRIMARY KEY (id_ciudad);
 <   ALTER TABLE ONLY public.ciudad DROP CONSTRAINT ciudad_pkey;
       public            postgres    false    212            z           2606    24616    hospital hospital_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.hospital
    ADD CONSTRAINT hospital_pkey PRIMARY KEY (id_hos);
 @   ALTER TABLE ONLY public.hospital DROP CONSTRAINT hospital_pkey;
       public            postgres    false    214            ~           2606    32788    rolusuario rolusuario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.rolusuario
    ADD CONSTRAINT rolusuario_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.rolusuario DROP CONSTRAINT rolusuario_pkey;
       public            postgres    false    218            |           2606    32779    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            v           2606    24595    usuario usuario_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usu);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    210               F   x�3�t�,MILQHI�Qp-.I�t,K�S���+N=�1��ˈӭ(1/9$���X��_���_�Z����� ��v         :   x�3����IL�/J,�/��W0�2�tN�+)�WHIUN�)M�t+J�K������ ��         _   x�}�1� @ѹ����z	�X0�J������]�K� [&c�ak�[:���t�I7��_�n�Y�Ə�n�����YIC�b���z��@�         �   x�5��
�0@��$lfإ,�o�#+�B��4]e��Y��ᜋC��$(�&�f �H��ƈ�6#/�	բ�cE�
�%���/��&0�	T�(�l��$��z~߯�������\A��K�.�h%y��{� �,����x�p3z��% �������65�伈D$�Q��b]Ӵ/+�<�         i   x�3�t�L�KN��M�I��KL��L����s3s���s9����8�Js29]����8�@<#$E�F�\Ɯ�I�9�~��7�Vq&�y`&�2S3�=... L+     