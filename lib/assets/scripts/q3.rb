# What was the most popular menu item?

# Group by item name; sum quantities; get max value; get name
Order.group(:item_name).sum(:quantity).max_by{|k,v| v}.first
