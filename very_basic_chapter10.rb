
#10-1



require "net/http"
require "uri"
uri = URI.parse("http://localhost:4567/drink")
p Net::HTTP.get(uri)