UPDATE public.categoires
  SET name  = 'Dogs T-shirts'
  WHERE id = 3 ; 
  
UPDATE public.products
 SET namess = 'Mario' , "quantity " = 85
 WHERE id = 1 ; 
  
ALTER TABLE public.products
 RENAME COLUMN name TO namess;

SELECT * FROM public.products;

SELECT * FROM public.categoires;

SELECT * FROM public.clients;


DELETE from public.products WHERE id = 2;

INSERT INTO public.clients(
	id,"full_name","phone","email"
) VALUES (
'2'::integer,'Nirca Andrei'::text,'079856215'::text,'magmail@me.com'::text
)
returning id;


CREATE TABLE public.clients
(
	id integer NOT NULL,
	full_name text COLLATE pg_catalog."default",
	phone text COLLATE pg_catalog."default",
	email text COLLATE pg_catalog."default",
	CONSTRAINT clients_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.clients
OWNER to postgres;
