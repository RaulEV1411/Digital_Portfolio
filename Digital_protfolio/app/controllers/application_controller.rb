class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        attributes = [:name, :email]
        devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    end

    layout :set_layout
    def set_layout
        if current_user&.admin?
            #aqui se decide si es usuario o administrador
            'admin'
        elsif current_user&.regular?
            "user"
        end
    end




end