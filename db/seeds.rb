# Create Toy Types
toy_types = ['Type 1', 'Type 2', 'Type 3'].map do |type_name|
  ToyType.find_or_create_by(name: type_name, description: "#{type_name} description")
end

# Create Suppliers
supplier1 = Supplier.create(name: "Supplier One", email: "supplier1@example.com", phone: "1234567890", address: "123 Supplier St, Supplier City")
supplier2 = Supplier.create(name: "Supplier Two", email: "supplier2@example.com", phone: "0987654321", address: "456 Supplier Ave, Supplier Town")
supplier3 = Supplier.create(name: "Supplier Three", email: "supplier3@example.com", phone: "1122334455", address: "789 Supplier Blvd, Supplier Village")

# Create Toys with associated Inventory, Sales, and Ratings
5.times do |i|
  toy = Toy.find_or_create_by(
    name: "Toy #{i + 1}",
    description: "This is the description for Toy #{i + 1}.",
    price: 10,
    toy_type: toy_types.sample # Randomly assign one of the toy types
  )

  inventory = Inventory.find_or_create_by(
    toy: toy,
    quantity: 50,
    low_inventory_threshold: 5
  )

  # Create two sales with random quantities and times for each toy
  2.times do
    quantity_sold = rand(1..10)
    Sale.create(
      toy: toy,
      quantity_sold: quantity_sold,
      sale_date: rand(1.year).seconds.ago
    )
  end

  # Create two ratings each toy
  2.times do
    Rating.create(
      toy: toy,
      score: rand(1..5),
      review: ["Great toy!", "Loved by kids!", "Very durable.", "Hours of fun!", "Educational and entertaining."].sample
    )
  end
end

puts "Created #{Toy.count} toys."
puts "Created #{Supplier.count} suppliers."
