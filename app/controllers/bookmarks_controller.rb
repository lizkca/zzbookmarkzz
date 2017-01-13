class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
  
  def show
    id = params[:id]
    @bookmark = Bookmark.find(id)
  end
end