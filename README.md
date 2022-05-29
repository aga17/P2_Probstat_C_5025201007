# P2_Probstat_C_5025201007

Nama: Sejati bakti raga
NRP: 5025201007
Kelas: Probstat C

# Praktikum 2

## Nomer 1

Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

[1]

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

### a
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

masukan data yang telah disediakan
```R
    bfr <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
    afr <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
```
standar deviasi sebelum aktivitas
```R
sd_bfr <- sd(bfr)
sd_bfr
```
[2]

standar deviasi setelah aktivitas
```R
sd_afr <- sd(afr)
sd_afr
```
[3]

selisih standar deviasi sebelum dan sesudah
```R
sd(bfr - afr)
```
[4]

### b
carilah nilai t (p-value)
```R
bfr
t.test(bfr, afr, alternative = "greater", var.equal = FALSE)
```
[5]

### c
tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
```R
var.test(bfr, afr)
t.test(bfr, afr, mu = 0, alternative = "two.sided", var.equal = TRUE)
```
[6]

## Nomer 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

### a
Apakah Anda setuju dengan klaim tersebut?
_SETUJU_

### b
Jelaskan maksud dari output yang dihasilkan!
```R
tsum.test(mean.x = 23500, sd(3900), n.x = 100)
```
[7]

### c
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
_Rerata: Mobil dikemudikan rata-rata lebih dari 20.000 kilometer setiap tahun._

## Nomer 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

[8]

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

### a
H0 dan H1 
_H0 = 9.50 && H1 = 10.98_

### b
Hitung Sampel Statistik 
```R
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
```
[8]

### c
Lakukan Uji Statistik (df =2) 
```R
install.packages("mosaic")
library(mosaic)
plotDist(dist = 't', df = 2, col = "blue")
```
[9]

### d
Nilai Kritikal 
### e
Keputusan 
### f
Kesimpulan

