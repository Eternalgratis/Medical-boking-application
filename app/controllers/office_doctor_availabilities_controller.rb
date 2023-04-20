class OfficeDoctorAvailabilitiesController < ApplicationController
  before_action :set_office_doctor_availability, only: %i[ show update destroy ]

  # GET /office_doctor_availabilities
  def index
    @office_doctor_availabilities = OfficeDoctorAvailability.all

    render json: @office_doctor_availabilities
  end

  # GET /office_doctor_availabilities/1
  def show
    render json: @office_doctor_availability
  end

  # POST /office_doctor_availabilities
  def create
    @office_doctor_availability = OfficeDoctorAvailability.new(office_doctor_availability_params)

    if @office_doctor_availability.save
      render json: @office_doctor_availability, status: :created, location: @office_doctor_availability
    else
      render json: @office_doctor_availability.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /office_doctor_availabilities/1
  def update
    if @office_doctor_availability.update(office_doctor_availability_params)
      render json: @office_doctor_availability
    else
      render json: @office_doctor_availability.errors, status: :unprocessable_entity
    end
  end

  # DELETE /office_doctor_availabilities/1
  def destroy
    @office_doctor_availability.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office_doctor_availability
      @office_doctor_availability = OfficeDoctorAvailability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def office_doctor_availability_params
      params.require(:office_doctor_availability).permit(:office_id, :day_of_week, :start_time, :end_time, :is_available, :reason_of_unavailability)
    end
end
