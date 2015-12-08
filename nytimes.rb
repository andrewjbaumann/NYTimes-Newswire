require 'net/http'

uri = URI.parse("http://api.nytimes.com/svc/news/3/content)
response = Net::HTTP.post_form(uri