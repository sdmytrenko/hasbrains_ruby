class Item
	# товары

	@@discount = 0.05 # добавление стандартной скидки на основе переменной класса

	def self.discount
		# метод класса Скидка, размер которой зависит только от месяца в году (Ноябрь -10%)
		if Time.now.month == 11
			return @@discount = 0.15
		else
			return @@discount
		end
	end

	def initialize(options={})
		@real_price  = options[:price]
		# @weight = options[:weight] - перенесено в класс RealItem
		@name   = options[:name]
	end

	attr_reader :real_price, :name
	attr_writer :price

	def info
		# [price, weight, name]
		# "#{price}, #{weight}, #{name}"
		yield(price) # вызывает блок и передает в него переменную @price
		# yield(@weight) - перенесено в класс RealItem
		yield(name)
	end

	def price
		(@real_price - @real_price*self.class.discount) + tax # self - на случай, если дочерние классы будут иметь свои скидки
	end

	private
		def tax # приватные методы на примере налога на товар
			type_tax = if self.class == VirtualItem # налог зависит от типа товара
				1
			else
				2
			end
			cost_tax = if @real_price > 5 # налог, зависит от цены товара
				@real_price*0.2
			else
				@real_price*0.1
			end
			cost_tax + type_tax
		end

end
