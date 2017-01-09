30.times do |index|
  Faker::Config.locale = :ja
  name = Faker::Company.name
  telephone_number = Faker::PhoneNumber.phone_number
  address = Faker::Address.street_address
  has_private_room = Faker::Boolean.boolean
  seat_count = Faker::Number.between(10, 100) 
  
  image = Faker::Avatar.image

  Restaurant.create(name: name, user_id: 1, telephone_number: telephone_number, address: address, has_private_room: has_private_room,
  seat_count: seat_count, open_date: DateTime.current.utc)
  
  RestaurantImage.create(restaurant_id: index+1, image: image)

end

