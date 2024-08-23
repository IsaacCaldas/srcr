require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('www.youtube.com/', 443) 

https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)

desafio = doc.at('p')

puts desafio.content 
