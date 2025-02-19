CREATE TABLE `urunler` (
    urun_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    urun_adi varchar(75) NOT NULL,
    urun_fiyati float DEFAULT NULL,
    urun_aciklama text DEFAULT NULL,
    eklenme_tarihi datetime NOT NULL,
    guncellenme_tarihi datetime DEFAULT NULL
); 

 CREATE TABLE stok (
    stok_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    urun_id INT NOT NULL,
    stok_miktari INT,
    olusurma_tarihi DATETIME NOT NULL,
    güncelleme_tarihi DATETIME,
    FOREIGN KEY (urun_id) REFERENCES urunler(urun_id)
);

CREATE TABLE kategori (
    kategori_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    urun_kategori_adi VARCHAR(75) NOT NULL,
    aciklama TEXT
);

CREATE TABLE urunler_kategori (
    urun_id INT,
    kategori_id INT,
    PRIMARY KEY (urun_id, kategori_id),
    FOREIGN KEY (urun_id) REFERENCES urunler(urun_id),
    FOREIGN KEY (kategori_id) REFERENCES kategori(kategori_id)
);

CREATE TABLE urun_ozellikleri (
    ozellik_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    urun_id INT NOT NULL,
    ozellik VARCHAR(255),
    FOREIGN KEY (urun_id) REFERENCES urunler(urun_id)
);