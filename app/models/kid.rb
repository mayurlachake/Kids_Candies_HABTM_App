class Kid < ApplicationRecord
	has_and_belongs_to_many :candies
	validates :fisrtname, presence: true
	validates :lastname, presence: true
	validates :age, presence: true, numericality: { only_integer: true }

	before_destroy :check_associated_candies

	def firstname_lastname
	  "#{fisrtname} #{lastname}"
	end

private

	def check_associated_candies
		puts "???? #{candies.count}"
		if candies.count > 0
			puts "sdvsvdvvdsv???"
		
	      errors[:base] << "cannot delete, first remove associated candies with this kid."
	      return false
	    end
	end
end
