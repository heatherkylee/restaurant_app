class Api::RestaurantsController < ApplicationController
  def index
    response = Unirest.get("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=#{ENV['API_KEY']}")
    @news = response.body
    render "index.json.jbuilder"
  end
end
