class MoviesController < ApplicationController
  def index

  end

  def search
    search_title = params[:search]
    request = Typhoeus::Request.new(
      "http://www.omdbapi.com/?",
      method: :get,
      params: { s: search_title }
    )
    request.run
    movies = JSON.parse(request.response.body)
    @movies = movies["Search"]
    # binding.pry
    render :index
  end
end
