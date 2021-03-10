# How many Burritos were sold?

# Get each burrito order, sum their quantities
Order.where("item_name LIKE '%Burrito%'").sum(:quantity)
