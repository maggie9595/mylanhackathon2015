class Medication < ActiveRecord::Base
  # Relationships
  # -----------------------------
  has_many :prescriptions

  scope :alphabetical, -> { order('name') }
end
