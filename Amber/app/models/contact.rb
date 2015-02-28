class Contact < ActiveRecord::Base
  # Relationships
  # -----------------------------
  belongs_to :patient

  scope :alphabetical, -> { order('last_name, first_name') }

  def proper_name
    first_name + " " + last_name
  end
end
