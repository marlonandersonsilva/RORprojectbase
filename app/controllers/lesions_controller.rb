class LesionsController < ApplicationController
  before_action :set_lesion, only: [:show, :edit, :update, :destroy]

  # GET /lesions
  # GET /lesions.json
  def index
    @lesions = Lesion.all
  end

  # GET /lesions/1
  # GET /lesions/1.json
  def show
  end

  # GET /lesions/new
  def new
    @lesion = Lesion.new
  end

  # GET /lesions/1/edit
  def edit
  end

  # POST /lesions
  # POST /lesions.json
  def create
    @lesion = Lesion.new(lesion_params)

    respond_to do |format|
      if @lesion.save
        format.html { redirect_to @lesion, notice: 'Lesion was successfully created.' }
        format.json { render :show, status: :created, location: @lesion }
      else
        format.html { render :new }
        format.json { render json: @lesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesions/1
  # PATCH/PUT /lesions/1.json
  def update
    respond_to do |format|
      if @lesion.update(lesion_params)
        format.html { redirect_to @lesion, notice: 'Lesion was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesion }
      else
        format.html { render :edit }
        format.json { render json: @lesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesions/1
  # DELETE /lesions/1.json
  def destroy
    @lesion.destroy
    respond_to do |format|
      format.html { redirect_to lesions_url, notice: 'Lesion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesion
      @lesion = Lesion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesion_params
      params.require(:lesion).permit(:name)
    end
end
