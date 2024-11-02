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

#users
user1 = User.create(
  email: "john@example.com",
  encrypted_password: "password123",
  user_type: "arrendador",
  phone: "123-456-7890",
  address: "123 Main St, New York, NY"
)

user2 = User.create(
  email: "jane@example.com",
  encrypted_password: "password456",
  user_type: "arrendatario",
  phone: "234-567-8901",
  address: "456 Elm St, Los Angeles, CA"
)

user3 = User.create(
  email: "alex@example.com",
  encrypted_password: "password789",
  user_type: "arrendador",
  phone: "345-678-9012",
  address: "789 Oak St, San Francisco, CA"
)

#garage
garage1 = Garage.create(
  name: "Garage Central",
  address: "100 Main St, New York, NY",
  user_id: user1
)

garage2 = Garage.create(
  name: "Downtown Garage",
  address: "200 Elm St, Los Angeles, CA",
  user_id: user2
)

garage3 = Garage.create(
  name: "Sunset Garage",
  address: "300 Oak St, San Francisco, CA",
  user_id: user3
)

#cars
cars_data = [
  { model: "Camry", year: 2022, brand: "Toyota", color: "Black", capacity: 5, extras: "GPS, Bluetooth", price: 50.0, garage: garage1 },
  { model: "Civic", year: 2021, brand: "Honda", color: "Red", capacity: 5, extras: "Sunroof, Leather seats", price: 45.0, garage: garage2 },
  { model: "Focus", year: 2020, brand: "Ford", color: "Blue", capacity: 5, extras: "Backup camera, Heated seats", price: 40.0, garage: garage3 },
  { model: "Malibu", year: 2019, brand: "Chevrolet", color: "White", capacity: 5, extras: "Bluetooth, GPS", price: 38.0, garage: garage1 },
  { model: "X3", year: 2022, brand: "BMW", color: "Gray", capacity: 5, extras: "Leather seats, Sunroof", price: 65.0, garage: garage2 },
  { model: "C-Class", year: 2023, brand: "Mercedes", color: "Silver", capacity: 5, extras: "Heated seats, GPS", price: 70.0, garage: garage3 },
  { model: "Altima", year: 2021, brand: "Nissan", color: "Black", capacity: 5, extras: "Backup camera, Bluetooth", price: 43.0, garage: garage1 },
  { model: "Sportage", year: 2020, brand: "Kia", color: "Red", capacity: 7, extras: "Sunroof, Heated seats", price: 55.0, garage: garage2 },
  { model: "Elantra", year: 2019, brand: "Hyundai", color: "Blue", capacity: 5, extras: "Bluetooth, GPS", price: 39.0, garage: garage3 },
  { model: "CX-5", year: 2022, brand: "Mazda", color: "White", capacity: 5, extras: "Leather seats, Sunroof", price: 52.0, garage: garage1 },
  { model: "Corolla", year: 2021, brand: "Toyota", color: "Gray", capacity: 5, extras: "Bluetooth, GPS", price: 45.0, garage: garage2 },
  { model: "Accord", year: 2023, brand: "Honda", color: "Silver", capacity: 5, extras: "Heated seats, Leather seats", price: 68.0, garage: garage3 },
  { model: "Mustang", year: 2022, brand: "Ford", color: "Yellow", capacity: 4, extras: "GPS, Backup camera", price: 75.0, garage: garage1 },
  { model: "Impala", year: 2020, brand: "Chevrolet", color: "Black", capacity: 5, extras: "Sunroof, Bluetooth", price: 42.0, garage: garage2 },
  { model: "Q5", year: 2021, brand: "Audi", color: "Red", capacity: 5, extras: "Leather seats, GPS", price: 63.0, garage: garage3 },
]
