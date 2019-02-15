# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create!(
    name: "Action"
)

Category.create!(
    name: "Terror"
)

Category.create!(
    name: "Adventure"
)

Movie.create!(
    name: "Need for speed",
    description: Faker::Lorem.sentence([5, 6, 7].sample),
    url: "https://www.youtube.com/watch?v=u3wtVI-aJuw",
    category: Category.all.sample,
    picture: File.new(Rails.root.join('public', 'images', "#{Random.rand(4)}.jpg"), 'r')
)
Movie.create!(
    name: "Batman",
    description: Faker::Lorem.sentence([5, 6, 7].sample),
    url: "https://www.youtube.com/watch?v=u3wtVI-aJuw",
    category: Category.all.sample,
    picture: File.new(Rails.root.join('public', 'images', "#{Random.rand(4)}.jpg"), 'r')
)
Movie.create!(
    name: "Naruto",
    description: Faker::Lorem.sentence([5, 6, 7].sample),
    url: "https://www.youtube.com/watch?v=u3wtVI-aJuw",
    category: Category.all.sample,
    picture: File.new(Rails.root.join('public', 'images', "#{Random.rand(4)}.jpg"), 'r')
)
