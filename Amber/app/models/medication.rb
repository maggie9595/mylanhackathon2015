class Medication < ActiveRecord::Base
	#attr_accessible :name, :form, :TE_code, :active_ingredients, :prod_number, :company, :market_status
  # Relationships
  # -----------------------------
  has_many :prescriptions
  has_many :applications

  scope :alphabetical, -> { order('name') }

 # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ? OR active_ingredients like ?", "%#{query.upcase}%", "%#{query.upcase}%") 
  end

end
