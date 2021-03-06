# Clear the records firstly
Physician.delete_all

# Here are some of famous physicians in ancient China: 李时珍, 张仲景, 扁鹊
Physician.create([
  { name: 'ShizhenLi', introduction: 'A famous doctor in Ming Dynasty, the author of Compendium of Materia Medica.' },
  { name: 'ZhongjingZhang', introduction: "A famous doctor in Eastern Han Dynasty, wrote the book Treatise on Febrile and Miscellaneous Diseases" },
  { name: 'QueBian', introduction: "A highly skilled doctor in the Warring States Period" }
])

# and 华佗,
p = Physician.create(name: 'TuoHua', introduction: "A very famous doctor in ancient China, his name had been a symbol of magic doctor" )
# He ever treated some named patients in his time, Three Kingdoms:
# 曹操, 关羽, 陈登, 周泰
p.patients.create([{ name: 'CaoCao' }, { name: 'YuGuan' }, { name: 'DengChen' }, { name: 'TaiZhou' }])

puts 'Physician seeded!'
