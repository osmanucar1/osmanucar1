library(readxl)
library(lmtest)
library(sandwich)
library(lmtest)
library(ggplot2)
library(psych)
library(car)
df <- read_excel("C:/Users/Lenovo/OneDrive/Belgeler/anket_verisi_r_analiz.xlsx")

df$Cinsiyet <- as.factor(df$Cinsiyet )
df$Buyudugunuz.yerlesim.yeri <- as.factor(df$`Buyudugunuz yerlesim yeri`)
df$Brans <- as.factor(df$Brans)
df$Gelir <- as.factor(df$Gelir)
df$Deneyim <- as.factor(df$Deneyim)
df$Sinif <- as.factor(df$Sinif)
df$B1_r <- 6 - df$B1   #ters
df$B5_r <- 6 - df$B5   #ters
df$B6_r <- 6 - df$B6   #ters
df$B7_r <- 6 - df$B7     #ters

b_cols <- paste0("B", 1:7)  
c_cols <- paste0("C", 1:9)   
d_cols <- paste0("D", 1:6)   
f_cols <- paste0("F", 1:10) 
e_cols <- paste0("E", 1:9)

df[b_cols] <- lapply(df[b_cols], as.numeric)
df[c_cols] <- lapply(df[c_cols], as.numeric)
df[d_cols] <- lapply(df[d_cols], as.numeric)
df[f_cols] <- lapply(df[f_cols], as.numeric)
df[e_cols] <- lapply(df[e_cols], function(x) ifelse(x == "Evet", 1, 0))
b_cols <- c("B1_r","B2","B3","B4","B5_r","B6_r","B7_r")

df$algi_skor      <- rowMeans(df[b_cols]) 
df$inanc_skor     <- rowMeans(df[c_cols])
df$kaygi_skor     <- rowMeans(df[d_cols])
df$yeterlik_skor  <- rowMeans(df[f_cols])
df$fiziksel_skor  <- rowMeans(df[e_cols])   

describe(df$yeterlik_skor)
shapiro.test(df$yeterlik_skor)
df$YerlesimYeri <- as.factor(df$`Buyudugunuz yerlesim yeri`)

model1 <- lm(yeterlik_skor ~ Cinsiyet + Sinif + YerlesimYeri + Brans,
             data = df)
summary(model1)


shapiro.test(residuals(model1))
bptest(model1)
dwtest(model1)
vif(model1)

par(mfrow = c(2, 2))
plot(model1)

model2 <- lm(yeterlik_skor ~ Cinsiyet + Sinif + YerlesimYeri + Brans +
               algi_skor + inanc_skor + kaygi_skor + fiziksel_skor,
             data = df)
summary(model2)
anova(model1, model2)

shapiro.test(residuals(model2))
bptest(model2)
dwtest(model2)
vif(model2)


model_bos <- lm(yeterlik_skor ~ 1, data = df)

model_final <- step(model2, 
                    direction = "both",
                    trace = 1)

summary(model_final)

shapiro.test(residuals(model_final))
bptest(model_final)
dwtest(model_final)
vif(model_final)

coeftest(model_final, vcov = vcovHC(model_final, type = "HC3"))




ggplot(df, aes(x = inanc_skor, y = yeterlik_skor, color = Cinsiyet)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "yeterlik~inanc (cinsiyete gore)",
       x = "inanc", y = "yeterlilik") +
  theme_minimal() 
