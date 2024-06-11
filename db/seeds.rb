# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing records
Product.destroy_all
Category.destroy_all

# Create some categories
electronics = Category.create!(name: "Electronics")
furniture = Category.create!(name: "Furniture")

# Create some products and associate them with categories
Product.create!(title: "Smartphone", description: "A high-end smartphone", price: 699.99, stock_quantity: 50, category: electronics)
Product.create!(title: "Laptop", description: "A powerful laptop", price: 999.99, stock_quantity: 30, category: electronics)
Product.create!(title: "Chair", description: "A comfortable chair", price: 59.99, stock_quantity: 100, category: furniture)
Product.create!(title: "Table", description: "A sturdy table", price: 129.99, stock_quantity: 20, category: furniture)
