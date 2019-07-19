# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

Idol.create(
  name: "水瀬伊織",
  age: 15,
  birth: Date.new(9999, 5, 5),
  height: 153,
  weight: 40,
  handed: "右",
  bwh: "77-54-79"
)

idol_data.each do |data|
  create(data)
end

idol_data = [
  { name: "永吉昴", 　　age: 15, birth: Date.new(9999,9,20), height: 154, weight: 41, handed: "左", bwh: "79-59-78" },
  { name: "七尾百合子", age: 15, birth: Date.new(9999,3,18), height: 154, weight: 41, handed: "右", bwh: "78-56-80" },
  { name: "ロコ", 　　　age: 15, birth: Date.new(9999,3,1), height: 154, weight: 42, handed: "右", bwh: "78-57-77" },
  { name: "望月杏奈",  age: 14, birth: Date.new(9999,5,31), height: 152, weight: 41, handed: "右", bwh: "78-53-79" },
  { name: "天空橋朋花", age: 15, birth: Date.new(9999,11,11), height: 156, weight: 41, handed: "左", bwh: "80-56-79" },
  { name: "天海春香",   age: 17, birth: Date.new(9999,4,3), height: 158, weight: 46, handed: "右", bwh: "83-56-82" },
  { name: "如月千早",   age: 16, birth: Date.new(9999,2,25), height: 162, weight: 41, handed: "右", bwh: "72-55-78" },
  { name: "星井美希",   age: 15, birth: Date.new(9999,11,23), height: 161, weight: 45, handed: "右", bwh: "86-55-83" },
  { name: "萩原雪歩",   age: 17, birth: Date.new(9999,12,24), height: 155, weight: 42, handed: "右", bwh: "81-56-81" },
  { name: "高槻やよい", age: 14, birth: Date.new(9999,3,25), height: 145, weight: 37, handed: "右", bwh: "74-54-78" },
  { name: "菊地真",    age: 17, birth: Date.new(9999,8,29), height: 159, weight: 44, handed: "右", bwh: "75-57-78" },
  { name: "四条貴音",   age: 18, birth: Date.new(9999,1,21), height: 169, weight: 49, handed: "右", bwh: "90-62-92" },
  { name: "秋月律子",   age: 19, birth: Date.new(9999,6,23), height: 156, weight: 43, handed: "右", bwh: "85-57-85" },
  { name: "三浦あずさ", age: 21, birth: Date.new(9999,7,19), height: 168, weight: 48, handed: "右", bwh: "91-59-86" },
  { name: "双海亜美", age: 13, birth: Date.new(9999,5,22), height: 158, weight: 42, handed: "右", bwh: "78-55-77" },
  { name: "双海真美", age: 13, birth: Date.new(9999,5,22), height: 158, weight: 42, handed: "左", bwh: "78-55-77" },
  { name: "我那覇響", age: 16, birth: Date.new(9999,10,10), height: 152, weight: 41, handed: "右", bwh: "83-56-80" },
  { name: "春日未来", age: 14, birth: Date.new(9999,6,28), height: 156, weight: 42, handed: "右", bwh: "78-54-77" },
  { name: "最上静香", age: 14, birth: Date.new(9999,9,14), height: 162, weight: 44, handed: "右", bwh: "76-53-77" },
  { name: "伊吹翼", age: 14, birth: Date.new(9999,7,30), height: 158, weight: 43, handed: "左", bwh: "85-52-82" },
  { name: "田中琴葉", age: 18, birth: Date.new(9999,10,5), height: 157, weight: 44, handed: "右", bwh: "79-55-78" },
  { name: "島原エレナ", age: 17, birth: Date.new(9999,10,26), height: 160, weight: 47, handed: "右", bwh: "85-58-86" },
  { name: "佐竹美奈子", age: 18, birth: Date.new(9999,3,22), height: 158, weight: 45, handed: "右", bwh: "86-54-82" },
]
