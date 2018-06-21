# Author: Mike
# Created: 6/20
# Edit: N/A

require 'Mechanize'
require_relative 'publication'

class Scraper
	def initialize
		@agent = Mechanize.new
		@url = 'http://web.cse.ohio-state.edu/~stewart.962/publications.html'
		@page = @agent.get @url
		@data = getAllData
	end
	
	def getAllData
		
	end
	
	
	
	
	
	
end

Scraper.new