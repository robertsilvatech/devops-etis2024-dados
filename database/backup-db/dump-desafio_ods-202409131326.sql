PGDMP  +                    |            desafio_ods    15.7 (Debian 15.7-1.pgdg120+1)    16.3     %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    16384    desafio_ods    DATABASE     v   CREATE DATABASE desafio_ods WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE desafio_ods;
                backend    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            )           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16510 	   Indicador    TABLE     �  CREATE TABLE public."Indicador" (
    "IdCodigoArquivo" integer NOT NULL,
    "IdCodigoValor" integer NOT NULL,
    "ValorIndicador" double precision,
    "Mediana" double precision,
    "DesvioPadrao" double precision,
    "LimiteSuperior" double precision,
    "LimiteInferior" double precision,
    "SiglaSecretaria" character varying(20) NOT NULL,
    "IdIndicador" character varying(255) NOT NULL,
    "NomeIndicador" text
);
    DROP TABLE public."Indicador";
       public         heap    backend    false    4            �            1259    16396    Responsavel    TABLE     �   CREATE TABLE public."Responsavel" (
    "Email" character varying(50) NOT NULL,
    "Nome" character varying(45) NOT NULL,
    "Celular" character varying(45) NOT NULL,
    "SiglaSecretaria" character varying NOT NULL,
    "Active" boolean
);
 !   DROP TABLE public."Responsavel";
       public         heap    backend    false    4            �            1259    16389 
   Secretaria    TABLE     �   CREATE TABLE public."Secretaria" (
    "SiglaSecretaria" character varying NOT NULL,
    "NomeSecretaria" character varying(45) NOT NULL,
    "Active" boolean
);
     DROP TABLE public."Secretaria";
       public         heap    backend    false    4            "          0    16510 	   Indicador 
   TABLE DATA           �   COPY public."Indicador" ("IdCodigoArquivo", "IdCodigoValor", "ValorIndicador", "Mediana", "DesvioPadrao", "LimiteSuperior", "LimiteInferior", "SiglaSecretaria", "IdIndicador", "NomeIndicador") FROM stdin;
    public          backend    false    216   �       !          0    16396    Responsavel 
   TABLE DATA           `   COPY public."Responsavel" ("Email", "Nome", "Celular", "SiglaSecretaria", "Active") FROM stdin;
    public          backend    false    215   �                   0    16389 
   Secretaria 
   TABLE DATA           U   COPY public."Secretaria" ("SiglaSecretaria", "NomeSecretaria", "Active") FROM stdin;
    public          backend    false    214   *!       �           2606    16514    Indicador Indicadores_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Indicador"
    ADD CONSTRAINT "Indicadores_pkey" PRIMARY KEY ("IdCodigoArquivo", "IdCodigoValor", "IdIndicador");
 H   ALTER TABLE ONLY public."Indicador" DROP CONSTRAINT "Indicadores_pkey";
       public            backend    false    216    216    216            �           2606    16402 #   Responsavel Responsavel_Celular_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."Responsavel"
    ADD CONSTRAINT "Responsavel_Celular_key" UNIQUE ("Celular");
 Q   ALTER TABLE ONLY public."Responsavel" DROP CONSTRAINT "Responsavel_Celular_key";
       public            backend    false    215            �           2606    16400    Responsavel Responsavel_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Responsavel"
    ADD CONSTRAINT "Responsavel_pkey" PRIMARY KEY ("Email");
 J   ALTER TABLE ONLY public."Responsavel" DROP CONSTRAINT "Responsavel_pkey";
       public            backend    false    215            �           2606    16395 (   Secretaria Secretaria_NomeSecretaria_key 
   CONSTRAINT     s   ALTER TABLE ONLY public."Secretaria"
    ADD CONSTRAINT "Secretaria_NomeSecretaria_key" UNIQUE ("NomeSecretaria");
 V   ALTER TABLE ONLY public."Secretaria" DROP CONSTRAINT "Secretaria_NomeSecretaria_key";
       public            backend    false    214            �           2606    16459    Secretaria Secretaria_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."Secretaria"
    ADD CONSTRAINT "Secretaria_pkey" PRIMARY KEY ("SiglaSecretaria");
 H   ALTER TABLE ONLY public."Secretaria" DROP CONSTRAINT "Secretaria_pkey";
       public            backend    false    214            �           2606    16515 *   Indicador Indicadores_SiglaSecretaria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Indicador"
    ADD CONSTRAINT "Indicadores_SiglaSecretaria_fkey" FOREIGN KEY ("SiglaSecretaria") REFERENCES public."Secretaria"("SiglaSecretaria") ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."Indicador" DROP CONSTRAINT "Indicadores_SiglaSecretaria_fkey";
       public          backend    false    214    216    3209            �           2606    16477 ,   Responsavel Responsavel_SiglaSecretaria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Responsavel"
    ADD CONSTRAINT "Responsavel_SiglaSecretaria_fkey" FOREIGN KEY ("SiglaSecretaria") REFERENCES public."Secretaria"("SiglaSecretaria") ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public."Responsavel" DROP CONSTRAINT "Responsavel_SiglaSecretaria_fkey";
       public          backend    false    3209    215    214            "   �  x��ZMo�=��w�̠���(�ZC��,fO{�c� �1$� �&A��)�e��cy��/Y�-�#)�`�-vͫ�W��6��B��Pp2��uV�`C��*��-��Q�H/��R���:���0������\�|s���lg��r��տ�l�.��l�f�eS�W�gu���	o�;��l#�<9(��Q��ђ��<��2B��l�H[���+a�s�d��M%~9{����ϣ�����9c<> {��F$]�MT�[���"�6hC�PVz<K�tu������;"�j��Z�[�1���UV7�qW/�yVM�Y���W�q{[γ��[}/�M��Z,�	^�)�X����������~��PG��GJ	%�����N� ��p&*8-�S�� 2|ʁ�ۆ?���0j�u�qٵ���.�E�5m���w?\^���^ ��q72J�� l�h �J��'Rh�ThrF;��p�_�'+7��Μw��&Ok��ލ.ޜeW�oί�cs�8�Y5��e:�q��� o��j�uY�3@�i?&����k80�
5BT ��<
*��_	���	+��X�(@oS-Ĝm�S�u�U�����}uS�M�g�ͼ�Q�ϑ4-��˜ħ6�7[�q��«q;����+>_�{���X�_�uWߔ����[^�!�n�����׭RFa,HLP�R!�m,t�~]�
da��|zK�u,���-1�\a� ��{nmd�&���~X6�rZ5��j���d�g�� <e�ר"�>8)�Zy8b#%�4�B�E�
e��U�ۘ�}�S��^W��[$��&�����gyvف�j�������*��9�l�q�U;�u�|�E��/`v�ϏU�j���%S��c�
�`
��!P�6���tg�$'�G#��퉅�=��Qo� )�1eX[-lކz�X�@	 ӹ�K�l�f�T4ڈ*���/�)t�t�|T�D��]�)g[E�~Q|5����Ȧ�O��MTP��ų�?Џ��T��=Џ�=�ub��^h�~Eה�6)k��1y]�ma���)
��d��R���b��&�:����pAd U�aB�����8����c-D)��Z�ŋ�Ht����IջgX7�����d	�b>e��i�]�ߺ=�f|��gۭ'�〞�C�m O�x���Dh���<]h��N�v�:{��1j�N.��y'��#*�NBh�H�h$㵞
5�n�̣��#�8V�`�NZw'�:g3&������}ؼ�hyz� �;w���!��S�c��
�RtT�Bc�ֲX�	,�b�m�L�F�>�]��� oMVf�{Fh�u��B�\CΜ����`�|�aY=F;� ��N�:�9 @���BK�q硚��=�&�<�<�`  e@�x���bl��!�t��.XmPФ�a�I,7�;ߡ�/�y���oǐG�Cc[�A�-���� �*�ւ|;���=�O6��y��"���*P�)��'��cH��Htν5��Cg�c�s���w��r�Ǯ>��5�M���]0C�6s�<�V�O�Db�!�i�
��%蚯:�����QL�{Bs��U�����,[.�`��߾�9��������U����؜݀�QBR��p����fOz|7�z����q���Tz'�Q�Oh��Q���>�=�~�:���Gh��m-J�	^U�"�9�<�t�Ux�|���/�u����x�i�kp����#�@�#]�7��V�g��{�4�� �;�j�1�QP��$X�I4B��L�nLk���!]v[�'R[��-7*�	�偿`������
��r3�fg��b��+����ڻݪ��9M�WL�͢+9.;��~�����.b�CagsO�ݳ��8Xְ��O�um
��-��<�m��(�D)�B�u
�*,�a٭"������mo.f�NsR}@u�~g�����wR�����6�|D؈�$��F$���PWW�#1z�t��oe��;�V���h�f�1�^v�m�K4�����p�'�2*#w��?�\1�CW����N*����E��&��Qĝ��?��|��J&��xms/��,���[A�bI�m�)��|pOOvG`����MN-E(4%���PZA�u�A
��9��a�����9[� |�P;]���1�б���ŋ�'�      !   �   x�m��
!�ϿO��:����ބX�F�1�̈́uPߟ��C4���a>�K1YEtf����+��ͶjS���#�HB��ǫ�\���K4an-F8�7����~/ ��|}���2_H�q�3͡N@;)��3Ч
����ܹ=u          �   x�u��� Dk��O�|c�,>�Ҡ�Dn��f�(���,�b�()]]�P�J�Ax#����gP�}�ߎeN�{X-L�})�B}�6��U�s��ǝ�"s��I��¶ūg�F�֕mU�����c7�d�)o��Q���F�:��1�3Nr�s*�r� ��K*     