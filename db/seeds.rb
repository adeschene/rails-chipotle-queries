# Go thru csv row by row
IO.foreach("lib/assets/chipotle.csv") do |row|
  # Ex: row == "1,2,taco,[meat,lettuce,cheese],$5.67"
  description = row.slice(/\[.*\]/) # row => "[meat,lettuce,cheese]"
  attributes  = row.split(/,\[.*\],/).join(",").split(",") # row => ["1","2","taco","$5.67"]

  order_id    = attributes[0].to_i # "1" => 1
  quantity    = attributes[1].to_i # "2" => 2
  item_name   = attributes[2] # "taco"
  # "$5.67" => "5.67" => 5.67 => 567.0 => 567
  item_price  = (attributes.last.tr('$','').to_f * 100).to_i

  Order.create( # Create a row in db from variables above
    order_id: order_id,
    quantity: quantity,
    item_name: item_name,
    choice_description: description.nil? ? "NULL" : description,
    item_price: item_price
  )
end
