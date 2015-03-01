namespace :db do 

	desc "DO"

	task :populate_application => :environment do
		puts "Adding apps..."

		inFile = File.new("lib/assets/application.txt", "r")
		count = 0

		inFile.each { |line|
			data = line.split('\n')
	      	data.each { |med|
	      		appData = med.split("\t")
	      		company_name = appData[2]

	      		a_app = Application.new do |a|
	      			a.company = company_name
	      			a.save!
	      		end
	      	}
		}
		inFile.close
		puts "Done adding apps"

	end
end