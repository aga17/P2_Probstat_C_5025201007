# Sejatui Bakti Raga
# 5025201007
# PROBSTAT c

# NO 1
# 1.A
bfr <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
afr <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
sd_bfr <- sd(bfr)
sd_bfr
sd_afr <- sd(afr)
sd_afr
sd(bfr - afr)

# 1.B
bfr
t.test(bfr, afr, alternative = "greater", var.equal = FALSE)

# 1.C
var.test(bfr, afr)
t.test(bfr, afr, mu = 0, alternative = "two.sided", var.equal = TRUE)


# NO 2
install.packages("BSDA")
library(BSDA)

# 2.A
# Setuju.

# 2.B
tsum.test(mean.x = 23500, sd(3900), n.x = 100)

# 2.C
# Rata-rata : Mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.


# NO 3
# 3.A
# H0 dan H1
# H0 = 9.50 && H1 = 10.98

# 3.B
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)

# 3.C
install.packages("mosaic")
library(mosaic)
plotDist(dist = 't', df = 2, col = "blue")

# 3.D
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

# 3.E
# Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. 

# 3.F
# Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.


# N0 4
# 4.A
data4 <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt%22),header   = TRUE, check.names = TRUE)
    byGroup <- split(data4, data4$Group)
    byGroup
    group1 <- byGroup$`1`
    group2 <- byGroup$`2`
    group3 <- byGroup$`3`
  
  # 4.B
    hist(group1$Length, xlim = c(16, 20))
    hist(group2$Length, xlim = c(16, 20))
    hist(group3$Length, xlim = c(16, 20))
  
  # 4.C
    bartlett.test(data4$Length, data4$Group)
  
  # 4.D
    model1 <- lm(data4$Length, data4$Group)
    summary(model1)
  
  # 4.E
    av <- aov(Length ~ factor(Group), data = data4)
    TukeyHSD(av)
  
  # 4.F
    library(ggplot2)
    ggplot(data4, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
      scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")
  
    
# NO 5
    install.packages("multcompView")
    install.packages("ggplot2")
    install.packages("readr")
    install.packages("dplyr")
    library(readr)
    library(ggplot2)
    library(multcompView)
    library(dplyr)
    
  
  # 5.A
    GTL <- read_csv("GTL.csv")
    head(GTL)
    str(GTL)
    
    qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
  
  # 5.B
    GTL$Glass <- as.factor(GTL$Glass)
    GTL$Temp_Factor <- as.factor(GTL$Temp)
    str(GTL)
    
    anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
    summary(anova)
  
  # 5.C
    dataTable <- group_by(GTL, Glass, Temp) %>% summarise(mean = mean(Light), sd = sd(Light)) %>% arrange(desc(mean))
    print(dataTable)
  
  # 5.D
    tukeyTest <- TukeyHSD(anova)
    print(tukeyTest)
  
  # 5.E
    tukeyTest.cldData <- multcompLetters4(anova, tukeyTest)
    print(tukeyTest.cldData)
    
    cld <- as.data.frame.list(tukeyTest.cldData$`Glass:Temp_Factor`)
    dataTable$tukeyTest <- cld$Letters
    print(dataTable)

    write.csv("GTL_summary.csv")