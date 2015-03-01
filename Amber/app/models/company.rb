class Company < ActiveRecord::Base
	has_many :medications

	scope :alphabetical, -> { order('name') }
end
