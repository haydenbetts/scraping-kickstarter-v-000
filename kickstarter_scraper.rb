# require libraries/modules here

# scraping steps: get, make, print
# create cmobines get and make
require 'nokogiri'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  project_node = kickstarter.css(".project-card")
  binding.pry
end

def get_project_name(xml_nodes)
  xml_nodes
end

def get_project_props
end
