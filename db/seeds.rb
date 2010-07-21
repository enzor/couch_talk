require 'faker'

10.times do 
  User.create(
  :login => Faker::Name.name,
  :password => Faker::Name.prefix,
  :email => Faker::Internet.email,
  :created_at => DateTime.now
  )
end


20.times do 
  Post.create(
    :title => Faker::Lorem.paragraph,
    :body => Faker::Lorem.paragraphs(9),
    :user_id => User.first.id,
    :created_at => DateTime.now
    )
end