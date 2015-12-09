require 'rubygems'
require 'net/http'
require 'json'

file = File.read('apiKeys.json')
jsonHash = JSON.parse(file)

wireURI = URI('http://api.nytimes.com/svc/news/v3/content/all/all.xml?limit=15&offset=50&api-key=' + jsonHash['newswire'])
wireResponse = Net::HTTP.get(wireURI)
wireResponseJson = JSON.parse(wireResponse)

