# P2_Probstat_C_5025201007

## Nama: Sejati bakti raga
## NRP: 5025201007
## Kelas: Probstat C

# Praktikum 2

## Nomer 1

Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

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
standar deviasi setelah aktivitas
```R
sd_afr <- sd(afr)
sd_afr
```
selisih standar deviasi sebelum dan sesudah
```R
sd(bfr - afr)
```
### b
carilah nilai t (p-value)
### c
tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
