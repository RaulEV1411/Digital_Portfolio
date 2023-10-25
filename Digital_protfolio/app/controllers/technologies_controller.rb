class TechnologiesController < ApplicationController
  before_action :set_technology, only: %i[ show edit update destroy ]

  # GET /technologies or /technologies.json
  def index
    @technologies = Technology.all
  end

  # GET /technologies/1 or /technologies/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technology
      @technology = Technology.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def technology_params
      params.require(:technology).permit(:name)
    end
end
