# fivem_tarot

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
  Oyuna giriş yaptıktan sonrasında kendinize `tarot_cards` adlı itemi verin sonrasında itemi kullanın ekranınıza 4 adet tarot kartı çıkacaktır.
