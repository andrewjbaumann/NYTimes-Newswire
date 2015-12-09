require 'rubygems'
require 'net/http'
require 'json'

file = File.read('apiKeys.json')

jsonHash = JSON.parse(file)
section = Array.new

wireURI = URI('http://api.nytimes.com/svc/news/v3/content/all/all.json?limit=15&offset=50&api-key=' + jsonHash['newswire'])
wireResponse = Net::HTTP.get(wireURI)
wireResponseJson = JSON.parse(wireResponse)

for results in wireResponseJson['results']
	section.push(results['section'])
end

for entry in section
	puts entry
end
	
# just in case i hit the daily limit  
# File.write('results.json',wireResponseJson)


