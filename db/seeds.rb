Film.destroy_all
Year.destroy_all

11.times do |i|
  @year = 2000 + i
  Year.create!(year: @year)
  @year_id = Year.last.id
  10.times do |i|
    @title = Faker::Name.last_name
    @director = Faker::Name.name
    @date = Faker::Date.between(19.year.ago, Date.today)
    @genre = Faker::HeyArnold.character
    @gross = Faker::Number.number(10)
    Film.create!(year_id: @year_id, title: @title, director: @director, release_date: @date, genre: @genre, opening_gross: @gross)
  end
end


p "Created #{Film.count} films"
p "Created #{Year.count} years"
