class SocialLinksController < ApplicationController
  before_action :set_social_link, only: %i[ show edit update destroy ]

  # GET /social_links or /social_links.json
  def index
    @social_links = SocialLink.all
  end

  # GET /social_links/1 or /social_links/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_link
      @social_link = SocialLink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_link_params
      params.require(:social_link).permit(:name, :url)
    end
end
