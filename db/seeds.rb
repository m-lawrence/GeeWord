# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Contribution.destroy_all
# Story.destroy_all
# User.destroy_all
WordGenerator.destroy_all

# 10.times do 
#     User.create(username: Faker::FunnyName.name, location: Faker::Nation.capital_city, image: Faker::LoremFlickr.image(size: "100x100", search_terms: ['animals']))
# end

# 10.times do
# Story.create(title: Faker::Game.title, content: Faker::Hipster.paragraph_by_chars(characters: 200, supplemental: false), user_id: User.all.sample.id)
# end

# 10.times do
#     Contribution.create(contributor_content: Faker::Hipster.paragraph_by_chars(characters: 200, supplemental: false), user_id: User.all.sample.id, story_id: Story.all.sample.id)
# end

10.times do
    WordGenerator.create(word: Faker::Hipster.word)
end

5.times do
    WordGenerator.create(word: Faker::Relationship.familial)
end


5.times do
    WordGenerator.create(word: Faker::Verb.base)
end

5.times do
    WordGenerator.create(word: Faker::Verb.past)
end

5.times do
    WordGenerator.create(word: Faker::Verb.past_participle)
end

5.times do
    WordGenerator.create(word: Faker::Verb.simple_present)
end

5.times do
    WordGenerator.create(word: Faker::Verb.ing_form)
end

3.times do
    WordGenerator.create(word: Faker::Space.planet)
end

3.times do
    WordGenerator.create(word: Faker::Space.moon)
end

3.times do
    WordGenerator.create(word: Faker::Space.galaxy)
end

10.times do
    WordGenerator.create(word: Faker::Superhero.name)
end

5.times do
    WordGenerator.create(word: Faker::Creature::Animal.name)
end

5.times do
    WordGenerator.create(word: Faker::Music.instrument)
end

5.times do
    WordGenerator.create(word: Faker::House.furniture)
end


5.times do
    WordGenerator.create(word: Faker::Ancient.god)
end