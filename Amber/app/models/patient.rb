class Patient < ActiveRecord::Base
  # Relationships
  # -----------------------------
  has_many :contacts
  has_many :prescriptions
  has_many :medications, through: :prescriptions

  scope :alphabetical, -> { order('last_name, first_name') }

  def proper_name
    first_name + " " + last_name
  end
end