# require libraries/modules here

# scraping steps: get, make, print
# create cmobines get and make
require 'nokogiri'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

end

def get_project_name(xml_nodes)
  
end

def get_project_props
end