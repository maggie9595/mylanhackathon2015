class Application < ActiveRecord::Base
	belongs_to :medication

	validates_presence_of :medication_id
end
