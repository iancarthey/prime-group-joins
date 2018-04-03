1. Get all customers and their address
SELECT * FROM "customers" JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";

2. Get all orders and their line items
SELECT * FROM "orders" JOIN "line_items" ON "orders"."id" = "line_items"."order_id";

3. Which warehouses have cheetos
SELECT "products"."description", "warehouse_product"."warehouse_id" FROM "products" JOIN "warehouse_product" ON
"products"."id" = "warehouse_product"."product_id" WHERE "products"."id" = 5;

4. Which warehouses have pepsi
SELECT "products"."description", "warehouse_product"."warehouse_id" FROM "products" JOIN "warehouse_product" ON
"products"."id" = "warehouse_product"."product_id" WHERE "products"."id" = 6;

5. Get the number of orders for each customer. 
SELECT "orders"."order_date", "customers"."first_name", "customers"."last_name" FROM "orders" 
JOIN "addresses" ON "orders"."address_id" = "addresses"."id" JOIN "customers" ON "addresses"."customer_id" = "customers"."id" ;

6. How Many Customers do we have?
SELECT COUNT(*) FROM "customers";

7. How many products do we carry?
SELECT COUNT(*) FROM "products";

8. How many total available on hand quantity of diet pepsi?
SELECT "products"."description", SUM("warehouse_product"."on_hand") FROM "products" JOIN "warehouse_product" ON "products"."id" = "warehouse_product"."product_id"
WHERE "products"."id" = 6 GROUP BY "products"."description";
