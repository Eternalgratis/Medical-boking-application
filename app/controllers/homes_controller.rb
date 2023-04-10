class HomesController < ApplicationController
  def index
    # @homes = Home.all
    render json: {message: "Hi Lovelies! Welcome to my application"}
  end
end
