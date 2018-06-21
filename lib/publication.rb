# Author: Mike
# Created: 6/20
# Edit: N/A

class publication
	def initialize
		@title = ""
		@author_list = []
		@author_str = ""
		@event_name = ""
		@event_abbr = ""
		@location = ""
		@isEvent = true
		@year = 0
		@pdf_link = ""
		@ppt_link = ""
		@bibtex_link = ""
		@event_link = ""
	end
	
	attr_accessor :title
	attr_accessor :author_list
	attr_accessor :author_str
	attr_accessor :event_name
	attr_accessor :event_abbr
	attr_accessor :location
	attr_accessor :isEvent
	attr_accessor :year
	attr_accessor :pdf_link
	attr_accessor :ppt_link
	attr_accessor :bibtex_link
	attr_accessor :event_link
	
end