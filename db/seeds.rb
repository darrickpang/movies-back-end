# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Movie.destroy_all 

User.create(name: 'Darrick Pang', password: '123')

Movie.create(name: 'Zack Synder`s Justice League', year: '2021', poster: 'https://images-na.ssl-images-amazon.com/images/I/61FsK3k4N7L._AC_SL1024_.jpg')
Movie.create(name: 'Alien: Covenant', year: '2017', poster: 'https://lumiere-a.akamaihd.net/v1/images/image_f9126949.jpeg')
Movie.create(name: 'World War Z', year: '2013', poster: 'https://www.paramountmovies.com/assets/posters/worldwarz_dvd_en_800x1200.jpg')
Movie.create(name: 'Tears of the Sun', year: '2003', poster: 'https://images-na.ssl-images-amazon.com/images/I/51zZKJyN8cL._SY445_.jpg')