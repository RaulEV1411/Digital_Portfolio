class AboutController < ApplicationController
    before_action :authenticate_user! 

    def index
        render 'about'
    end
end
