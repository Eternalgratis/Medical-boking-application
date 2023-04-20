class HospitalAffiliationsController < ApplicationController
  before_action :set_hospital_affiliation, only: %i[ show update destroy ]

  # GET /hospital_affiliations
  def index
    @hospital_affiliations = HospitalAffiliation.all

    render json: @hospital_affiliations
  end

  # GET /hospital_affiliations/1
  def show
    render json: @hospital_affiliation
  end

  # POST /hospital_affiliations
  def create
    @hospital_affiliation = HospitalAffiliation.new(hospital_affiliation_params)

    if @hospital_affiliation.save
      render json: @hospital_affiliation, status: :created, location: @hospital_affiliation
    else
      render json: @hospital_affiliation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hospital_affiliations/1
  def update
    if @hospital_affiliation.update(hospital_affiliation_params)
      render json: @hospital_affiliation
    else
      render json: @hospital_affiliation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hospital_affiliations/1
  def destroy
    @hospital_affiliation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital_affiliation
      @hospital_affiliation = HospitalAffiliation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hospital_affiliation_params
      params.require(:hospital_affiliation).permit(:doctor_id, :hospital_name, :city, :country, :start_date, :end_date)
    end
end
