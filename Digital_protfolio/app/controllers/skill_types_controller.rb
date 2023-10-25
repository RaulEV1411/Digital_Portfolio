class SkillTypesController < ApplicationController
  before_action :set_skill_type, only: %i[ show edit update destroy ]

  # GET /skill_types or /skill_types.json
  def index
    @skill_types = SkillType.all
  end

  # GET /skill_types/1 or /skill_types/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_type
      @skill_type = SkillType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skill_type_params
      params.require(:skill_type).permit(:name)
    end
end
