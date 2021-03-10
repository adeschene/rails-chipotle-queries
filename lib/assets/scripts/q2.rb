# What were gross sales during this period?

# Get sum of price of each order; convert to float;
# divide by 100 to get back to dollars and cents
Order.sum(:item_price).to_f / 100
