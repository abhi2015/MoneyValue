#Class takes value of money in rupees, paise or a combination of both and prints the final amount

class Money

attr_reader :rupee, :paise
	
	def initialize(rupee,paise)
		@rupee = rupee
		@paise = paise
	end

	def self.new_rupee(rupee)
		self.new(rupee,0)
	end

	def self.new_paise(paise)
		self.new(0,paise)
	end

	def viewMoney
		@rupee + (0.01 * @paise)
	end
	

	def addMoney(rupee_new,paise_new)

		self.rupee + rupee_new + 0.01 * (self.paise + paise_new)
	end
end