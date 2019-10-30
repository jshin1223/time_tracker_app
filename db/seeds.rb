User.create!([
  {name:"tommy", email:"tommy@gmail.com", password:"password", password_confirmation:"password"},
  {name:"mike", email:"mike@gmail.com", password:"password", password_confirmation:"password"},
])

Activity.create!([
  {name:"Sleep", priority: 3, image_url: "google.com"},
  {name:"Transport", priority: 3, image_url: "google.com"},
  {name:"Eat", priority: 3, image_url: "google.com"},
  {name:"Gym", priority: 3, image_url: "google.com"},
  {name:"Read", priority: 3, image_url: "google.com"},
  {name:"Work", priority: 3, image_url: "google.com"},
  {name:"Shop", priority: 3, image_url: "google.com"},
  {name:"Housework", priority: 3, image_url: "google.com"},
  {name:"Study", priority: 3, image_url: "google.com"},
  {name:"Internet", priority: 3, image_url: "google.com"},
  {name:"Shower/Wash", priority: 3, image_url: "google.com"},
  {name:"Cooking", priority: 3, image_url: "google.com"},
  {name:"Coffee", priority: 3, image_url: "google.com"},
  {name:"TV", priority: 3, image_url: "google.com"},
  {name:"News", priority: 3, image_url: "google.com"},
  {name:"Coding", priority: 3, image_url: "google.com"},
  {name:"Planning", priority: 3, image_url: "google.com"},
  {name:"Diary", priority: 3, image_url: "google.com"},
  {name:"Email", priority: 3, image_url: "google.com"},
  {name:"Church", priority: 3, image_url: "google.com"}
  
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