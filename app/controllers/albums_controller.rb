class AlbumsController < ApplicationController
    def index
      @albums = Album.all
      # render :index
    end
    def new
      @album = Album.new
      render :new
    end
    def create
      @album = Album.new(album_params)
      if @album.save
        flash[:notice] = "Album Added!"
        redirect_to albums_path
      else
        :new
      end
    end

    def show
      @album = Album.find(params[:id])
    end

    def edit
      @album = Album.find(params[:id])
    end

    def update
      @album = Album.find(params[:id])
      if @album.update(album_params)
        flash[:notice] = "Successfully updated"
        redirect_to album_path(@album)
      else
        render :edit
      end
    end

    private
     def album_params
       params.require(:album).permit(:name)
     end

end
