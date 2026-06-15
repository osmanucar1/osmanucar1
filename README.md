# Öğretmen Adaylarının Yeterlik Algısı
Bu çalışma, Hacettepe Üniversitesi Eğitim Fakültesi öğrencilerinin (öğretmen adaylarının) sınıf içinde uyum güçlüğü gösteren öğrencilerle çalışmaya yönelik yeterlik algılarını ve bu algıyı açıklayan faktörleri incelemeyi amaçlamaktadır.

## Araştırma Sorusu
Öğretmen adaylarının algı/tutum, eğitimsel inanç, kaygı ve davranışsal tepki düzeyleri; sınıf içi uyum güçlüğü gösteren öğrencilerle çalışmaya yönelik yeterlik algılarını anlamlı biçimde açıklamakta mıdır?

## Örneklem
Çalışmaya Hacettepe Üniversitesi Eğitim Fakültesi'nden **305 öğretmen adayı** katılmıştır.

**Örneklemimizle İlgili Bilgiler**
**Cinsiyet:**        Kadın: 230 (%75.4)   Erkek: 75 (%24.6)                                                                                                    
**Sınıf:**           1. sınıf: 45   2. sınıf: 107   3. sınıf: 83   4. sınıf: 57   Artık yıl: 13
**Yerleşim Yeri:**   Şehir: 185 (%60.7)   İlçe: 86 (%28.2)   Köy: 34 (%11.1)                                                                                                    
**Branş:**           16 farklı öğretmenlik programı

### **Örneklem Uyarısı:**
Yerleşim yeri açısından köy kökenli katılımcı sayısı (n=34) diğer gruplara kıyasla oldukça düşüktür. Bu nedenle yerleşim yerine göre yapılan karşılaştırmalarda gruplar arası denge sağlanamamış olup bulgular ihtiyatla yorumlanmalıdır.
Branş değişkeninde 16 farklı program yer almakta; Fizik (n=13), Türkçe (n=13) ve Biyoloji (n=6) gibi branşlarda katılımcı sayısı oldukça sınırlıdır. Bu branşlara özgü karşılaştırmalar istatistiksel güç açısından yetersiz kalabilir.

## Betimleyici İstatistikler

Ölçek                                | Ort. | SS   | Min  | Max  |
Algı/Tutum (`algi_skor`)             | 3.29 | 0.48 | 2.00 | 4.71 |
Eğitimsel İnanç (`inanc_skor`)       | 3.69 | 0.70 | 1.44 | 4.78 |
Kaygı (`kaygi_skor`)                 | 2.82 | 0.93 | 1.00 | 5.00 |
Yeterlik (`yeterlik_skor`)           | 3.56 | 0.77 | 1.00 | 5.00 |
Davranışsal Tepki (`fiziksel_skor`)  | 0.63 | 0.12 | 0.00 | 1.00 |

> Tüm ölçekler 1–5 aralığında puanlanmıştır (fiziksel_skor: 0–1 oranı).


## Kullanılan Değişkenler

### Bağımlı Değişken: 
yeterlik_skor (mesleki yeterlik algısı)

### Bağımsız Değişkenler:
inanc_skor (Eğitimsel inanç), 
algi_skor (Uyum güçlüğü gösteren öğrenciye yönelik algı), 
kaygi_skor (Duygusal tepki/kaygı düzeyi), 
fiziksel_skor (Davranışsal tepki), 
Cinsiyet, Sinif, Brans, Yerlesim Yeri

## Model Süreci
Üç aşamalı hiyerarşik regresyon yaklaşımı uygulanmıştır:

### Model 1      — Yalnızca demografik değişkenler
### Model 2      — Demografik + psikolojik ölçek puanları
### Model Final  — AIC'yi minimize eden iki yönlü adım adım seçim 

## Final Model Denklemi

yeterlilik_skor =  0.778 + 0.787inanc_skor - 0.161cinsiyet(kadin)

## Temel Bulgular
1-) Model, yeterlik algısındaki varyansın yaklaşık %51'ini açıklamaktadır. (R² = 0.511) Yaklaşık %49'luk kısım ise başka bağımsız değişkenler tarafından açıklanmaktadır.
2-) Model istatistiksel olarak anlamlıdır. {F(2, 302) = 158, p < .001}
3-) Eğitimsel inanç puanı anlamlı bulunmuştur. (B = 0.787, p < .001) Eğitimsel inanç skoru arttıkça yeterlilik algısı artar.
4-) Cinsiyet anlamlı bulunmuştur (B = −0.161, p = .027); kadın adaylar erkeklere kıyasla kendilerini biraz daha az yeterli hissetmektedir.
5-) Algı, kaygı ve davranışsal tepki puanları; eğitimsel inanç modele girince anlamlılığını yitirmiştir.

## Sınırlılıklar

- Örneklem **tek bir fakülte** ile sınırlıdır; bulgular tüm öğretmen adaylarına genellenemez.
- Toplam 305 katılımcı, genel model için yeterli olmakla birlikte **branş ve yerleşim yeri bazında alt grup analizleri** için yetersiz kalmaktadır. Özellikle Biyoloji (n=6), Türkçe (n=13) ve Fizik (n=13) branşlarındaki düşük katılımcı sayısı, bu gruplara ait bulguların güvenilirliğini zayıflatmaktadır.
- Köy kökenli katılımcıların oranı (n=34, %11.1) şehir ve ilçe gruplarına kıyasla oldukça düşük olup yerleşim yerine göre anlamlı farklılık saptanmasa dahi bu bulgu yetersiz istatistiksel güçten kaynaklanıyor olabilir.
- Yeterlik algısı **öz-bildirime** dayalı ölçülmüştür; gerçek sınıf performansıyla doğrudan örtüşmeyebilir.

## Kullanılan Teknolojiler
Dil: R
Paketler: readxl, lmtest, sandwich, ggplot2, car (vif)
Yöntem: OLS regresyon, Breusch-Pagan testi, Durbin-Watson testi, VIF, robust standart hatalar (HC3)

## Etik Not
Veri seti gerçek katılımcılardan elde edilmiştir. Gizlilik ve etik gerekçelerle bu depoda yalnızca analiz kodları ve model çıktıları paylaşılmaktadır; ham veri yer almamaktadır.

## Yazar

**Osman Uçar**  
Hacettepe Üniversitesi — İstatistik
[github.com/osmanucar1](https://github.com/osmanucar1)
