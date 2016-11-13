require_relative "cart"
require_relative "item"


# cart = Cart.new

# cart.add_item(Item.new)
# cart.add_item(Item.new)
# p cart.items
# p cart.validate

# cart.remove_item
# p cart.items

# ******Les19
# item = Item.new({:price => 2100, :weight => 1000, :name => "Car"})
# item.info {|attr| print attr, ", " }

#******les20
item1 = Item.new({:price => 2100, :weight => 1000, :name => "Car"})
item2 = Item.new({:weight => 100, :name => "Bicycle"})

cart = Cart.new
cart.add_item item1
cart.add_item item2

p cart.items
cart.delete_invalid_items
p cart.items
