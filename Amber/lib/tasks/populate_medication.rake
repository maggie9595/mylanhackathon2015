namespace :db do 

	desc "DO"

	task :populate_medication => :environment do
		puts "Adding meds..."

		inFile = File.new("lib/assets/Product.txt", "r")
		count = 0

		inFile.each { |line|
			data = line.split('\n')
	      	data.each { |med|
	      		medData = med.split("\t")
	      		prod_number = medData[1]
	      		form = medData[2]
	      		
	      		market_status = medData[4]
	      		
	      		
	      		name = medData[7]
	      		active_ingredients = medData[8]

	      		a_med = Medication.new do |m|
	      			m.name = name
	      			m.form = form
	      			m.market_status = market_status
	      			
	      			m.active_ingredients = active_ingredients
	      			m.prod_number = prod_number
	      			m.company = "unknown"
	      			m.save!
	      		end
	      	}
		}
		inFile.close
		puts "Done adding meds"

	end
end