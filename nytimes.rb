require 'rubygems'
require 'net/http'
require 'json'

file = File.read('apiKeys.json')
jsonHash = JSON.parse(file)

puts jsonHash['books']
