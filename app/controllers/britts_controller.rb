class BrittsController < ApplicationController
  before_action :set_britt, only: [:show, :edit, :update, :destroy]

  # GET /britts
  # GET /britts.json
  def index
    @britts = Britt.all
  end

  # GET /britts/1
  # GET /britts/1.json
  def show
  end

  # GET /britts/new
  def new
    @britt = Britt.new
  end

  # GET /britts/1/edit
  def edit
  end

  # POST /britts
  # POST /britts.json
  def create
    @britt = Britt.new(britt_params)

    respond_to do |format|
      if @britt.save
        format.html { redirect_to @britt, notice: 'Britt was successfully created.' }
        format.json { render :show, status: :created, location: @britt }
      else
        format.html { render :new }
        format.json { render json: @britt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /britts/1
  # PATCH/PUT /britts/1.json
  def update
    respond_to do |format|
      if @britt.update(britt_params)
        format.html { redirect_to @britt, notice: 'Britt was successfully updated.' }
        format.json { render :show, status: :ok, location: @britt }
      else
        format.html { render :edit }
        format.json { render json: @britt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /britts/1
  # DELETE /britts/1.json
  def destroy
    @britt.destroy
    respond_to do |format|
      format.html { redirect_to britts_url, notice: 'Britt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_britt
      @britt = Britt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def britt_params
      params.require(:britt).permit(:content, :user_id)
    end
end
