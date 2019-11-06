User.create!([
  {name:"tommy", email:"tommy@gmail.com", password:"password", password_confirmation:"password"},
  {name:"mike", email:"mike@gmail.com", password:"password", password_confirmation:"password"},
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

Marker.create!([
  {user_id: 1, activity_id: 1, end_time: "2019-10-26 14:38:51"},
  {user_id: 1, activity_id: 2, end_time: "2019-10-25 13:38:51"},
  {user_id: 1, activity_id: 3, end_time: "2019-10-24 19:48:51"},
  {user_id: 1, activity_id: 4, end_time: "2019-10-22 19:38:51"},
  {user_id: 1, activity_id: 5, end_time: "2019-10-21 19:38:51"},
  {user_id: 1, activity_id: 6, end_time: "2019-10-29 19:38:51"},
  {user_id: 2, activity_id: 7, end_time: "2019-10-25 19:38:51"},
  {user_id: 2, activity_id: 3, end_time: "2019-10-23 19:38:51"},
  {user_id: 2, activity_id: 2, end_time: "2019-10-27 19:38:51"},
  {user_id: 2, activity_id: 4, end_time: "2019-10-22 19:38:51"},
  {user_id: 1, activity_id: 1, end_time: "2019-10-21 14:38:51"},
  {user_id: 1, activity_id: 5, end_time: "2019-10-20 13:38:51"},
  {user_id: 1, activity_id: 1, end_time: "2019-10-26 19:48:61"},
  {user_id: 1, activity_id: 7, end_time: "2019-10-24 19:38:51"},
  {user_id: 1, activity_id: 1, end_time: "2019-10-23 19:38:51"},
  {user_id: 1, activity_id: 8, end_time: "2019-10-22 19:38:51"},
  {user_id: 2, activity_id: 1, end_time: "2019-10-21 19:38:51"},
  {user_id: 2, activity_id: 3, end_time: "2019-10-27 19:38:51"},
  {user_id: 2, activity_id: 1, end_time: "2019-10-29 19:38:51"},
  {user_id: 2, activity_id: 2, end_time: "2019-10-22 19:38:51"},
  {user_id: 2, activity_id: 1, end_time: "2019-10-29 19:38:51"}
])