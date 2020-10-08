require 'nokogiri'
require 'open-uri'

def get_cities #va retourner une array contenant toutes les villes
    page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
    return page.xpath('//tr[3]//a/text()').to_a
end

puts get_cities 