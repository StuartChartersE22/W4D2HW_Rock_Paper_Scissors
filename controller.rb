require("sinatra")
require("sinatra/contrib/all")
require_relative("./models/game.rb")
also_reload("./models/*.rb")


get "/RPS/" do #finds home in view
  erb(:home)
end

get "/RPS/:hand1/:hand2" do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  @result = Game.compare(hand1, hand2)
end
