class Prescription < ActiveRecord::Base
  # Relationships
  # -----------------------------
  belongs_to :medication
  belongs_to :patient

  	
end
