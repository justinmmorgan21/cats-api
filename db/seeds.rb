# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Cat.create(name: "Tiny", breed: "shorthair tabby", age: 2, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFi__LE6ZxsOxdoPLYNSXnCtt3gxu28u3zgQ&s");
Cat.create(name: "Tyler", breed: "bengal mix", age: 1, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGbZGV_wCtX20I7z382kNNO3Wh7-POSbpWEA&s");