require_relative "cart"
require_relative "item"


# cart = Cart.new

# cart.add_item(Item.new)
# cart.add_item(Item.new)
# p cart.items
# p cart.validate

# cart.remove_item
# p cart.items

item = Item.new({:price => 2100, :weight => 1000, :name => "Car"})
item.info {|attr| print attr, ", " }
