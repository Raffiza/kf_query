CREATE TABLE kimia_farma.kf_combination AS 
WITH join_table as (
  SELECT 
    a.transaction_id,
    a.date,
    a.branch_id,
    b.branch_name,
    b.kota,
    b.provinsi,
    b.rating as rating_cabang,
    a.customer_name,
    a.product_id,
    a.price as actual_price,
    a.discount_percentage,
    CASE 
      WHEN a.price > 500000 THEN 0.3
      WHEN a.price > 300000 THEN 0.25
      WHEN a.price > 100000 THEN 0.2
      WHEN a.price > 50000 THEN 0.15
      ELSE 0.1
    END AS persentase_gross_laba,
    a.price - (a.price * a.discount_percentage) as nett_sale,
    a.rating as rating_transaksi
  FROM `kimia_farma.kf_final_transaction` as a 
  LEFT JOIN `kimia_farma.kf_kantor_cabang` as b 
  ON a.branch_id = b.branch_id
)
SELECT 
  a.transaction_id,
  a.date,
  a.branch_id,
  a.branch_name,
  a.kota,
  a.provinsi,
  a.rating_cabang,
  a.customer_name,
  a.product_id,
  b.product_name,
  a.actual_price,
  a.discount_percentage,
  a.persentase_gross_laba,
  a.nett_sale,
  (a.actual_price*a.persentase_gross_laba) - (a.actual_price-a.nett_sale) as nett_profit,
  a.rating_transaksi

FROM join_table as a 
LEFT JOIN `kimia_farma.kf_product` as b
ON a.product_id = b.product_id;

