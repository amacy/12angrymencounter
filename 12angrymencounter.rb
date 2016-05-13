require "sinatra"
require "date"
require "haml"

get "/" do
  last_mention = Date.new(2016, 5, 11)
  counter = (Date.today - last_mention).to_i

  haml :index, locals: { counter: counter }
end
