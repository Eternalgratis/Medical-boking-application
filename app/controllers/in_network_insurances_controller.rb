class InNetworkInsurancesController < ApplicationController
  before_action :set_in_network_insurance, only: %i[ show update destroy ]

  # GET /in_network_insurances
  def index
    @in_network_insurances = InNetworkInsurance.all

    render json: @in_network_insurances
  end

  # GET /in_network_insurances/1
  def show
    render json: @in_network_insurance
  end

  # POST /in_network_insurances
  def create
    @in_network_insurance = InNetworkInsurance.new(in_network_insurance_params)

    if @in_network_insurance.save
      render json: @in_network_insurance, status: :created, location: @in_network_insurance
    else
      render json: @in_network_insurance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /in_network_insurances/1
  def update
    if @in_network_insurance.update(in_network_insurance_params)
      render json: @in_network_insurance
    else
      render json: @in_network_insurance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /in_network_insurances/1
  def destroy
    @in_network_insurance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_in_network_insurance
      @in_network_insurance = InNetworkInsurance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def in_network_insurance_params
      params.require(:in_network_insurance).permit(:insurance_name, :office_id)
    end
end
