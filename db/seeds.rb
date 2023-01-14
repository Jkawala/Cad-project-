# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'JKawala@example.com',
           name: "James",
            password: 'password',
            password_confirmation: 'password',
          role: User.roles[:admin])

            User.create(email: 'JKa@example.com',
                       name: "Jason",
                        password: 'password',
                        password_confirmation: 'password')

3.times do |x|
   Post.create(title: "Title #{x}", body: "Body #{x} Filling up the blog", user_id: User.first.id)

   3.times do |y|
      Comment.create(body: "Comment #{y}",
         user_id: User.second.id,
       post_id: post.id)
 end
end
