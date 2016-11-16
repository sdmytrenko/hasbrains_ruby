class Order 
# Класс для заказа товара
	attr_reader :items

		include ItemContainer

	def initialize
		@items = []
		#...
	end

	def place
		# actually place on order
	end
end