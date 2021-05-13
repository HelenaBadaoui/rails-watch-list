class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = bookmark.new(bookmark_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
