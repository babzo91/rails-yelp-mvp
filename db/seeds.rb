puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian'}
kfc =  {name: "KFC", address: "561 6PQ", category: 'japanese'}
mcdo =  {name: "Domac", address: "5ndon E1 6PQ", category: 'belgian'}
quick =  {name: "Quick", address: "56A Shordon E1 6PQ", category: 'french'}
asian_time =  {name: "Asian Time", address: "Ris-Orangis", category: "chinese"}

[dishoom, pizza_east, kfc, mcdo, quick, asian_time].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
