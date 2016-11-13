class Item
	# товары

	def initialize(options={})
		@price  = options[:price]
		@weight = options[:weight]
		@name   = options[:name]
	end

	# attr_accessor :price, :weight

	attr_reader :price, :weight, :name
	attr_writer :price

	def info
		# [price, weight, name]
		# "#{price}, #{weight}, #{name}"
		yield(@price) # вызывает блок и передает в него переменную @price
		yield(@weight)
		yield(@name)

	end



	# def price=(price_value)
	# 	@price = price_value
	# end

	# def price
	# 	@price
	# end

	# def weight=(weight_value)
	# 	@weight = weight_value
	# end

	# def weight
	# 	@weight
	# end
end


item1 = Item.new({:weight => 10, :price => 30})
puts item1.price
puts item1.weight
item1.price=(200)
puts item1.price
puts item1.weight

item2 = Item.new
puts item2.price