puts "cleaning the db...."
# Location.destroy_all
Trip.destroy_all
User.destroy_all
puts "database clean!"
puts "creating users..."

minnie = User.create!(
  first_name:"Minnie Mouse",
  image_url:"https://www.pngall.com/wp-content/uploads/2017/03/Minnie-Mouse.png",
  profile_bio:"Minnie Mouse is an American cartoon character created by the Walt Disney Company. As the longtime sweetheart of Mickey Mouse, she is an anthropomorphic mouse with white gloves, a red or pink bow, blue (or pink or red) polka-dotted dress, white bloomers and yellow low-heeled shoes occasionally with ribbons on them.",
  email:"minnie@gamil.com",
  password: "123456"
)

dee = User.create!(
  first_name:"Dee",
  image_url:"https://webneel.com/daily/sites/default/files/images/daily/06-2013/10-beautiful-women-photography.jpg",
  profile_bio:"Throughout history, women have bravely embarked on journeys to the far reaches of the globe, and have inspired many women after them to pursue their dreams, conquer their fears, and not be held back by gender bias or societal restrictions.",
  email:"dee@gamil.com",
  password: "123456"
)

jagoda = User.create!(
  first_name:"Jagoda",
  image_url:"https://cdn1.matadornetwork.com/blogs/1/2020/01/happy-female-traveler-wearing-a-backpack-1200x854.jpg",
  profile_bio:"We are feminists with a love for travel and we’re ready to challenge the status quo and help shape the travel industry.",
  email:"jagoda@gamil.com",
  password: "123456"
)

puts "#{User.count} users created!"
puts "creating trips..."

backpack = Trip.create!(
  name: "backpack and hitchhike",
  trip_image: "https://blog.via.com/wp-content/uploads/2016/06/1.jpg",
  user: dee
)

Location.create!(
  country: "Brazil",
  city: "Curitiba",
  start_date: "01-01-2025",
  end_date: "02-02-2025",
  activites: "carnival",
  trip: backpack
)

Location.create!(
  country: "Netherlands",
  city: "Haarlem",
  start_date: "15-01-2025",
  end_date: "15-02-2025",
  activites: "Cycling",
  trip: backpack
)


asia = Trip.create!(
  name: "Asia",
  trip_image: "https://cdn.tourradar.com/s3/serp/original/75_RCUhrKb3.jpg",
  user: minnie
  )

Location.create!(
  country: "Philippines",
  city: "Manila",
  start_date: "16-01-2025",
  end_date: "12-02-2025",
  activites: "beach",
  trip: asia
)

jungle = Trip.create!(
  name: "jungle and rainforest",
  trip_image: "https://2.bp.blogspot.com/-_htZ0dr-5VI/UL2dhpKRl6I/AAAAAAAAAAg/X_Qy0WAnutk/s1600/cover%2Bpic.jpg",
  user: jagoda
)

Location.create!(
  country: "Philippines",
  city: "Manila",
  start_date: "03-01-2025",
  end_date: "12-02-2025",
  activites: "motorcross",
  trip: jungle
)
