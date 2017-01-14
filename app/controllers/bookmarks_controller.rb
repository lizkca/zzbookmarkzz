class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
  
  def show
    id = params[:id]
    @bookmark = Bookmark.find(id)
  end
  
  def new
    @bookmark = Bookmark.new
  end
  
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      flash[:notice] = "#{@bookmark.address} was successfully created."
      redirect_to bookmarks_path
    end
  end
  
  def edit 
    @bookmark = Bookmark.find params[:id]
  end
  
  def update
    @bookmark = Bookmark.find params[:id]
    @bookmark.update(bookmark_params)
    flash[:notice] = "#{@bookmark.address} was successfully updated."
    redirect_to bookmark_path(@bookmark)
  end
  
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    flash[:notice] = "Bookmark '#{@bookmark.address}' deleted."
    redirect_to bookmarks_path
  end
  
  private
  
  def bookmark_params
    params.require(:bookmark).permit(:address, :description)
  end
    
end