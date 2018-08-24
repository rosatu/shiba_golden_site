Writer.destroy_all
Language.destroy_all
Story.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   moviesMovie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Writer.create(pen_name: "Eric", password:"iloveeric")
Writer.create(pen_name: "Prince", password:"iloveprince")
Writer.create(pen_name: "Tony", password:"ilovetony")
Writer.create(pen_name: "Tito", password:"ilovetito")
Writer.create(pen_name: "Natsuki", password:"ilovenatsuki")
Writer.create(pen_name: "Rosa", password:"iloverosa")
Writer.create(pen_name: "Scarlett", password:"ilovescarlett")
Writer.create(pen_name: "Nkosi", password:"ilovenkosi")
Writer.create(pen_name: "Gabe", password:"ilovegabe")
Writer.create(pen_name: "Hanz", password:"ilovehanz")
Writer.create(pen_name: "Roberto", password:"iloveroberto")
Writer.create(pen_name: "Masud", password:"ilovemasud")
Writer.create(pen_name: "Kevin", password:"ilovekevin")
Writer.create(pen_name: "Derick", password:"ilovederick")
Writer.create(pen_name: "Isaiah", password:"iloveisaiah")
Writer.create(pen_name: "Tyrell", password:"ilovetyrell")
Writer.create(pen_name: "Jason", password:"ilovejason")
Writer.create(pen_name: "Kyle", password:"ilovekyle")
Writer.create(pen_name: "Winston", password:"ilovewinston")
Writer.create(pen_name: "Amirata", password:"iloveamirata")
Writer.create(pen_name: "Bryan", password:"ilovebryan")
Writer.create(pen_name: "Josue", password:"ilovejosue")

Language.create(name: "Japanese")
Language.create(name: "English")
Language.create(name: "Chinese")
Language.create(name: "Russian")

Story.create(title: "The Hungry Fox", daimei: "ハングリーフォックス", beginning: "Once there was a hungry fox.", ki: "かつて空腹のキツネがあった。", development: "He tried to eat his mom.", shou: "彼は母親を食べようとした。", twist: "But his mom was way too enormous. He could only manage to eat the tip of her tail. Then she scratched him in the eye.", ten: "しかし、彼のお母さんはあまりにも巨大だった。彼は彼女の尾の先端を食べることしかできなかった。それ
ら彼女は目で彼を傷つけた。", conclusion: "Now they are both scarred for life.", ketsu: "今、彼らは両方の人生のために傷ついています。")
Story.create(title: "The Sleepy Bear", daimei: "スリーピーベア")
Story.create(title: "Mod Two Sucked", daimei: "モッド2吸い込ま", beginning:"Once I was in Mod Two.", ki:"かつてMod 2にいた。", development:"It sucked.", shou: "それは吸った。", twist: "It started to get better, but then it sucked more.", ten:"それはより良くなるようになりましたが、それはもっと吸いま
した。", conclusion:"Eventually, it was over.", ketsu: "結局、それは終わった。" )
Story.create(title: "Playground for Poop Heads", daimei: "プープヘッドの遊び場")
Story.create(title: "The Beautiful Flower" , daimei: "美しい花", beginning: "He was the most beautiful flower in th
e whole garden.", ki:"彼は庭全体で最も美しい花でした。", development: "But all the other flowers were jealous
. He had no friends. He was miserable and lonely.", shou: "しかし、他のすべての花は嫉妬していた。彼は友達がいませんでした。彼は悲惨で孤独だった。", twist:"One day, a smelly dog walked up to him and sniffed him. Then it peed on him ", ten: "ある日、臭い犬が彼に向かって歩いてきて、彼を嗅ぎました。それから彼は彼に怒った", conclusion: "It was the happiest moment of his life.", ketsu: "彼の人生の最も幸せな瞬間でした。")
Story.create(title: "Natsuki and Rosas story", beginning: "Once upon a time, Natsuki and Rosa f
ound a dog.", development: "The dog looked at Natsuki and Rosa with a lonesome face.", twist: "And then,
the dog turned from a Shiba Inu into a Golden Retriever.", conclusion: "Happy ending, Happy ending.", daimei: "かつて、NatsukiとRosaは犬を見つけま
た。", ki: "かつて、NatsukiとRosaは犬を見つけました。", shou: "犬は寂しそうな顔で\r\nNatsukiとRosaを見
つめていました。", ten: "そして、犬は柴犬をゴールデンレトリーバーに変えた。そして、それは滝になって、
面的に落ち始めました。", ketsu: "めでたし、めでたし。")
<<<<<<< HEAD
Story.create(title: "Me and Rosa", beginning: "Once upon a time there was me and Rosa.", develo
pment: "And Nikoshi came.", twist: "But Nkosi was rock climbing and he climber too hig...", conclusion
: "And it was only Rosa and Kevin.", daimei: "かつて、私とローザがいました。", ki: "かつて、私とローザがいました。", shou: "そしてニコ
シがきました。", ten: "しかし、Nkosiはロッククライミングであり、彼はあまりにも高く登ると私たちに落ちた
。", ketsu: "そして、ローサとケビンだけだった。")
=======
>>>>>>> natsuki
