class MusiciansController < ActionController::Base
  def index
    @musicians = Musician.all
    render :index
  end

  def show
    @musician = Musician.find(params[:id])
  end

  def new
    @musician = Musician.new
    render :new
  end

  def create
    @musician = Musician.new(musician_params)
    if @musician.save
      redirect_to musician_path(@musician)
    else
      render :new
    end
  end

  def edit
    @musician = Musician.find(params[:id])
    render :edit
  end

  def update
    @musician = Musician.find(params[:id])
    if @musician.update(musician_params)
      redirect_to musician_path
    else
      render :edit
    end
  end

  def destroy
    @musician = Musician.find(params[:id])
    @musician.destroy
    redirect_to musician_path
  end

  private
  def musician_params
    params.require(:musician).permit(:name)
  end

end
