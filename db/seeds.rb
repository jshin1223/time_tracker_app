User.create!([
  {name:"Tommy", email:"tommy@gmail.com", password:"password", password_confirmation:"password"},
  {name:"Mike", email:"mike@gmail.com", password:"password", password_confirmation:"password"},
])

Activity.create!([
  {name:"Sleep", priority: 3, image_url: "/images/icons/bed.png"},
  {name:"Transport", priority: 3, image_url: "/images/icons/car2.png"},
  {name:"Eat", priority: 3, image_url: "/images/icons/restaurant2.png"},
  {name:"Gym", priority: 3, image_url: "/images/icons/weightlifter.png"},
  {name:"Read", priority: 3, image_url: "/images/icons/open-book.png"},
  {name:"Work", priority: 3, image_url: "/images/icons/work.png"},
  {name:"Shop", priority: 3, image_url: "/images/icons/cart.png"},
  {name:"Laundry", priority: 3, image_url: "/images/icons/laundry-basket.png"},
  {name:"Cleaning", priority: 3, image_url: "/images/icons/vacuum-cleaner.png"},
  {name:"Study", priority: 3, image_url: "/images/icons/studying.png"},
  {name:"Internet", priority: 3, image_url: "/images/icons/domain(1).png"},
  {name:"Shower/Wash", priority: 3, image_url: "/images/icons/shower.png"},
  {name:"Cooking", priority: 3, image_url: "/images/icons/pan(1).png"},
  {name:"Coffee", priority: 3, image_url: "/images/icons/coffee-cup(1).png"},
  {name:"TV", priority: 3, image_url: "/images/icons/tv.png"},
  {name:"News", priority: 3, image_url: "/images/icons/text-lines.png"},
  {name:"Coding", priority: 3, image_url: "/images/icons/data(1).png"},
  {name:"Email", priority: 3, image_url: "/images/icons/email.png"}
  
])

# Marker.create!([
#   {user_id: 1, activity_id: 4, end_time: "2019-11-11 12:38:51"},
#   {user_id: 2, activity_id: 4, end_time: "2019-11-11 12:38:51"}
# ])