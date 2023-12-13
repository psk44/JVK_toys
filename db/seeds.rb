# Create Suppliers
supplier1 = Supplier.create(name: "Supplier One", email: "supplier1@example.com", phone: "1234567890", address: "123 Supplier St, Supplier City")
supplier2 = Supplier.create(name: "Supplier Two", email: "supplier2@example.com", phone: "0987654321", address: "456 Supplier Ave, Supplier Town")
supplier3 = Supplier.create(name: "Supplier Three", email: "supplier3@example.com", phone: "1122334455", address: "789 Supplier Blvd, Supplier Village")

# Create Toy Types 
toy_type1 = ToyType.create(name: "Type One", description: "Description for Type One")
toy_type2 = ToyType.create(name: "Type Two", description: "Description for Type Two")
toy_type3 = ToyType.create(name: "Type Three", description: "Description for Type Three")

# Create Toys and associate with Types and Suppliers
toy1 = Toy.create(name: "Toy One", description: "Description for Toy One", price: 5, toy_type: toy_type1)
toy2 = Toy.create(name: "Toy Two", description: "Description for Toy Two", price: 5, toy_type: toy_type2)
toy3 = Toy.create(name: "Toy Three", description: "Description for Toy Three", price: 5, toy_type: toy_type3)

# Associating toys with suppliers
toy1.suppliers << supplier1
toy2.suppliers << supplier2
toy3.suppliers << supplier3

# Create Inventories
Inventory.create(toy: toy1, quantity: 10, low_inventory_threshold: 2)
Inventory.create(toy: toy2, quantity: 10, low_inventory_threshold: 2)
Inventory.create(toy: toy3, quantity: 10, low_inventory_threshold: 2)

puts "Created 3 toys, 3 suppliers, and set inventory for each toy."
