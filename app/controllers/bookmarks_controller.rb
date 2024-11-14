class BookmarksController < ApplicationController
  def index
    @bookmark = Bookmark.all
  end

  def show
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    # No need for app/views/bookmarks/create.html.erb
    redirect_to bookmark_path(@bookmark)
  end

  def destroy
  end

  def new
    @bookmark = Bookmark.new(params[:id])
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
