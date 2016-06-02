10.times do
  post = Cocktail.new({
                    name: Faker::StarWars.specie
                
                  })
  post.save
end
i = 1;
10.times do
  post2 = Dose.new({
                    description: Faker::Lorem.sentence,
                    cocktail_id: i
                  })
  i += 1
  post2.save
end