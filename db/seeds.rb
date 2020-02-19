# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'admin@test.com', password: '123456')
Question.create(question: 'Is this rails application?', user_id: user.id)
Question.create(question: 'Can we implement threading in RoR?', user_id: user.id)
Question.create(question: 'Who owns Internet?', user_id: user.id)

user = User.create(email: 'abc@test.com', password: '123456')

Question.create(question: 'Is this right way to say HI?', user_id: user.id)
Question.create(question: 'How to say Good Bye?', user_id: user.id)
Question.create(question: 'How to say Good Day?', user_id: user.id)

user = User.create(email: 'xyz@test.com', password: '123456')

Question.create(question: 'What is API?', user_id: user.id)
Question.create(question: 'How does API work?', user_id: user.id)
Question.create(question: 'What is HTTP?', user_id: user.id)


