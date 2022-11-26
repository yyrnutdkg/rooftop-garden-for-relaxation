# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2022-11-23 02:09:50 +0900
# Seeding User
# Written with the command:
#
#   rake seed_fu_gen:create_user_seed_by_db
#
#
if(User.find_by(id: 1).nil?)
  User.create!(id:1, name:'test-user', email:'test@example.com', password: 'test01', password_confirmation: 'test01')
end
# End auto-generated file.
