SELECT nombre FROM producto;
SELECT nombre,precio FROM producto;
SELECT * FROM producto;
SELECT nombre, CONCAT(precio,'€'), CONCAT(precio * 1.1,'$')  FROM producto;
SELECT nombre AS nombre_producto, CONCAT(precio,'€') AS euro, CONCAT(precio * 1.1,'$') AS dolars FROM producto;
SELECT upper(nombre),precio FROM producto;
SELECT lower(nombre), precio FROM producto;
SELECT nombre,SUBSTRING(nombre,1,2) FROM fabricante;
SELECT nombre,ROUND(precio) FROM producto;
SELECT nombre,TRUNCATE(precio,0) FROM producto;
SELECT codigo_fabricante FROM producto;
SELECT DISTINCT codigo_fabricante FROM producto;
SELECT nombre FROM fabricante ORDER BY nombre ASC;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre,precio FROM producto ORDER BY nombre ASC,precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante LIMIT 3,2;
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
SELECT nombre FROM fabricante WHERE codigo = 2;
SELECT producto.nombre,producto.precio,fabricante.nombre FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre,producto.precio,fabricante.nombre FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo ORDER BY fabricante.nombre ASC;
SELECT producto.codigo,producto.nombre,fabricante.nombre,fabricante.codigo FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre,MIN(producto.precio),fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre,MAX(producto.precio),fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo;
SELECT producto.nombre FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = 'Lenovo';
SELECT producto.nombre FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = 'Crucial' AND producto.precio > 200;
SELECT producto.nombre FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = 'Asus' OR fabricante.nombre = 'Hewlett-Packard' OR fabricante.nombre = 'Seagate';
SELECT producto.nombre FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre IN ('Asus','Hewlett-Packard','Seagate');
SELECT producto.nombre,producto.precio FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre LIKE '%e';
SELECT producto.nombre,producto.precio FROM producto LEFT JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre LIKE '%W%';
SELECT producto.nombre,producto.precio,fabricante.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE producto.precio >= 180 ORDER BY producto.precio DESC,producto.nombre ASC;
SELECT DISTINCT fabricante.codigo, fabricante.nombre FROM fabricante INNER JOIN producto ON fabricante.codigo = producto.codigo_fabricante;
SELECT fabricante.nombre,producto.nombre FROM fabricante INNER JOIN producto ON fabricante.codigo = producto.codigo_fabricante;
SELECT fabricante.codigo, fabricante.nombre FROM fabricante INNER JOIN producto ON fabricante.codigo = producto.codigo_fabricante WHERE producto.codigo_fabricante IS NULL;
SELECT producto.nombre FROM producto INNER JOIN fabricante WHERE fabricante.nombre = 'Lenovo';
SELECT producto.nombre FROM producto INNER JOIN fabricante ON fabricante.codigo = producto.codigo_fabricante WHERE MAX(producto.precio) HAVING fabricante.nombre = 'Lenovo';
SELECT producto.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = 'Lenovo' HAVING MAX(producto.precio);
SELECT producto.nombre FROM producto INNER JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = 'Hewlett-Packard' HAVING MIN(producto.precio);
SELECT producto.nombre FROM producto INNER JOIN fabricante ON fabricante.codigo = producto.codigo_fabricante WHERE producto.precio >= producto.precio (fabricante.nombre = 'Lenovo');
SELECT producto.nombre FROM producto INNER JOIN fabricante ON fabricante.codigo = producto.codigo_fabricante WHERE producto.precio >= producto.precio (fabricante.nombre = 'Lenovo');






