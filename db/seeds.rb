# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb
puts "Eliminando bookings"
Booking.destroy_all
puts "Eliminando cars"
Car.destroy_all
puts "Eliminando garages"
Garage.destroy_all
puts "Eliminando usuarios"
User.destroy_all


#users
user1 = User.create!(
  email: "john@example.com",
  password: "password123",
  phone: "123-456-7890",
  address: "123 Main St, New York, NY"
)
puts "se ha creado el usuario: #{user1.email}"
user2 = User.create!(
  email: "jane@example.com",
  password: "password456",
  phone: "234-567-8901",
  address: "456 Elm St, Los Angeles, CA"
)
puts "se ha creado el usuario: #{user2.email}"

user3 = User.create!(
  email: "alex@example.com",
  password: "password789",
  phone: "345-678-9012",
  address: "789 Oak St, San Francisco, CA"
)
puts "se ha creado el usuario: #{user3.email}"

#garage
garage1 = Garage.create!(
  name: "Garage Central",
  address: "100 Main St, New York, NY",
  user_id: user1.id
)

garage2 = Garage.create!(
  name: "Downtown Garage",
  address: "200 Elm St, Los Angeles, CA",
  user_id: user2.id
)

garage3 = Garage.create!(
  name: "Sunset Garage",
  address: "300 Oak St, San Francisco, CA",
  user_id: user3.id
)

#cars
cars_data = Car.create! [
  { model: "Camry", year: 2022, brand: "Toyota", color: "Black", capacity: 5, extras: "GPS, Bluetooth", price: 50.0, garage: garage1 },
  { model: "Civic", year: 2021, brand: "Honda", color: "Red", capacity: 5, extras: "Sunroof, Leather seats", price: 45.0, garage: garage2 },
  { model: "Focus", year: 2020, brand: "Ford", color: "Blue", capacity: 5, extras: "Backup camera, Heated seats", price: 40.0, garage: garage3 },
  { model: "Malibu", year: 2019, brand: "Chevrolet", color: "White", capacity: 5, extras: "Bluetooth, GPS", price: 38.0, garage: garage1 },
  { model: "X3", year: 2022, brand: "BMW", color: "Gray", capacity: 5, extras: "Leather seats, Sunroof", price: 65.0, garage: garage2 },
  { model: "C-Class", year: 2023, brand: "Mercedes", color: "Silver", capacity: 5, extras: "Heated seats, GPS", price: 70.0, garage: garage3 },
]
