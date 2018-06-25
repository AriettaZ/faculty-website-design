class Award
  def initialize
    @title = ""
    @description = ""
    @link = ""
  end

  attr_accessor :title
  attr_accessor :description
  attr_accessor :link

  def pretty_print
    puts "Title: " + @title
    puts "Description: " + @description
    puts "Link: " + @link
  end
end
