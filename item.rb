class Item
	# товары

	@@discount = 0.1 # добавление стандартной скидки на основе переменной класса

	def self.discount
		# метод класса Скидка, размер которой зависит только от месяца в году (Ноябрь -30%)
		if Time.now.month == 11
			return @@discount = 0.3
		else
			return @@discount
		end
	end

	def initialize(options={})
		@price  = options[:price]
		# @weight = options[:weight] - перенесено в класс RealItem
		@name   = options[:name]
	end

	attr_reader :price, :name
	attr_writer :price

	def info
		# [price, weight, name]
		# "#{price}, #{weight}, #{name}"
		yield(price) # вызывает блок и передает в него переменную @price
		# yield(@weight) - перенесено в класс RealItem
		yield(name)
	end

	def price
		@price - @price*self.class.discount # на случай, если дочерние классы будут иметь свои скидки
	end
end
