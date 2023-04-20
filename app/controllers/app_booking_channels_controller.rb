class AppBookingChannelsController < ApplicationController
  before_action :set_app_booking_channel, only: %i[ show update destroy ]

  # GET /app_booking_channels
  def index
    @app_booking_channels = AppBookingChannel.all

    render json: @app_booking_channels
  end

  # GET /app_booking_channels/1
  def show
    render json: @app_booking_channel
  end

  # POST /app_booking_channels
  def create
    @app_booking_channel = AppBookingChannel.new(app_booking_channel_params)

    if @app_booking_channel.save
      render json: @app_booking_channel, status: :created, location: @app_booking_channel
    else
      render json: @app_booking_channel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /app_booking_channels/1
  def update
    if @app_booking_channel.update(app_booking_channel_params)
      render json: @app_booking_channel
    else
      render json: @app_booking_channel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /app_booking_channels/1
  def destroy
    @app_booking_channel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_booking_channel
      @app_booking_channel = AppBookingChannel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_booking_channel_params
      params.require(:app_booking_channel).permit(:app_booking_channel_name)
    end
end
