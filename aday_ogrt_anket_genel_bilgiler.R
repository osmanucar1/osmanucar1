library(readxl)
df <- read_excel("C:/Users/Lenovo/OneDrive/Belgeler/anket_verisi_r_analiz.xlsx")
dim(df)          
names(df) 
df$B1_r <- 6 - df$B1
df$B5_r <- 6 - df$B5
df$B6_r <- 6 - df$B6
df$B7 <- 6 - df$B7

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

df$algi_skor     <- rowMeans(df[, c("B1_r", "B2", "B3", "B4", "B5_r", "B6_r", "B7")])
df$inanc_skor    <- rowMeans(df[c_cols])
df$kaygi_skor    <- rowMeans(df[d_cols])
df$yeterlik_skor <- rowMeans(df[f_cols])
df$fiziksel_skor <- rowMeans(df[e_cols])
describe(df[, c("algi_skor", "inanc_skor", "kaygi_skor", "yeterlik_skor", "fiziksel_skor")])

table(df$Cinsiyet)

table(df$Sinif)

table(df$Brans)

table(df$`Buyudugunuz yerlesim yeri`)
