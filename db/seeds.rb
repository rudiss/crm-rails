@user = User.create(email: "teste@teste.com", password: "123321", password_confirmation: "123321", first_name: "Jhon", last_name: "Snow")

puts "1 User created"

 AdminUser.create(email: "admin@test.com", password: "123321", password_confirmation: "123321", first_name: "Anakin", last_name: "Skywalker")

puts "1 AdminUser  created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5 )
end

puts "100 post has been created!"
