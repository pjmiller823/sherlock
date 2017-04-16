class HomesController < ApplicationController
  before_action :authenticate!, except: [:index, :show]
  # GET /homes
  def index

    @page = params[:page].to_i
    @starting_number = @page == 0 ? 0 : (@page - 1) * 20

    @homes = Home.all.order(created_at: :desc).page(@page).per(6)
  end

  # GET /homes/1
  def show
    @home = Home.find(params[:id])
  end

  # GET /homes/new
  def new
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
    @home = Home.find(params[:id])

    unless @home.can_user_edit?(current_user)
      redirect_to homes_path, notice: "you can't edit a home you didn't create"
    end
  end

  # POST /homes
  def create
    @home = Home.new(home_params)
    @home.created_by = current_user
    if @home.save
      redirect_to @home, notice: 'Home was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /homes/1
  def update
    @home = Home.find(params[:id])
    if @home.update(home_params)
      redirect_to @home, notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /homes/1
  def destroy
    @home = Home.find(params[:id])
    @home.destroy

    unless @home.can_user_destroy?(current_user)
      redirect_to homes_path, notice: "You can't destroy something you didn't create"
    end
    redirect_to homes_url, notice: 'Home was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def home_params
    params.require(:home).permit(:address, :city, :state, :zip, :number_of_bedrooms, :number_of_baths, :square_footage, :price, :description, :image, :year_built)
  end
end
