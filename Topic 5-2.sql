SELECT id, name, (SELECT name FROM catalogs WHERE id=catalog_id) AS 'catalog' FROM products;