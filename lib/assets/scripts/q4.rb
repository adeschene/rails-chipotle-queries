# Which is the most popular kind of meat - Steak, Chicken, or something else?

# Get number of orders that include each meat; find max order; get name
["Barbacoa","Chicken","Steak","Carnitas"].map{
  |meat| [meat,Order.where("item_name LIKE '%#{meat}%'").sum(:quantity)]
}.max_by{ |pair| pair[1] }[0]
