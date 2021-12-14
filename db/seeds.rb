# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username:"madhu",password:"madhu")
User.create(username:"nandhu",password:"nandhu")
User.create(username:"naveen",password:"naveen")
User.create(username:"ahish",password:"ahish")
User.create(username:"nagul",password:"nagul")

Message.create(user_id:1,body:"Hi Madhu")
Message.create(user_id:2,body:"Hi Indhujaa")
Message.create(user_id:1,body:"How are You madhu")
