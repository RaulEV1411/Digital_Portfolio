class UserTypesController < ApplicationController
  before_action :set_user_type, only: %i[ show edit update destroy ]

  # GET /user_types or /user_types.json
  def index
    @user_types = UserType.all
  end

  # GET /user_types/1 or /user_types/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_type
      @user_type = UserType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_type_params
      params.require(:user_type).permit(:name)
    end
end
