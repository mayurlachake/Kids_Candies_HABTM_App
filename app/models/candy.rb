class Candy < ApplicationRecord
	has_and_belongs_to_many :kids
	validates :name, presence: true
end
