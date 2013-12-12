class CastsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /casts
  # GET /casts.json
  def index
    @casts = Cast.all
  end

  # GET /casts/1
  # GET /casts/1.json
  def show
  end

  # GET /casts/new
  def new
    @cast = current_user.casts.build
  end

  # GET /casts/1/edit
  def edit
  end

  # POST /casts
  # POST /casts.json
  def create
    @cast = current_user.casts.build(cast_params)

    respond_to do |format|
      if @cast.save
        format.html { redirect_to @cast, notice: 'Cast was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cast }
      else
        format.html { render action: 'new' }
        format.json { render json: @cast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casts/1
  # PATCH/PUT /casts/1.json
  def update
    respond_to do |format|
      if @cast.update(cast_params)
        format.html { redirect_to @cast, notice: 'Cast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casts/1
  # DELETE /casts/1.json
  def destroy
    @cast.destroy
    respond_to do |format|
      format.html { redirect_to casts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cast
      @cast = Cast.find(params[:id])
    end

    def correct_user
      @pin = current_user.casts.find_by(id: params[:id])
      redirect_to casts_path notice: "Not authorized to edit this" if @cast.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cast_params
      params.require(:cast).permit(:name, :company, :description, :dates_locations, :compensation)
    end
end
