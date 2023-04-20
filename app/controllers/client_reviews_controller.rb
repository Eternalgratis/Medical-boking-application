class ClientReviewsController < ApplicationController
  before_action :set_client_review, only: %i[ show update destroy ]

  # GET /client_reviews
  def index
    @client_reviews = ClientReview.all

    render json: @client_reviews
  end

  # GET /client_reviews/1
  def show
    render json: @client_review
  end

  # POST /client_reviews
  def create
    @client_review = ClientReview.new(client_review_params)

    if @client_review.save
      render json: @client_review, status: :created, location: @client_review
    else
      render json: @client_review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /client_reviews/1
  def update
    if @client_review.update(client_review_params)
      render json: @client_review
    else
      render json: @client_review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /client_reviews/1
  def destroy
    @client_review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_review
      @client_review = ClientReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_review_params
      params.require(:client_review).permit(:user_id, :doctor_id, :is_review_anonymous, :wait_time_rating, :bedside_manner_rating, :overall_rating, :review, :is_doctor_recommended, :review_date)
    end
end
