# kf_query

## Description
Query untuk membuat table baru dengan menggabungkan beberapa table lain. Kolom yang diperlukan adalah sebagai berikut:  

● transaction_id : kode id transaksi,   
● date : tanggal transaksi dilakukan,    
● branch_id : kode id cabang Kimia Farma,   
● branch_name : nama cabang Kimia Farma,   
● kota : kota cabang Kimia Farma,   
● provinsi : provinsi cabang Kimia Farma,   
● rating_cabang : penilaian konsumen terhadap cabang Kimia 
Farma  
● customer_name : Nama customer yang melakukan 
transaksi,  
● product_id : kode product obat,  
● product_name : nama obat,   
● actual_price : harga obat,   
● discount_percentage : Persentase diskon yang diberikan 
pada obat,   
● persentase_gross_laba : Persentase laba yang seharusnya 
diterima dari obat dengan ketentuan berikut:  
■ Harga <= Rp 50.000 -> laba 10%  
■ Harga > Rp 50.000 - 100.000 -> laba 15%  
■ Harga > Rp 100.000 - 300.000 -> laba 20%  
■ Harga > Rp 300.000 - 500.000 -> laba 25%  
■ Harga > Rp 500.000 -> laba 30%,  
● nett_sales : harga setelah diskon,   
● nett_profit : keuntungan yang diperoleh Kimia Farma dengan ketentuan profit = (actual_price*persentase_gross_laba) - (actual price - nett_sales)    
● rating_transaksi : penilaian konsumen terhadap transaksi 
yang dilakukan.  
  
## Data Dictionary
kf_final_transaction.csv  
● transaction_id: kode id transaksi,   
● product_id : kode produk obat,   
● branch_id: kode id cabang Kimia Farma,   
● customer_name: nama customer yang melakukan
transaksi, 
● date: tanggal transaksi dilakukan,   
● price: harga obat,   
● discount_percentage: Persentase diskon yang 
diberikan pada obat,   
● rating: penilaian konsumen terhadap transaksi yang 
dilakukan.  
  
kf_product.csv  
● product_id: kode produk obat,   
● product_name: nama produk obat,   
● product_category: kategori produk obat,   
● price: harga obat.  
  
kf_inventory.csv  
● inventory_ID: kode inventory produk obat,  
● branch_id: kode id cabang Kimia Farma,  
● product_id: kode id produk obat,  
● product_name: nama produk obat,  
● opname_stock: jumlah stok produk obat.  
  
kf_kantor_cabang.csv  
● branch_id: kode id cabang Kimia Farma,  
● branch_category: kategori cabang Kimia Farma,  
● branch_name: nama kantor cabang Kimia Farma,  
● kota: kota cabang Kimia Farma,  
● provinsi: provinsi cabang Kimia Farma,  
● rating: penilaian konsumen terhadap cabang Kimia
Farma  
