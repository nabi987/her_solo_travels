require 'json'

puts "cleaning the db...."
<<<<<<< HEAD
 Location.destroy_all
 Trip.destroy_all
 User.destroy_all
=======
Message.destroy_all
Friendship.destroy_all
Location.destroy_all
Trip.destroy_all
User.destroy_all
>>>>>>> master
puts "database clean!"
puts "creating users..."

# minnie = User.create!(
#   first_name:"Minnie Mouse",
#   image_url:"https://www.pngall.com/wp-content/uploads/2017/03/Minnie-Mouse.png",
#   profile_bio:"Minnie Mouse is an American cartoon character created by the Walt Disney Company. As the longtime sweetheart of Mickey Mouse, she is an anthropomorphic mouse with white gloves, a red or pink bow, blue (or pink or red) polka-dotted dress, white bloomers and yellow low-heeled shoes occasionally with ribbons on them.",
#   email:"minnie@gamil.com",
#   password: "123456"
# )

# dee = User.create!(
#   first_name:"Dee",
#   image_url:"https://webneel.com/daily/sites/default/files/images/daily/06-2013/10-beautiful-women-photography.jpg",
#   profile_bio:"Throughout history, women have bravely embarked on journeys to the far reaches of the globe, and have inspired many women after them to pursue their dreams, conquer their fears, and not be held back by gender bias or societal restrictions.",
#   email:"dee@gamil.com",
#   password: "123456"
# )

# jagoda = User.create!(
#   first_name:"Jagoda",
#   image_url:"https://cdn1.matadornetwork.com/blogs/1/2020/01/happy-female-traveler-wearing-a-backpack-1200x854.jpg",
#   profile_bio:"We are feminists with a love for travel and we’re ready to challenge the status quo and help shape the travel industry.",
#   email:"jagoda@gamil.com",
#   password: "123456"
# )

# puts "#{User.count} users created!"
# puts "creating trips..."

# backpack = Trip.create!(
#   name: "backpack and hitchhike",
#   trip_image: "https://blog.via.com/wp-content/uploads/2016/06/1.jpg",
#   user: dee
# )

# Location.create!(
#   country: "Brazil",
#   city: "Curitiba",
#   start_date: "01-01-2025",
#   end_date: "02-02-2025",
#   activites: "carnival",
#   trip: backpack
# )

# Location.create!(
#   country: "Netherlands",
#   city: "Haarlem",
#   start_date: "15-01-2025",
#   end_date: "15-02-2025",
#   activites: "Cycling",
#   trip: backpack
# )


# asia = Trip.create!(
#   name: "Asia",
#   trip_image: "https://cdn.tourradar.com/s3/serp/original/75_RCUhrKb3.jpg",
#   user: minnie
#   )

# Location.create!(
#   country: "Philippines",
#   city: "Manila",
#   start_date: "16-01-2025",
#   end_date: "12-02-2025",
#   activites: "beach",
#   trip: asia
# )

# jungle = Trip.create!(
#   name: "jungle and rainforest",
#   trip_image: "https://2.bp.blogspot.com/-_htZ0dr-5VI/UL2dhpKRl6I/AAAAAAAAAAg/X_Qy0WAnutk/s1600/cover%2Bpic.jpg",
#   user: jagoda
# )

# Location.create!(
#   country: "Philippines",
#   city: "Manila",
#   start_date: "03-01-2025",
#   end_date: "12-02-2025",
#   activites: "motorcross",
#   trip: jungle
# )
require "cloudinary"
require "open-uri"
# Path to the JSON file
file_path = Rails.root.join('db', 'seed_data.json')

# Read the JSON file
json_data = File.read(file_path)

# Parse the JSON data
users = JSON.parse(json_data)

# Iterate over each user and create a new record in the database
users.each do |user_data|
  user = User.create!(
    first_name: user_data['first_name'],
    last_name: user_data['last_name'],
    age: user_data['age'],
    profile_bio: user_data['profile bio'],
<<<<<<< HEAD
=======
    # image_url: ,
>>>>>>> master
    email: user_data['email'],
    password: BCrypt::Password.create(user_data['password'])
  )

  if user_data['image_url'].present?
    file = URI.parse(user_data['image_url']).open
    # uploaded_file = Cloudinary::Uploader.upload(file)
    user.photo.attach(io: file, filename: "#{user.first_name}_profile.png", content_type: "image/png")
  end

  user.save
end

susannah = User.find_by(first_name: "Susannah")

brazil = Trip.create!(
  name: "Brazil 2025",
  user: susannah
)
brazil_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1483729558449-99ef09a8c325?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

brazil.photo.attach(
  io: URI.open(brazil_image['secure_url']),
  filename: "brazil_trip.png",
  content_type: brazil_image['format']
)
Location.create!(
  country: "Brazil",
  city: "Rio de Janeiro",
  start_date: "01-01-2025",
  end_date: "31-05-2025",
  activites: "carnival, dancing, food",
  trip: brazil
)

sabra = User.find_by(first_name: "Sabra")

samerica = Trip.create!(
  name: "South America 2025!!",
  user: sabra
)
samerica_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1465513527097-544020a68b06?q=80&w=2048&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
samerica.photo.attach(
  io: URI.open(samerica_image['secure_url']),
  filename: "samerica_trip.png",
  content_type: samerica_image['format']
)
Location.create!(
  country: "Brazil",
  city: "Rio de Janeiro",
  start_date: "01-03-2025",
  end_date: "30-04-2025",
  activites: "carnival!",
  trip: samerica
)

Location.create!(
  country: "Peru",
  city: "Cusco",
  start_date: "01-04-2025",
  end_date: "30-06-2025",
  activites: "Machu Pichu, markets, food, architecture",
  trip: samerica
)

sumitra = User.find_by(first_name: "Sumitra")

america = Trip.create!(
  name: "Americas 2025",
  user: sumitra
)
america_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1643400814192-381f57499b42?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
america.photo.attach(
  io: URI.open(america_image['secure_url']),
  filename: "america_trip.png",
  content_type: america_image['format']
)
Location.create!(
  country: "Brazil",
  city: "Rio de Janeiro",
  start_date: "01-01-2025",
  end_date: "15-02-2025",
  activites: "carnivaaaal, culture, food",
  trip: america
)

giulietta = User.find_by(first_name: "Giulietta")

sm = Trip.create!(
  name: "South America'25",
  user: giulietta
)

sm_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1643400814192-381f57499b42?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
sm.photo.attach(
  io: URI.open(sm_image['secure_url']),
  filename: "sm_trip.png",
  content_type: sm_image['format']
)
Location.create!(
  country: "Brazil",
  city: "Rio de Janeiro",
  start_date: "01-01-2025",
  end_date: "01-03-2025",
  activites: "carnival of course and party",
  trip: sm
)

robinia = User.find_by(first_name: "Robinia")

bali = Trip.create!(
  name: "Indonesia",
  user: robinia
)

bali_image = Cloudinary::Uploader.upload("https://images.unsplash.com/photo-1643400814192-381f57499b42?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
bali.photo.attach(
  io: URI.open(bali_image['secure_url']),
  filename: "bali_trip.png",
  content_type: bali_image['format']
)

Location.create!(
  country: "Indonesia",
  city: "Bali",
  start_date: "15-04-2024",
  end_date: "03-05-2024",
  activites: "Surfing and temples",
  trip: bali
)
puts "finished!"
