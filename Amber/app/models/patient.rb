class Patient < ActiveRecord::Base
  # Relationships
  # -----------------------------
  has_many :contacts
  has_many :prescriptions
  has_many :medications, through: :prescriptions
end
