class SearchController < ApplicationController
  def index
    @pokemon = Search.get(params[:query])
  end

  def show
  end

  private
    def search_params
      params.require(:search).permit(:name, :id, :query)
    end
end
