#Class takes value of money in rupees, paise or a combination of both and prints the final amount and also performs addition.

class Money

	attr_reader :rupee, :paise
	
	def initialize(rupee, paise)
		@rupee = rupee
		@paise = paise
	end

	def self.new_rupee(rupee)
		self.new(rupee, 0)
	end

	def self.new_paise(paise)
		self.new(0, paise)
	end

	def to_s
		val = @rupee + (0.01 * @paise)
		val_rupee = val.to_i
		val_paise = (val.modulo(1).round(2) * 100).to_i
		"#{val_rupee} rupees and #{val_paise} paise"
	end
	
    def +(money_new)
		Money.new(@rupee + money_new.rupee, @paise + money_new.paise)
	end

	def -(money_new)

		Money.new(@rupee - money_new.rupee, @paise - money_new.paise)
	end

	def ==(money_new)
		return false unless money_new.is_a? Money
		@rupee == money_new.rupee
		@paise == money_new.paise
	end

	def eql?(money_new)
		@rupee == money_new.rupee
		@paise == money_new.paise
	end

end