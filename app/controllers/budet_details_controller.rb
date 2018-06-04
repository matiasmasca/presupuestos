class BudetDetailsController < ApplicationController
  before_action :set_budet_detail, only: [:show, :edit, :update, :destroy]

  # GET /budet_details
  # GET /budet_details.json
  def index
    @budet_details = BudetDetail.all
  end

  # GET /budet_details/1
  # GET /budet_details/1.json
  def show
  end

  # GET /budet_details/new
  def new
    @budet_detail = BudetDetail.new
  end

  # GET /budet_details/1/edit
  def edit
  end

  # POST /budet_details
  # POST /budet_details.json
  def create
    @budet_detail = BudetDetail.new(budet_detail_params)

    respond_to do |format|
      if @budet_detail.save
        format.html { redirect_to @budet_detail, notice: 'Budet detail was successfully created.' }
        format.json { render :show, status: :created, location: @budet_detail }
      else
        format.html { render :new }
        format.json { render json: @budet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budet_details/1
  # PATCH/PUT /budet_details/1.json
  def update
    respond_to do |format|
      if @budet_detail.update(budet_detail_params)
        format.html { redirect_to @budet_detail, notice: 'Budet detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @budet_detail }
      else
        format.html { render :edit }
        format.json { render json: @budet_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budet_details/1
  # DELETE /budet_details/1.json
  def destroy
    @budet_detail.destroy
    respond_to do |format|
      format.html { redirect_to budet_details_url, notice: 'Budet detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budet_detail
      @budet_detail = BudetDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budet_detail_params
      params.require(:budet_detail).permit(:budget_id, :product_id, :amount, :unit_price, :subtotal)
    end
end
