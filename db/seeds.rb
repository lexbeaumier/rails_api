# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Article.destroy_all
User.destroy_all

5.times do |t|
  user = User.create!(
    email: "email$#{t}@gmail.com",
    password: "email$#{t}@gmail.com",
    password_confirmation: "email$#{t}@gmail.com"
  );
end

  

30.times do 
  article = Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.sentence(word_count: 6),
    user_id: User.all.sample.id
  );
end  

