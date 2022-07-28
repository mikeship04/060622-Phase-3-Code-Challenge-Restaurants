# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
Customer.destroy_all

puts "Creating restaurants..."
r1 = shack = Restaurant.create(name: "Karen's Lobster Shack", price: 1)
r2 = bistro = Restaurant.create(name: "Sanjay's Lobster Bistro", price: 2)
r3 = palace = Restaurant.create(name: "Kiki's Lobster Palace", price: 3)

puts "Creating customers..."
c1 = baby_spice = Customer.create(first_name: "Emma", last_name: "Bunton")
c2 = ginger_spice = Customer.create(first_name: "Geri", last_name: "Halliwell")
c3 = scary_spice = Customer.create(first_name: "Melanie", last_name: "Brown")
c4 = sporty_spice = Customer.create(first_name: "Melanie", last_name: "Chisholm")
c5 = posh_spice = Customer.create(first_name: "Victoria", last_name: "Addams")

puts "Creating reviews..."
Review.create(star_rating: 4, restaurant_id: c1.id, customer_id: r1.id)
Review.create(star_rating: 5, restaurant_id: c2.id, customer_id: r1.id)
Review.create(star_rating: 4, restaurant_id: c3.id, customer_id: r2.id)
Review.create(star_rating: 3, restaurant_id: c4.id, customer_id: r2.id)
Review.create(star_rating: 4, restaurant_id: c5.id, customer_id: r3.id)
Review.create(star_rating: 5, restaurant_id: c5.id, customer_id: r3.id)

puts "Seeding done!"