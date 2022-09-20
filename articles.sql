PGDMP     1    &                z            articles    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16411    articles    DATABASE     d   CREATE DATABASE articles WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE articles;
                postgres    false            �            1259    16413    articles    TABLE     �   CREATE TABLE public.articles (
    id integer NOT NULL,
    heading character varying(255),
    content character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone
);
    DROP TABLE public.articles;
       public         heap    postgres    false            �            1259    16412    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          postgres    false    210            �           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          postgres    false    209            \           2604    16416    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    16413    articles 
   TABLE DATA           P   COPY public.articles (id, heading, content, created_at, updated_at) FROM stdin;
    public          postgres    false    210   �
       �           0    0    articles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.articles_id_seq', 24, true);
          public          postgres    false    209            ^           2606    16418    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            postgres    false    210            �     x��XɎ�F=k��?�&�͌G9vHN|�E�4�l���������d#�쥖�^Uiؼ�sB�^M^x�i��3�6�K����J�_-�����YK1筴�_�=k!C�U⦞ulQ�ll+ޚIu"��N+'Ԡ�EM�P�7⦽T��>�!���J�/0e�N�6ߊ��딠sF9(d/����jR��X�%.�'oo�oA�%���<6�6�P^�l,홃���M��a�u���6)kp�PWX&�����q�6\��d'$^=;,��ɠ	oC����������
�5���[8ߊ7��s\D���6��8�.������0v�:�@1�Y�&_��97=I����D.��exiup\�N29������.��S������v1�v!�x~��h郦K�&�����x��d[Z��Y:5�-�K��ȫ�.�6V��?�1��O)�0:9q�\d�Q�p
��q�_�$��EQ�J(��� ���L�,��l0��H�ٷ0��K$�� R�Ѹ�h�0Y#�����`����u�=�2�HCppF��ӫv������O��[�۝����=��Ǉ��O���vw�����'�b�t�l��g�?�����1�C��Z�gEm�+�?�*eȳV�T���R&�f���>�<�ɧJp��#����7��J����f��(���5Kr���, �9��I��^��W�P�k �q��B5���RuP&
D�xD\�@��:��h"�`I�g��v���O5A�*f ��N��H�7��m�6�Ŭ;��A3����M|�+�졒ϔ�LҹA���@@���Xl!I�.j���p���V�S�h�4p!A��[�ؚ�B>�n�"�1��g�T���R��&�W�h^�������;�������=n>���6�?���c�0�uu�LN�����JC����dv��/�.[����8��"�eF�U�9\����n	��&%�����ҔzPI4��b��Ô��5ЫLBRTz��=@L�l�1�V,�[U��᝙��2�6�!Ǹ2��)����U��b-�HE�����zE�E��&]���8�ȿ(�	�Qr�c{�y��KGKC`�YAf{:nO��v����߽|�p:ۧ�����n����s���ƈ��!�T�b�Z[�p�w����1������x������vG���n8���J
t�H�unzY7U(k{�5+�Cg�C-�08��Mr�Ǖ��H��T����n�����>�DRb��"F�rT�b������'�b�x���`W�����r��P!�����E_�%%�yX����njM�|x��pZ@���� LJ������^,���@�%Qp�Ѐ�<잶����7�!7b��S�lY5�*lb���.�ߥ#J#��� S���:��^�¦�ƕ	�I�8KG���r4�Zj�h��S �����FFt��ؾ�A �N���"̈����ӗ<Y,�!���#�K��. U��yk�a�rZN eamj�W�$�{쳙��4���5��엃y�_�*g=��Y0=�SSsF�.-5�4��?�h[�LWrJ7���ǥ�<M�T<�1�<�0��(
>��%���7t�G���w�+�~aPD���5z�8��X�47l@�Ej���VnW�3BI�K���s%�*	a��r��^%ε����|M_9�<��e�ć��}���ά[I�h�\U�ʈ�,#��MJ��("NF(����q��)���� 	�ˀֿ�-ꇨ)E��@����D�h�T:����u�z{�c���������=     