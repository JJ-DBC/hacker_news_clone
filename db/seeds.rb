20.times do |x|
  user = User.create(username:Faker::Internet.user_name, password:"password", password_confirmation: "password")

  post = Post.create(title:Faker::Lorem.words.join(" "), body:Faker::Lorem.sentences.join(" "))

  comment = Comment.create(body: Faker::Lorem.sentence)

  user.posts << post
  user.comments << comment
end
