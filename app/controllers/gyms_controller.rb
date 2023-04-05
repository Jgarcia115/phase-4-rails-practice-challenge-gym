class GymsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def show
    render json: Gym.find(params[:id])
  end

  def destroy
    gym = Gym.find(params[:id])
    gym.destroy
    render json: gym, status: :no_content
  end

  private

  def render_not_found_response
    render json: { error: "Gym not found" }, status: :not_found
  end
end
