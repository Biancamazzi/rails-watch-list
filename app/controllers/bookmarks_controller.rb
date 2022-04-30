class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save

    # redirect_to bookmark_path(@bookmark_path)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end
  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id )
  end
end
