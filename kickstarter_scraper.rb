# require libraries/modules here

# scraping steps: get, make, print
# create cmobines get and make
require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  project_nodes = kickstarter.css(".project-card")
  project_nodes.each do |project|
    binding.pry
    project.css(".bbcard_name").text
  end
end

def get_project_name(xml_nodes)
  xml_nodes
end

def get_project_props
end

create_project_hash
