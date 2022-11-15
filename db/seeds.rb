# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

pulkit = User.create(email: "test2@gmail.com", password: "123456")
 naresh= User.create(email: "test3@gmail.com", password: "123456")
sumant = User.create(email: "test4@gmail.com", password: "123456")


#Projects

rails = Project.create(name: "Rails")
bootstrap = Project.create(name: "Bootstrap")
ruby = Project.create(name: "Ruby")



#Tasks
task2 = Task.create(description: 'Learn Rails getting started',user_id: pulkit.id, project_id: rails.id, due_date: Date.today)
task3 = Task.create(description: 'Learn Rails MVC',user_id: pulkit.id, project_id: rails.id,due_date: Date.today)
task4 = Task.create(description: 'Apply Bootstrap',user_id: naresh.id, project_id: bootstrap.id, due_date: Date.today)
task5 = Task.create(description: 'Learn Ruby methods', user_id: sumant.id, project_id: ruby.id, due_date: Date.today )
