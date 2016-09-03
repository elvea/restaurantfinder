class HomeController < ApplicationController
  def index
  end

  def search
    parameters = { term: params[:term], limit: 6 }
    render json: Yelp.client.search('Stockholm', parameters)
  end
end
