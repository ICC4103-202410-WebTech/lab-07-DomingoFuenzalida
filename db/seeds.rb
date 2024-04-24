# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all

usr1 = User.create!(
    name: 'Juan Pérez',
    email: 'jperez@example.com',
    password: '123456789'
)

usr2 = User.create!(
    name: 'Roberto González',
    email: 'rgonzalez@example.com',
    password: '123456789'
)

usr3 = User.create!(
    name: 'Magdalena Rodríguez',
    email: 'mrodriguez@example.com',
    password: '123456789'
)

usr4 = User.create!(
    name: 'María Gómez',
    email: 'mgomez@example.com',
    password: '123456789'
)

usr5 = User.create!(
    name: 'José Martínez',
    email: 'jmartinez@example.com',
    password: '123456789'
)

usr6 = User.create!(
    name: 'John Doe',
    email: 'jdoe@example.com',
    password: '123456789'
)

p1 = Post.create!(
    title: 'El mejor post',
    content: 'Este es el contenido del mejor post del mundo',
    user_id: usr1.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p2 = Post.create!(
    title: 'El segundo mejor post',
    content: 'Este es el contenido del segundo mejor post del mundo',
    user_id: usr2.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p3 = Post.create!(
    title: 'El tercer mejor post',
    content: 'Este es el contenido del tercer mejor post del mundo',
    user_id: usr3.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p4 = Post.create!(
    title: 'El cuarto mejor post',
    content: 'Este es el contenido del cuarto mejor post del mundo',
    user_id: usr4.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p5 = Post.create!(
    title: 'El quinto mejor post',
    content: 'Este es el contenido del quinto mejor post del mundo',
    user_id: usr5.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p6 = Post.create!(
    title: 'El sexto mejor post',
    content: 'Este es el contenido del sexto mejor post del mundo',
    user_id: usr6.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p7 = Post.create!(
    title: 'El séptimo mejor post',
    content: 'Este es el contenido del séptimo mejor post del mundo',
    user_id: usr1.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p8 = Post.create!(
    title: 'El octavo mejor post',
    content: 'Este es el contenido del octavo mejor post del mundo',
    user_id: usr2.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p9 = Post.create!(
    title: 'El noveno mejor post',
    content: 'Este es el contenido del noveno mejor post del mundo',
    user_id: usr3.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p10 = Post.create!(
    title: 'El décimo mejor post',
    content: 'Este es el contenido del décimo mejor post del mundo',
    user_id: usr4.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

p11 = Post.create!(
    title: 'Post 1',
    content: 'Este es el contenido del post 1',
    user_id: usr5.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0
)

t1 = Tag.create!(
    name: 'Tag 1'
)

t2 = Tag.create!(
    name: 'Ruby'
)

t3 = Tag.create!(
    name: 'Rails'
)

t4 = Tag.create!(
    name: 'HTML'
)

t5 = Tag.create!(
    name: 'CSS'
)



p1.tags << t1
p2.tags << t2
p3.tags << t3
p4.tags << t4
p5.tags << t5
p6.tags << t1
p7.tags << t2
p8.tags << t3
p9.tags << t4
p10.tags << t5
p11.tags << t1
p11.tags << t2
p11.tags << t3

