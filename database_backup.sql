PGDMP     +    6                y            fullstack_dev    14.0    14.0 7    ;           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            <           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            =           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            >           1262    41409    fullstack_dev    DATABASE     b   CREATE DATABASE fullstack_dev WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE fullstack_dev;
             
   pedrolpin4    false            �            1259    41458    answers    TABLE     �   CREATE TABLE public.answers (
    id integer NOT NULL,
    question_id integer NOT NULL,
    answered_at timestamp without time zone DEFAULT now() NOT NULL,
    answered_by integer NOT NULL,
    answer text NOT NULL
);
    DROP TABLE public.answers;
       public         heap 
   pedrolpin4    false            �            1259    41457    answers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.answers_id_seq;
       public       
   pedrolpin4    false    220            ?           0    0    answers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;
          public       
   pedrolpin4    false    219            �            1259    41411    classes    TABLE     Q   CREATE TABLE public.classes (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.classes;
       public         heap 
   pedrolpin4    false            �            1259    41410    classes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.classes_id_seq;
       public       
   pedrolpin4    false    210            @           0    0    classes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.classes_id_seq OWNED BY public.classes.id;
          public       
   pedrolpin4    false    209            �            1259    41440 	   questions    TABLE     U  CREATE TABLE public.questions (
    id integer NOT NULL,
    question text NOT NULL,
    student text NOT NULL,
    class text NOT NULL,
    submit_at timestamp without time zone DEFAULT now() NOT NULL,
    answered boolean DEFAULT false NOT NULL,
    answer_id integer,
    tag_id integer DEFAULT 1 NOT NULL,
    score integer DEFAULT 1
);
    DROP TABLE public.questions;
       public         heap 
   pedrolpin4    false            �            1259    41439    questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public       
   pedrolpin4    false    216            A           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public       
   pedrolpin4    false    215            �            1259    41451    questions_tags    TABLE        CREATE TABLE public.questions_tags (
    id integer NOT NULL,
    tag_id integer NOT NULL,
    question_id integer NOT NULL
);
 "   DROP TABLE public.questions_tags;
       public         heap 
   pedrolpin4    false            �            1259    41450    questions_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.questions_tags_id_seq;
       public       
   pedrolpin4    false    218            B           0    0    questions_tags_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.questions_tags_id_seq OWNED BY public.questions_tags.id;
          public       
   pedrolpin4    false    217            �            1259    41422    students    TABLE     �   CREATE TABLE public.students (
    id integer NOT NULL,
    class_id integer NOT NULL,
    name text NOT NULL,
    token text NOT NULL
);
    DROP TABLE public.students;
       public         heap 
   pedrolpin4    false            �            1259    41421    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public       
   pedrolpin4    false    212            C           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public       
   pedrolpin4    false    211            �            1259    41431    tags    TABLE     N   CREATE TABLE public.tags (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.tags;
       public         heap 
   pedrolpin4    false            �            1259    41430    tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public       
   pedrolpin4    false    214            D           0    0    tags_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;
          public       
   pedrolpin4    false    213            �           2604    41461 
   answers id    DEFAULT     h   ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);
 9   ALTER TABLE public.answers ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    220    219    220            �           2604    41414 
   classes id    DEFAULT     h   ALTER TABLE ONLY public.classes ALTER COLUMN id SET DEFAULT nextval('public.classes_id_seq'::regclass);
 9   ALTER TABLE public.classes ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    209    210    210            �           2604    41443    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    215    216    216            �           2604    41454    questions_tags id    DEFAULT     v   ALTER TABLE ONLY public.questions_tags ALTER COLUMN id SET DEFAULT nextval('public.questions_tags_id_seq'::regclass);
 @   ALTER TABLE public.questions_tags ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    217    218    218            �           2604    41425    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    211    212    212            �           2604    41434    tags id    DEFAULT     b   ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public       
   pedrolpin4    false    214    213    214            8          0    41458    answers 
   TABLE DATA           T   COPY public.answers (id, question_id, answered_at, answered_by, answer) FROM stdin;
    public       
   pedrolpin4    false    220   �<       .          0    41411    classes 
   TABLE DATA           +   COPY public.classes (id, name) FROM stdin;
    public       
   pedrolpin4    false    210   d=       4          0    41440 	   questions 
   TABLE DATA           p   COPY public.questions (id, question, student, class, submit_at, answered, answer_id, tag_id, score) FROM stdin;
    public       
   pedrolpin4    false    216   �=       6          0    41451    questions_tags 
   TABLE DATA           A   COPY public.questions_tags (id, tag_id, question_id) FROM stdin;
    public       
   pedrolpin4    false    218   <>       0          0    41422    students 
   TABLE DATA           =   COPY public.students (id, class_id, name, token) FROM stdin;
    public       
   pedrolpin4    false    212   Y>       2          0    41431    tags 
   TABLE DATA           (   COPY public.tags (id, name) FROM stdin;
    public       
   pedrolpin4    false    214   ,?       E           0    0    answers_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.answers_id_seq', 20, true);
          public       
   pedrolpin4    false    219            F           0    0    classes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.classes_id_seq', 3, true);
          public       
   pedrolpin4    false    209            G           0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 21, true);
          public       
   pedrolpin4    false    215            H           0    0    questions_tags_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.questions_tags_id_seq', 1, false);
          public       
   pedrolpin4    false    217            I           0    0    students_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.students_id_seq', 16, true);
          public       
   pedrolpin4    false    211            J           0    0    tags_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tags_id_seq', 11, true);
          public       
   pedrolpin4    false    213            �           2606    41465    answers answers_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pk;
       public         
   pedrolpin4    false    220            �           2606    41420    classes classes_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_name_key;
       public         
   pedrolpin4    false    210            �           2606    41418    classes classes_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pk;
       public         
   pedrolpin4    false    210            �           2606    41449    questions questions_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pk;
       public         
   pedrolpin4    false    216            �           2606    41456     questions_tags questions_tags_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.questions_tags
    ADD CONSTRAINT questions_tags_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.questions_tags DROP CONSTRAINT questions_tags_pk;
       public         
   pedrolpin4    false    218            �           2606    41584    students students_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.students DROP CONSTRAINT students_name_key;
       public         
   pedrolpin4    false    212            �           2606    41429    students students_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pk;
       public         
   pedrolpin4    false    212            �           2606    41438    tags tags_pk 
   CONSTRAINT     J   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pk PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pk;
       public         
   pedrolpin4    false    214            �           2606    41486    answers answers_fk0    FK CONSTRAINT     z   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_fk0 FOREIGN KEY (question_id) REFERENCES public.questions(id);
 =   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_fk0;
       public       
   pedrolpin4    false    216    3478    220            �           2606    41491    answers answers_fk1    FK CONSTRAINT     y   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_fk1 FOREIGN KEY (answered_by) REFERENCES public.students(id);
 =   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_fk1;
       public       
   pedrolpin4    false    212    220    3474            �           2606    41471    questions questions_fk0    FK CONSTRAINT     z   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_fk0 FOREIGN KEY (answer_id) REFERENCES public.answers(id);
 A   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_fk0;
       public       
   pedrolpin4    false    216    3482    220            �           2606    41587    questions questions_fk1    FK CONSTRAINT     t   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_fk1 FOREIGN KEY (tag_id) REFERENCES public.tags(id);
 A   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_fk1;
       public       
   pedrolpin4    false    3476    214    216            �           2606    41476 !   questions_tags questions_tags_fk0    FK CONSTRAINT     ~   ALTER TABLE ONLY public.questions_tags
    ADD CONSTRAINT questions_tags_fk0 FOREIGN KEY (tag_id) REFERENCES public.tags(id);
 K   ALTER TABLE ONLY public.questions_tags DROP CONSTRAINT questions_tags_fk0;
       public       
   pedrolpin4    false    214    218    3476            �           2606    41481 !   questions_tags questions_tags_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.questions_tags
    ADD CONSTRAINT questions_tags_fk1 FOREIGN KEY (question_id) REFERENCES public.questions(id);
 K   ALTER TABLE ONLY public.questions_tags DROP CONSTRAINT questions_tags_fk1;
       public       
   pedrolpin4    false    216    3478    218            �           2606    41466    students students_fk0    FK CONSTRAINT     w   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_fk0 FOREIGN KEY (class_id) REFERENCES public.classes(id);
 ?   ALTER TABLE ONLY public.students DROP CONSTRAINT students_fk0;
       public       
   pedrolpin4    false    3470    210    212            8   �   x�e�M
1�u{
/`�{m�4gq��lT�����Ag ��� A�8�3N`T��TV��`�u���X������հ.�W���e�3�=+A���}c-͍?��PV�����:84��i����A��3̓��kup��k�l_w�����8�      .      x�3�1�2�1�2�,1����� #N,      4   �   x���A
�@��ur
/�2/3��nz��\v#� ����#H�n�;�ǟ@��e����ܟrJb�P�*��ا��P���Z��4
j���J�j(u�TK��R�b k�;��1��.�r�1�魥�Z��ZncQ���:����{��K
�k�Z�S���z 4      6      x������ � �      0   �   x�U�;nE!���'��^�cK�I��U��L5G3������,#3}��������g��6�5��@G*Gv7�F�"A�4�k�N�k��p+��,`AFuP��L��8W��I��2�ӥF��i0�4���NI�w5�&���(���{N�Fg�����Q�|=�m/=$���2(f��z���ՏW��.O}      2   A   x�3������2�1�2& �D��sa",A��gV��BA��BR��Bj��!�H� ��     