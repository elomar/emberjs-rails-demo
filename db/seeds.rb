# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tip.create!(
  name: 'Elomar Souza', 
  email: 'elomar@elomar.me',
  title: 'Ponta Negra',
  body: "Don't forget to visit Ponta Negra! It's a very beautiful beach.")

Fact.create!(
  name: 'Country',
  value: 'Brazil');
  
Fact.create!(
  name: 'Region',
  value: 'Northeast');

Fact.create!(
  name: 'State',
  value: 'RN');

Fact.create!(
  name: 'Population',
  value: '~ 1.4 million');

(1..6).each do |i|
  Picture.create!(
    title: 'Picture of Natal, Brazil',
    picture: File.open(Rails.root.join('db', 'seeds', 'images', "#{i}.jpg")))
end
