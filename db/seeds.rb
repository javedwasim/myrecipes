require 'faker'

10.times do
  chefname = Faker::Name.name      #=> "Christophe Bartell"
  email = Faker::Internet.email #=> "kirsten.greenholt@corkeryfisher.info"

  chefs = Chef.new(
    chefname: chefname,
    email: email
  )
  chefs.save
end

10.times do
  name = Faker::Name.name      #=> "Christophe Bartell"
  summary = Faker::Lorem.paragraph
  description = Faker::Lorem.sentence
  chef_id = Faker::Number.between(from: 1, to: 10) #=> 7

  recipes = Recipe.new(
    name: name,
    summary: summary,
    description: description,
    chef_id: chef_id,
  )
  recipes.save
end
