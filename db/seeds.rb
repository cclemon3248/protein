User.create!(name: "ジュノ", email: "cclemon3248@gmail.com", password: "password1", admin: true)

10.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               )
end


Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる豚レバー", protein: 39.9, calorie: 371, price: 343.44, image: File.open("app/assets/images/seven/7001.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れるチキン＆チリ", protein: 24.9, calorie: 247, price: 388.8, image: File.open("app/assets/images/seven/7002.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる豆乳茶碗蒸し", protein: 19.1, calorie: 157, price: 345.6, image: File.open("app/assets/images/seven/7003.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる グリルチキン弁当", protein: 47.6, calorie: 430, price: 626.4, image: File.open("app/assets/images/seven/7004.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる 豚しゃぶサラダ", protein: 12.8, calorie: 133, price: 429.84, image: File.open("app/assets/images/seven/7005.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる　蒸し鶏サラダ", protein: 15.1, calorie: 181, price: 399.6, image: File.open("app/assets/images/seven/7006.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"♪全粒粉たんぱく質が摂れるチキン＆エッグ", protein: 27.5, calorie: 332, price: 375.84, image: File.open("app/assets/images/seven/7007.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる　砂肝ポン酢", protein: 9.5, calorie: 57, price: 289.44, image: File.open("app/assets/images/seven/7008.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる　レバニラ炒め", protein: 30.5, calorie: 245, price: 345.6, image: File.open("app/assets/images/seven/7009.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れるよだれ鶏", protein: 33.7, calorie: 211, price: 399.6, image: File.open("app/assets/images/seven/7010.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる鶏むね肉サラダ", protein: 25.1, calorie: 189, price: 442.8, image: File.open("app/assets/images/seven/7011.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる　蒸し鶏のサラダ", protein: 18.8, calorie: 169, price: 432, image: File.open("app/assets/images/seven/7012.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れるピリ辛蒸し鶏", protein: 21.3, calorie: 198, price: 280.8, image: File.open("app/assets/images/seven/7013.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる浪花の肉吸い", protein: 14.9, calorie: 142, price: 345.6, image: File.open("app/assets/images/seven/7014.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる　鶏のさっぱり煮", protein: 18.1, calorie: 185, price: 321.84, image: File.open("app/assets/images/seven/7015.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる　お出汁香る茶碗蒸し", protein: 14.4, calorie: 127, price: 356.4, image: File.open("app/assets/images/seven/7016.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる　やみつき韓国風冷奴", protein: 16, calorie: 195, price: 345.6, image: File.open("app/assets/images/seven/7017.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れるゆでたまごと蒸し鶏", protein: 19.6, calorie: 168, price: 267.84, image: File.open("app/assets/images/seven/7018.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる　ねぎ塩グリルチキン弁当", protein: 49.9, calorie: 461, price: 626.4, image: File.open("app/assets/images/seven/7019.jpeg"))
Task.create!(user_id:1, store: "セブンイレブン", name:"たんぱく質が摂れる　おつまみ道産豚レバー", protein: 30, calorie: 332, price: 321.84, image: File.open("app/assets/images/seven/7020.jpeg"))


Task.create!(user_id:1, store: "ローソン", name: "ねぎ塩豚カルビ弁当(もち麦入りご飯)", protein: 21.6, calorie: 586, price: 430, image: File.open("app/assets/images/lawson/6001.png"))
Task.create!(user_id:1, store: "ローソン", name: "これがのり弁当", protein: 26.7, calorie: 855, price: 497, image: File.open("app/assets/images/lawson/6002.png"))
Task.create!(user_id:1, store: "ローソン", name: "これがチキン南蛮弁当", protein: 32.6, calorie: 917, price: 646, image: File.open("app/assets/images/lawson/6003.png"))
Task.create!(user_id:1, store: "ローソン", name: "これが鶏竜田揚げ弁当", protein: 30.8, calorie: 853, price: 599, image: File.open("app/assets/images/lawson/6004.png"))
Task.create!(user_id:1, store: "ローソン", name: "これが厚切り豚焼肉弁当", protein: 31.3, calorie: 679, price: 646, image: File.open("app/assets/images/lawson/6005.png"))
Task.create!(user_id:1, store: "ローソン", name: "これが豚生姜焼弁当", protein: 26.1, calorie: 747, price: 599, image: File.open("app/assets/images/lawson/6006.png"))
Task.create!(user_id:1, store: "ローソン", name: "これがハンバーグ弁当", protein: 28.2, calorie: 709, price: 599, image: File.open("app/assets/images/lawson/6007.png"))
Task.create!(user_id:1, store: "ローソン", name: "これがハンバーグ弁当", protein: 18, calorie: 590, price: 599, image: File.open("app/assets/images/lawson/6008.png"))
Task.create!(user_id:1, store: "ローソン", name: "これがシュウマイ弁当", protein: 25.5, calorie: 707, price: 599, image: File.open("app/assets/images/lawson/6009.png"))
Task.create!(user_id:1, store: "ローソン", name: "グリル満天星お墨付き　オムライス", protein: 17.5, calorie: 638, price: 599, image: File.open("app/assets/images/lawson/6010.png"))

Task.create!(user_id:1, store: "ファミリーマート", name: "直火焼チャーシュー丼", protein: 15.4, calorie: 476, price: 356, image: File.open("app/assets/images/family/5001.jpeg"))
Task.create!(user_id:1, store: "ファミリーマート", name: "ふんわりたまごとだしが決め手の親子丼", protein: 17.7, calorie: 477, price: 450, image: File.open("app/assets/images/family/5002.jpeg"))
Task.create!(user_id:1, store: "ファミリーマート", name: "二段仕込みで旨みしみ込む炙り焼チキンステーキ弁当", protein: 39.2, calorie: 817, price: 598, image: File.open("app/assets/images/family/5003.jpeg"))
Task.create!(user_id:1, store: "ファミリーマート", name: "4種の醤が決め手 四川風麻婆豆腐丼", protein: 16.5, calorie: 500, price: 430, image: File.open("app/assets/images/family/5004.jpeg"))
Task.create!(user_id:1, store: "ファミリーマート", name: "鶏そぼろ弁当", protein: 15.2, calorie: 432, price: 298, image: File.open("app/assets/images/family/5005.jpeg"))
Task.create!(user_id:1, store: "ファミリーマート", name: "黒米入りご飯の豆腐ハンバーグ弁当", protein: 16.5, calorie: 515, price: 498, image: File.open("app/assets/images/family/5006.jpeg"))
Task.create!(user_id:1, store: "ファミリーマート", name: "ファミマトクトク弁当 直火焼チャーシュー丼", protein: 15.4, calorie: 476, price: 356, image: File.open("app/assets/images/family/5007.jpeg"))
Task.create!(user_id:1, store: "ファミリーマート", name: "冷しとろろそば", protein: 14.1, calorie: 307, price: 460, image: File.open("app/assets/images/family/5008.jpeg"))
Task.create!(user_id:1, store: "ファミリーマート", name: "ファミマトクトク弁当 ビビンバ重", protein: 14.4, calorie: 470, price: 356, image: File.open("app/assets/images/family/5009.jpeg"))
Task.create!(user_id:1, store: "ファミリーマート", name: "さわら西京焼弁当", protein: 19.7, calorie: 525, price: 530, image: File.open("app/assets/images/family/5010.jpeg"))