# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all
puts "Adding contents to Table: Articles"
10.times do |n|
	random_number = rand(1..25)
	image_link = UiFaces.face
	nickname = image_link.split("/")[-2]
  Article.create(
  	:title => Faker::Lorem.sentence.to_s,
  	:about => Faker::Lorem.paragraph(1).to_s,
  	:created_at => Faker::Date.backward(random_number),
  	:updated_at => Faker::Date.backward(random_number),
  	:user_picture_link => image_link, 
  	:user_name => nickname,
  	:country => Faker::Address.country.to_s
  	)
end

articles_ids = Article.ids.shuffle.first(3)
articles_ids.each do |n|
	article = Article.find(n)
  article.about = Bereshit.paragraphs(1, true, false, 'hebrew')
  article.save! 
end

puts "Adding contents to Table: Images"
40.times do |n|
  Image.create(
  	img: UiFaces.face(false)
  	)
end
