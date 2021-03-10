# What were gross sales for drinks/food?

drinks = [ # Array of item_names of all drink items sold
  'Izze','Nantucket Nectar','Canned Soda',
  'Bottled Water','Canned Soft Drink','6 Pack Soft Drink'
]

[ # Get all drink orders; sum their prices; get dollars & cents value
  Order.where(item_name: drinks).sum(:item_price).to_f / 100,
  Order.where.not(item_name: drinks).sum(:item_price).to_f / 100
] # ^ Get all non-drink orders (food); sum their prices; etc.
