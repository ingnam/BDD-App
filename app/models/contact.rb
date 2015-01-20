class Contact < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true

	# It would be convenient to only have to refer to @contact.name to render our contacts’ full names 
	# instead of creating the string every time 
	def name
		[first_name, last_name].join " "
	end
end
