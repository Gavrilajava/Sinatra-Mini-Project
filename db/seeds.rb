App.destroy_all
User.destroy_all
Install.destroy_all
Category.destroy_all


Category.create(name: "Games")
Category.create(name: "Business")
Category.create(name: "Entertainment")
Category.create(name: "Medical")
Category.create(name: "Music")
Category.create(name: "Finance")
Category.create(name: "Sports")
Category.create(name: "Social")

#
20.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, age: rand(8...90))
end

100.times do
  App.create(name: Faker::App.name, version: Faker::App.version, category_id: Category.all.sample.id, price: rand(1.0...100.0).round(2), age_limit: rand(0...21))
end

User.all.each { |user|
  app_count = rand(5...15)
  app_count.times do
    rand_app = App.all.sample
    if rand_app.age_limit < user.age
      Install.create(user_id: user.id, app_id: rand_app.id)
    end
  end
}
