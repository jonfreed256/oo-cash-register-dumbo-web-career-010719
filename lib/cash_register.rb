require "pry"
class CashRegister
	attr_accessor :total, :discount, :items, :current_transaction

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end
	
	def self.total
		@total
	end


	def add_item(title, price, quantity= 1)
		@current_transaction = price * quantity
		@total += current_transaction
		quantity.times { @items << title }
	end

	def apply_discount
		if @discount != 0
			@total = @total * (100 - discount.to_f)/100
			return "After the discount, the total comes to $#{@total.to_i}."
		else
			return "There is no discount to apply."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		
		@total = @total - @current_transaction
		
	end
end
