class ClientsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def show
        render json: Client.find(params[:id]), methods: [:sum]
    end

    def update
        
    end

    def index
        render json: Client.all
    end

    private

  def render_not_found_response
    render json: { error: "Client not found" }, status: :not_found
  end
end
