class RequisitionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_requisition, only: [:show, :edit, :update, :destroy]

  # GET /requisitions
  # GET /requisitions.json
  def index
    @requisitions = Requisition.all
  end

  # GET /requisitions/1
  # GET /requisitions/1.json
  def show
  end

  # GET /requisitions/new
  def new
    @requisition = Requisition.new
    @requisition.items.build

  end

  # GET /requisitions/1/edit
  def edit
  end

  # POST /requisitions
  # POST /requisitions.json
  def create
    @requisition = Requisition.new(requisition_params)

    respond_to do |format|
      if @requisition.save
        # @requisition.update_attribute(:user_id, current_user.id)
        format.html { redirect_to @requisition, notice: 'Requisition was successfully created.' }
        format.json { render :show, status: :created, location: @requisition }
      else
        format.html { render :new }
        format.json { render json: @requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requisitions/1
  # PATCH/PUT /requisitions/1.json
  def update
    respond_to do |format|
      if @requisition.update(requisition_params)
        format.html { redirect_to @requisition, notice: 'Requisition was successfully updated.' }
        format.json { render :show, status: :ok, location: @requisition }
      else
        format.html { render :edit }
        format.json { render json: @requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requisitions/1
  # DELETE /requisitions/1.json
  def destroy
    @requisition = Requisition.find(params[:id])
    @requisition.destroy
    respond_to do |format|
      format.html { redirect_to requisitions_url, notice: 'Requisition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisition
      @requisition = Requisition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requisition_params
      params.require(:requisition).permit(:request_by, :request_date, :project_name, :delivery_date, :purpose, items_attributes:[:id, :name, :last_purchase_rate, :last_purchase_amount, :estimated_purchase_rate, :estimated_purchase_amount, :_destroy]).merge(user: current_user)
    end
end
