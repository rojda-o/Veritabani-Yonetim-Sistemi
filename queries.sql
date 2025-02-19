--INNER JOIN kullanarak ürünleri, kategorileri ile birlikte çekeriz.
/*
"urunler" ve "kategori" tabloları arasında (M:N) ilişkisi olduğu için ara tablo olan
"urunler_kategori" tablosunu da kullanarak her üç tabloda ortak olarak bulunan "urun_id"
niteliği ile bu işlemi gerçekleştirebiliriz.
*/
SELECT u.urun_adi, k.urun_kategori_adi
FROM urunler u                         --"urunler" yerine "u" kullanırız
INNER JOIN urunler_kategori uk ON u.urun_id = uk.urun_id --"urunler_kategori" yerin "uk"
INNER JOIN kategori k ON uk.kategori_id = k.kategori_id; --"kategrori" yerine "k"


--LEFT JOIN kullanarak ürünleri, özellikleri ile birlikte çekeriz.
SELECT u.urun_adi, oz.ozellik
FROM urunler u
LEFT JOIN urun_ozellikleri oz ON u.urun_id = oz.urun_id; 
