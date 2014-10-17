# This code sample demonstrates a GET call to the One Month Simple API
# gem install rest_client

require 'rest_client'
require 'json'

#API_KEY = 'ASK YOUR ADMIN'
API_KEY = '2-050ddd40584978fe9e82840b8b95abb98e4786dc'
TOKEN = 'Token token=' + API_KEY

def make_request(url)
  headers = {"Authorization" => TOKEN }
  
  begin
      RestClient.get(url, headers.merge({:accept => :json}))
  rescue => e
    puts e
    e.response
  end
end

puts make_request('http://localhost:3000/api/v1/users')
