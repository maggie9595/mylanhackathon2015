class Medication < ActiveRecord::Base
  # Relationships
  # -----------------------------
  has_many :prescriptions
end
