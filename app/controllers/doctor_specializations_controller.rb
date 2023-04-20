class DoctorSpecializationsController < ApplicationController
  before_action :set_doctor_specialization, only: %i[ show update destroy ]

  # GET /doctor_specializations
  def index
    @doctor_specializations = DoctorSpecialization.all

    render json: @doctor_specializations
  end

  # GET /doctor_specializations/1
  def show
    render json: @doctor_specialization
  end

  # POST /doctor_specializations
  def create
    @doctor_specialization = DoctorSpecialization.new(doctor_specialization_params)

    if @doctor_specialization.save
      render json: @doctor_specialization, status: :created, location: @doctor_specialization
    else
      render json: @doctor_specialization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctor_specializations/1
  def update
    if @doctor_specialization.update(doctor_specialization_params)
      render json: @doctor_specialization
    else
      render json: @doctor_specialization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctor_specializations/1
  def destroy
    @doctor_specialization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_specialization
      @doctor_specialization = DoctorSpecialization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_specialization_params
      params.require(:doctor_specialization).permit(:doctor_id, :specialization_id)
    end
end
