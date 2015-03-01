class Medication < ActiveRecord::Base
	#attr_accessible :name, :form, :TE_code, :active_ingredients, :prod_number, :company, :market_status
  # Relationships
  # -----------------------------
  has_many :prescriptions
  has_many :applications

  scope :alphabetical, -> { order('name') }

end
