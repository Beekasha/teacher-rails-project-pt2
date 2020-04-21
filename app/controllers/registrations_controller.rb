class RegistrationsController < ApplicationController
    def sign_up_params
        params.require(:teacher).permit(:email, :password, :password_confirmation, :name)
    end

end
