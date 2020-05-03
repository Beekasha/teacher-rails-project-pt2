class Teachers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @teacher = Teacher.from_omniauth(request.env["omniauth.auth"])

    if @teacher.persisted?
      sign_in_and_redirect @teacher, event: :authentication #this will throw if @teacher is not activated
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_teacher_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end