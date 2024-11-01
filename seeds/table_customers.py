import pandas as pd

df = pd.read_csv("../source/superstore.csv")

# 1. Таблиця Customers
customers = df[['Customer.ID', 'Customer.Name', 'Segment']]
customers.to_csv("customers.csv", index=False)

# 2. Таблиця Orders
orders = df[['Order.ID', 'Customer.ID', 'Product.ID','Order.Date', 'Order.Priority', 'Quantity',
             'Discount', 'Sales', 'Profit', 'Market', 'Market2', 'weeknum', 'Year']]
orders.to_csv("orders.csv", index=False)

# 3. Таблиця Products
products = df[['Product.ID', 'Product.Name', 'Category', 'Sub.Category']]
products.to_csv("products.csv", index=False)

# 4. Таблиця Locations
locations = df[['City', 'State', 'Region', 'Country','Order.ID']]
locations.to_csv("locations.csv", index=False)

# 5. Таблиця Shipping
shipping = df[['Order.ID', 'Ship.Date', 'Ship.Mode', 'Shipping.Cost']]
shipping.to_csv("shipping.csv", index=False)


