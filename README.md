# Fivem Tarot Script

Bu script, **QB-Core** framework'ü ile uyumlu bir **tarot kartı** itemini oyuna ekler.
  
## Kurulum

1. **Item'in Eklenmesi:**
   - QB-Core'in item listesine aşağıda belirtilen kodu ekleyin:

   ```lua
   ['tarot_cards'] = { name = 'tarot_cards', label = 'Tarot Destesi', weight = 0, type = 'item', image = 'tarot_cards.png', unique = false, useable = true, shouldClose = true, description = 'İçerisinde tarot kartları olan bir kutu' }

2. **İtem'in Resminin Eklenmesi:**
   QB-Inventory item resimlerinin bulunduğu klasöre ana klasörde bulunan `tarot_cards.png` dosyasını aktarın.

3. **Script'in Başlatılması:**
   Sunucu dosyalarınızda bulunan server.cfg klasörünün içerisine `ensure fivem_tarot` kodunu ekleyin.

## Kullanım
  Oyuna giriş yaptıktan sonrasında kendinize `tarot_cards` adlı itemi verin sonrasında itemi kullanın ekranınıza 4 adet tarot kartı çıkacaktır. Her bir kart %30 ihtimal ile ters çıkabilir gerçek hayattaki ters çıktığı zamanki yorumlamayı tarot kartı çeken kişiler kendine göre yapabilir.

## Örnek Fotoğraflar

  ![image](https://github.com/user-attachments/assets/1b52b42d-a49c-46ed-8685-a226d6cb923a)
  ![image](https://github.com/user-attachments/assets/de235779-a73f-49e1-a0e6-32374a42d245)
