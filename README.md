### Öğretmen Adaylarının Yeterlik Algısı
Bu çalışma, Hacettepe Üniversitesi Eğitim Fakültesi öğrencilerinin (öğretmen adaylarının) sınıf içinde uyum güçlüğü gösteren öğrencilerle çalışmaya yönelik yeterlik algılarını ve bu algıyı açıklayan faktörleri incelemeyi amaçlamaktadır.

## Araştırma Sorusu
Öğretmen adaylarının algı/tutum, eğitimsel inanç, kaygı ve davranışsal tepki düzeyleri; sınıf içi uyum güçlüğü gösteren öğrencilerle çalışmaya yönelik yeterlik algılarını anlamlı biçimde açıklamakta mıdır?

## Kullanılan Değişkenler

# Bağımlı Değişken: 
yeterlik_skor (mesleki yeterlik algısı)

# Bağımsız Değişkenler:
inanc_skor (Eğitimsel inanç), 
algi_skor (Uyum güçlüğü gösteren öğrenciye yönelik algı), 
kaygi_skor (Duygusal tepki/kaygı düzeyi), 
fiziksel_skor (Davranışsal tepki), 
Cinsiyet, Sinif, Brans, Yerlesim Yeri

## Model Süreci
Üç aşamalı hiyerarşik regresyon yaklaşımı uygulanmıştır:

Model 1 (Temel) — Yalnızca demografik değişkenler
Model 2 (Genişletilmiş) — Demografik + psikolojik ölçek puanları
Model Final — AIC'yi minimize eden iki yönlü adım adım seçim 

## Temel Bulgular
R² = 0.511 → Model, yeterlik algısındaki varyansın ~%51'ini açıklamaktadır
Model istatistiksel olarak anlamlıdır {F(2, 302) = 158, p < .001} 
En güçlü yordayıcı: eğitimsel inanç puanı (B = 0.787, p < .001)
Cinsiyet anlamlı bulunmuştur (B = −0.161, p = .027); kadın adaylar erkeklere kıyasla kendilerini biraz daha az yeterli hissetmektedir.
Algı, kaygı ve davranışsal tepki puanları; eğitimsel inanç modele girince anlamlılığını yitirmiştir.

## Kullanılan Teknolojiler
Dil: R
Paketler: readxl, lmtest, sandwich, ggplot2, car (vif)
Yöntem: OLS regresyon, Breusch-Pagan testi, Durbin-Watson testi, VIF, robust standart hatalar (HC3)

## Etik Not
Veri seti gerçek katılımcılardan elde edilmiştir. Gizlilik ve etik gerekçelerle bu depoda yalnızca analiz kodları ve model çıktıları paylaşılmaktadır; ham veri yer almamaktadır.
