require 'json'
require "cloudinary"
require "open-uri"

# puts "cleaning the db...."
# Message.destroy_all
# Friendship.destroy_all
# Location.destroy_all
# Trip.destroy_all
# User.destroy_all
# puts "database clean!"
# puts "creating users..."

# # Path to the JSON file
# file_path = Rails.root.join('db', 'seed_data.json')

# # Read the JSON file
# json_data = File.read(file_path)

# # Parse the JSON data
# users = JSON.parse(json_data)

# # Iterate over each user and create a new record in the database
# users.each do |user_data|
#   user = User.create!(
#     first_name: user_data['first_name'],
#     last_name: user_data['last_name'],
#     age: user_data['age'],
#     profile_bio: user_data['profile bio'],
#     email: user_data['email'],
#     password: BCrypt::Password.create(user_data['password'])
#   )

#   if user_data['image_url'].present?
#     file = URI.parse(user_data['image_url']).open
#     # uploaded_file = Cloudinary::Uploader.upload(file)
#     user.photo.attach(io: file, filename: "#{user.first_name}_profile.png", content_type: "image/png")
#   end

#   user.save
# end

# susannah = User.find_by(first_name: "Susannah")

# brazil = Trip.create!(
#   name: "Brazil 2025",
#   user: susannah
# )
# brazil_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1483729558449-99ef09a8c325?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

# brazil.photo.attach(
#   io: URI.open(brazil_image['secure_url']),
#   filename: "brazil_trip.png",
#   content_type: brazil_image['format']
# )
# Location.create!(
#   country: "Brazil",
#   city: "Rio de Janeiro",
#   start_date: "01-01-2025",
#   end_date: "31-05-2025",
#   activites: "carnival, dancing, food, beach",
#   trip: brazil
# )

# sabra = User.find_by(first_name: "Sabra")

# samerica = Trip.create!(
#   name: "South America 2025!!",
#   user: sabra
# )
# samerica_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1465513527097-544020a68b06?q=80&w=2048&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# samerica.photo.attach(
#   io: URI.open(samerica_image['secure_url']),
#   filename: "samerica_trip.png",
#   content_type: samerica_image['format']
# )
# Location.create!(
#   country: "Brazil",
#   city: "Rio de Janeiro",
#   start_date: "01-03-2025",
#   end_date: "30-04-2025",
#   activites: "carnival!",
#   trip: samerica
# )

# Location.create!(
#   country: "Peru",
#   city: "Cusco",
#   start_date: "01-04-2025",
#   end_date: "30-06-2025",
#   activites: "Machu Pichu, markets, food, architecture",
#   trip: samerica
# )

# sumitra = User.find_by(first_name: "Sumitra")

# america = Trip.create!(
#   name: "Americas 2025",
#   user: sumitra
# )
# america_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1643400814192-381f57499b42?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# america.photo.attach(
#   io: URI.open(america_image['secure_url']),
#   filename: "america_trip.png",
#   content_type: america_image['format']
# )
# Location.create!(
#   country: "Brazil",
#   city: "Rio de Janeiro",
#   start_date: "01-01-2025",
#   end_date: "15-02-2025",
#   activites: "carnivaaaal, culture, food",
#   trip: america
# )

# giulietta = User.find_by(first_name: "Giulietta")

# sm = Trip.create!(
#   name: "South America'25",
#   user: giulietta
# )

# sm_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1643400814192-381f57499b42?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# sm.photo.attach(
#   io: URI.open(sm_image['secure_url']),
#   filename: "sm_trip.png",
#   content_type: sm_image['format']
# )
# Location.create!(
#   country: "Brazil",
#   city: "Rio de Janeiro",
#   start_date: "01-01-2025",
#   end_date: "01-03-2025",
#   activites: "carnival of course and party",
#   trip: sm
# )

# robinia = User.find_by(first_name: "Robinia")

# bali = Trip.create!(
#   name: "Indonesia",
#   user: robinia
# )

# bali_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1643400814192-381f57499b42?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
# bali.photo.attach(
#   io: URI.open(bali_image['secure_url']),
#   filename: "bali_trip.png",
#   content_type: bali_image['format']
# )

# Location.create!(
#   country: "Indonesia",
#   city: "Bali",
#   start_date: "15-04-2024",
#   end_date: "03-05-2024",
#   activites: "Surfing and temples",
#   trip: bali
# )

puts "creating trips..."

tiertza = User.find_by(first_name: "Tiertza")

us = Trip.create!(
  name: "US baby!!",
  user: tiertza
)

us_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1485871981521-5b1fd3805eee?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
us.photo.attach(
  io: URI.open(us_image['secure_url']),
  filename: "us_trip.png",
  content_type: us_image['format']
)

Location.create!(
  country: "United States",
  city: "New York",
  start_date: "01-11-2024",
  end_date: "15-01-2025",
  activites: "Shopping, Christmas vibes, bagels",
  trip: us
)

atlante = User.find_by(first_name: "Atlante")

jordan = Trip.create!(
  name: "Jordan 2025",
  user: atlante
)

jordan_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1701223555020-054e2beabbaf?q=80&w=2371&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
jordan.photo.attach(
  io: URI.open(jordan_image['secure_url']),
  filename: "jordan_trip.png",
  content_type: jordan_image['format']
)

Location.create!(
  country: "Jordan",
  city: "Petra",
  start_date: "10-02-2025",
  end_date: "30-03-2025",
  activites: "Monastery, Royal Tombs, Great temple",
  trip: jordan
)

lara = User.find_by(first_name: "Lara")

uzbekistan = Trip.create!(
  name: "Uzbekistan 2025",
  user: lara
)

uzbekistan_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1672353928061-0a740ff0b763?q=80&w=2487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
uzbekistan.photo.attach(
  io: URI.open(uzbekistan_image['secure_url']),
  filename: "uzbekistan_trip.png",
  content_type: uzbekistan_image['format']
)

Location.create!(
  country: "Uzbekistan",
  city: "Samarkand",
  start_date: "01-12-2024",
  end_date: "28-12-2024",
  activites: "Gur-e-Amir, Shah-i-Zinda, Siyob Bozor",
  trip: uzbekistan
)

marcella = User.find_by(first_name: "Marcella")

berlin = Trip.create!(
  name: "berlin christmas markets",
  user: marcella
)

berlin_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1512729360855-0d1e1b0983a2?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
berlin.photo.attach(
  io: URI.open(berlin_image['secure_url']),
  filename: "berlin_trip.png",
  content_type: berlin_image['format']
)

Location.create!(
  country: "Germany",
  city: "Berlin",
  start_date: "01-12-2024",
  end_date: "15-12-2024",
  activites: "Charlottenburg Palace christmas market, mulled wine",
  trip: berlin
)

puts "finished!"
