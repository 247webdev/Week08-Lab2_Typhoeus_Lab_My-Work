class MoviesController < ApplicationController
  def index
    search_title = params[:search]
    request = Typhoeus::Request.new(
      "http://www.omdbapi.com/?",
      method: :get,
      params: { s: search_title }
    )
    request.run
    movies = JSON.parse(request.response.body)
    @movies = movies["Search"]

    respond_to do |format|
      format.html # render .erb template as normal
      format.json {render :json => @movies}
    end
  end

  def search
  end

end
