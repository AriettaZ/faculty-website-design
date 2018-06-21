# Author: Mike
# Created: 6/20
# Edit: N/A

require 'Mechanize'
require 'selenium-webdriver'
require_relative 'publication'

class Scraper
	def initialize
	
		urls = ['http://web.cse.ohio-state.edu/~stewart.962/publications.full.html','http://web.cse.ohio-state.edu/~stewart.962/publications.tr.html']
		agent = Mechanize.new
		@data = Hash.new{|h,k| h[k] = []} 
		urls.each{
			|url|
			@page = agent.get(url)
			getAllData
		}
#		puts JSON.pretty_generate(@data).gsub(":", " =>")
		@data.default_proc = nil
		File.write "../data/publication_data", Marshal.dump(@data)
	end
	
	def getAllData
		
		smalls = @page.search('.entry>small')
		pdf_ppt_bib = @page.search('.entry>a')
		info = @page.search('.entry>big')
		smalls.length.times do
			|index|
			pub = Publication.new
			parse_abbr_link_year pub, smalls[index]
			
			pdf_index = index*3
			parse_pdf_link pub, pdf_ppt_bib[pdf_index]
			parse_ppt_link pub, pdf_ppt_bib[pdf_index+1]
			parse_bib_link pub, pdf_ppt_bib[pdf_index+2]
			
			title_index = index*2
			parse_title_author_eventname_location pub, info[title_index]
			
			@data[pub.year]<<pub
#			pub.pretty_print
		end
	end
	
	def parse_abbr_link_year pub, element
		pub.event_link = element.to_s[/href=\".*\"/][6...-1]
		event_abbr_with_year = element.text[1...-1]
		year_index = event_abbr_with_year.index(/\d\d\d\d/)
		if year_index
			pub.event_abbr = event_abbr_with_year[0...year_index].strip
			pub.year = event_abbr_with_year[year_index,4].strip
		else
			pub.event_abbr = event_abbr_with_year.strip
		end
	end
	
	def parse_pdf_link pub, element
		link = element.to_s[/http:.*\.pdf/]
		if link
			pub.pdf_link = link
		end
	end
	
	def parse_ppt_link pub, element
		link = element.to_s[/http:.*(\.pdf|\.pptx|\.ppt)/]
		if link
			pub.ppt_link = link
		end
	end
	
	def parse_bib_link pub, element
		link = element.to_s[/href=".*"/][6...-1]
		if link
			pub.bibtex_link = "http://web.cse.ohio-state.edu/~stewart.962/"+link
		end
	end
	
	def parse_title_author_eventname_location pub, element
		paragraph = element.text.split("\n")
		pub.title = paragraph[0]
		pub.author_str = paragraph[1].split(":")[0]
		pub.author_list = pub.author_str.split(" and ")
		pub.event_name = paragraph[2]
		location_year = paragraph[3]
		year_index = location_year.index(/,\s+\w*\s+\d\d\d\d/)
		pub.location = location_year[0...year_index]
		if pub.year == 0
			pub.year = location_year[/\d\d\d\d/]
		end
		if pub.location == "Columbus, OH"
			pub.isEvent = false
		else
			pub.isEvent = true
		end
	end
	
end

Scraper.new