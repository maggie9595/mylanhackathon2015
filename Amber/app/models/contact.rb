class Contact < ActiveRecord::Base
  # Relationships
  # -----------------------------
  belongs_to :patient
end
