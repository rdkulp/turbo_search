class SearchController < ApplicationController
  def index
    @pokemon = Search.get(params[:search])
  end

  def show
  end

  private
    def search_params
      params.require(:search).permit(:name, :id, :search)
    end
end
