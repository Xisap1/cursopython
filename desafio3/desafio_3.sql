---1) crear una base de datos llamada peliculas

---2) crear ambos archivos a su tabla correspondiente

create table peliculas (
id serial primary key,
pelicula varchar(255) not null,
estreno int,
director varchar(255)
);

create table reparto (
	id_pelicula varchar(255) not null,
	actor varchar(255) not null
)

---3) obtener el id de la pelicula "titanic"
select id from peliculas
   where pelicula = 'Titanic';

--4) listar a todos los actores que aparecen en la pelicula 'titanic'

select actor from
    peliculas
	join 
	reparto
	on peliculas.id = reparto.id_pelicula
	where pelicula = 'Titanic'

---5) consultar en cuantas peliculas del top 100 participa harrison ford
select count(pelicula) from
peliculas
join 
reparto
on pelicula.id = reparto.id_pelicula
where actor = 'Harry Ford'

--6) indicar las películas estrenadas entre los años 1990 y 1999 ordenadas
--por título demanera ascendente.

select pelicula, estreno from peliculas
where estreno >= 1990 and estreno <= 1999
order by pelicula asc;

--opcion2
select pelicula, estreno from peliculas
  where estreno between 1990 y 1999
  order by pelicula asc;

--7)hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe
--ser nombrado para la consulta como “longitud_titulo”

select pelicula, length (pelicula) as longitud_titulo from peliculas;

--8)consultar cual es la longitud más grande entre todos los títulos de las películas
select length(pelicula) as longitud_titulo from peliculas
order by longitud_titulo desc
limit 1;

-- query con su titulo:
select pelicula length(pelicula) as longitud_titulo from peliculas
order by longitud_titulo desc
limit 1;

 
