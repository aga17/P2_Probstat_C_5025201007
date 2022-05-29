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
```R
qchisq(p = 0.05, df = 2, lower.tail = FALSE)
```
[10]

### e
Keputusan 
_Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian._

### f
Kesimpulan
_Kesimpulan yang dapat diambil adalah bahwa perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada namun tidak signifikan jika dipengaruhi nilai kritikal._

## Nomer 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika : 
diketahui dataset https://intip.in/datasetprobstat1 H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama 
Maka Kerjakan atau Carilah: 
### a
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians. 
```R
data4 <-read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt%22),header    = TRUE, check.names = TRUE)
    byGroup <- split(data4, data4$Group)
    byGroup
    group1 <- byGroup$`1`
    group2 <- byGroup$`2`
    group3 <- byGroup$`3`
```
[11]

### b
carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ? 
```R
hist(group1$Length, xlim = c(16, 20))
hist(group2$Length, xlim = c(16, 20))
hist(group3$Length, xlim = c(16, 20))
```
### c
Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1. 
```R
bartlett.test(data4$Length, data4$Group)
```
### d
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0? 
```R
model1 <- lm(data4$Length, data4$Group)
summary(model1)
```
### e
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan. 
```R
av <- aov(Length ~ factor(Group), data = data4)
TukeyHSD(av)
```
### f
Visualisasikan data dengan ggplot2
```R
library(ggplot2)
ggplot(data4, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")
```

## Nomer 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut: 
```R
install.packages("multcompView")
install.packages("ggplot2")
install.packages("readr")
install.packages("dplyr")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)
```

### a
Buatlah plot sederhana untuk visualisasi data 
```R
GTL <- read_csv("GTL.csv")
head(GTL)
str(GTL)
    
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
```
### b
Lakukan uji ANOVA dua arah 
```R
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)
    
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)
```
### c
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi) 
```R
dataTable <- group_by(GTL, Glass, Temp) %>% summarise(mean = mean(Light), sd = sd(Light)) %>% arrange(desc(mean))
print(dataTable)
```
### d
Lakukan uji Tukey 
```R
tukeyTest <- TukeyHSD(anova)
print(tukeyTest)
```
### e
Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
```R
tukeyTest.cldData <- multcompLetters4(anova, tukeyTest)
print(tukeyTest.cldData)
    
cld <- as.data.frame.list(tukeyTest.cldData$`Glass:Temp_Factor`)
dataTable$tukeyTest <- cld$Letters
print(dataTable)

write.csv("GTL_summary.csv")
```

