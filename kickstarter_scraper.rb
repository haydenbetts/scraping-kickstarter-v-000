# require libraries/modules here

# scaping steps: get, make, print
require 'nokogiri'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)


end

def 
