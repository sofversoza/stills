puts "Seeding.............."
User.destroy_all
Movie.destroy_all
Review.destroy_all

u1 = User.create!(full_name: "Sofia Versoza", username: "sof", password: "123sof", email: "sofversoza@gmail.com")
u2 = User.create!(full_name: "Tian Xu", username: "tian", password: "123tian", email: "tianxu@gmail.com")

m1 = Movie.create!(title: 'The Shining', director: 'Kubrick', duration: 120, release_year: 1980, genre: 'Horror/Thriller', current_mood: 'Horror', image1: '', image2: '', image3: '')


r1 = Review.create!(rating: 4.5, comment: 'Wow this was awesome!!!!!', user_id: u1.id, movie_id: m1.id)
r2 = Review.create!(rating: 4, comment: 'Kubrick is CRAZY', user_id: u2.id, movie_id: m1.id)


puts 'Done seeding!!!!!!!!!!'
