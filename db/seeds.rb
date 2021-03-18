# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(name:"Alejandra",photo:"https://www.govisitcostarica.co.cr/images/photos/mob-pura-vida-puerto-viejo-costa-rica.jpg", email:"hola@hola.com", password: "123456")
user1 = User.create(name:"Carlos",photo:"https://www.guanacastealaaltura.com/media/k2/items/cache/0a7d97071828da65151775fc572477c0_XL.jpg?t=20200524_175218", email:"carlos@ejemplo.com", password: "123456")
user2 = User.create(name:"Camila",photo:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/33/ea/a5/caption.jpg?w=1000&h=600&s=1", email:"camila@ejemplo.com", password: "123456")
user3 = User.create(name:"Marcos",photo:"https://lonelyplanetes.cdnstatics2.com/sites/default/files/styles/max_1300x1300/public/fotos/CostaRica_RioCeleste_PNVolcanTenorio_500px_61764629_Kryssia%20Campos_500px_0.jpg?itok=fG8pBD1W", email:"marcos@ejemplo.com", password: "123456")
user4 = User.create(name:"Julio",photo:"https://1.bp.blogspot.com/-9VErvuJyVlQ/XqcKhkLiz1I/AAAAAAAALd8/tMF8oH8S2BAG9WhIqC4v6KucBTbzIGmwwCLcBGAsYHQ/s1600/gandoca-manzanillo-4.jpg", email:"julio@ejemplo.com", password: "123456")

100.times do |i|
  Tweet.create(content:"contenido#{i}", user_id:user.id)
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?