# Which kind of canned soda is most popular?

# Get all canned sodas; group by soda brand; sum with quantities; get max orders
Order.where("item_name = 'Canned Soda'").group(:choice_description).sum(:quantity).max_by{
  |k,v| v
}[0][/[A-Za-z.\s]+/] # ["[Dr. Pepper]", 12] => "Dr. Pepper"
