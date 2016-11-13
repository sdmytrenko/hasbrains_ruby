class RealItem < Item
	# реальные товары

	attr_reader :weight

	def initialize(options)
			@weight = options[:weight]
			super # слово без аргументов вызывает родительский клас initialize
	end

	def info
		yield(weight)
		super
	end
end