# require libraries/modules here

# scraping steps: get, make, print
# create cmobines get and make
require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  project_nodes = kickstarter.css(".project-card")
  project_nodes.collect do |project|
    {
      project.css(".bbcard_name").css("a").text => {
        :image_link => project.css(".project-thumbnail img").attr("src").value,
        :description => project.css(".bbcard_blurb").text,
        :location => project.css(".location-name").text,
        :percent_funded => project.css(".first.funded strong").text
      }
    }
  end
  
end

def get_project_name(xml_nodes)
  xml_nodes
end

def get_project_props
end

create_project_hash
