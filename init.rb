require_relative "cart"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"


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

#******les20/21
# item1 = VirtualItem.new({:price => 2100, :weight => 1000, :name => "Car"})
# item2 = RealItem.new({:weight => 100, :name => "Bicycle"})

# cart = Cart.new
# cart.add_item item1
# cart.add_item item2

# p cart.items
# cart.delete_invalid_items
# p cart.items

# p item1.respond_to?(:weight) # false
# p item2.respond_to?(:weight) # true

#*****Les22
item1 = VirtualItem.new({:price => 1000, :weight => 1000, :name => "Car"})
item2 = RealItem.new({:weight => 100, :name => "Bicycle"})

cart = Cart.new
cart.add_item item1
cart.add_item item2

puts Item.discount
puts item1.price