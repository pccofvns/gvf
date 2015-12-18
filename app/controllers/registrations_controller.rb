class RegistrationsController < Devise::RegistrationsController

  protected
  # Overwrite update_resource to let users to update their user without giving their password
  def update_resource(resource, params)
    if current_user.email.start_with?("tathagata")
      params.delete("current_password")
      resource.update_without_password(params)
    else
      resource.update_with_password(params)
    end
  end

end