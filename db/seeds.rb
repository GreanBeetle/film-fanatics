Film.destroy_all

50.times do |i|
  @title = Faker::Name.last_name
  @director = Faker::Name.name
  @date = Faker::Date.between(15.year.ago, Date.today)
  @genre = Faker::HeyArnold.character
  @gross = Faker::Number.decimal(6,2)
  @year_id = Faker::Number.between(2000,2010)
  Film.create!(year_id: @year_id, title: @title, director: @director, release_date: @date, genre: @genre, opening_gross: @gross)
end

p "Created #{Film.count} films"
