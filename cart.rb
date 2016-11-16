class Cart
	# корзина магазина

	attr_reader :items

	include ItemContainer

	def initialize
		@items = []
	end

end