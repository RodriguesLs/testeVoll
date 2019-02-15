namespace :dev do
    
    desc "Initial setup"
    
        task generate_movies: :environment do
            p "Register movies"
            10.times do
                Movie.create!(
                    name: Faker::Name.name,
                    description: Faker::Lorem.sentence([1, 2].sample),
                    url: Faker::Internet.url,
                    picture: File.new(Rails.root.join('public', 'images-movies', "#{Random.rand(4)}.jpg"),'r')
                )
                p "Movies registred successfull!"
        end
    end
end