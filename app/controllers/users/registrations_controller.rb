class Users::RegistrationsController < Devise::RegistrationsController
  @@registration_code = "Michael"
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # def update
  #   self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)


  #   # custom logic
  #   if params[:current_password].blank?
  #     resource.update_without_password(params)
  #   else
  #     resource.update_with_password(params)
  #   end

  #   # standart devise behaviour
  #   if result
  #     if is_navigational_format?
  #       if resource.respond_to?(:pending_reconfirmation?) && resource.pending_reconfirmation?
  #         flash_key = :update_needs_confirmation
  #       end
  #       set_flash_message :notice, flash_key || :updated
  #     end
  #     sign_in resource_name, resource, :bypass => true
  #     respond_with resource, :location => after_update_path_for(resource)
  #   else
  #     clean_up_passwords resource
  #     respond_with resource
  #   end
  # end

  # DELETE /resource
  def destroy
    user = User.find(params[:toDelete])

    users_team = user.team
    if user.is_a_leader && users_team.members.length == 1
      users_team.destroy
    elsif user.is_a_leader && users_team.members.length > 1
      team_members_without_leader = users_team.members - [users_team.leader]
      users_team.user_id = team_members_without_leader[0].id
      users_team.save!
    end

    user.destroy

    redirect_to users_path, flash: {notice: "User was successfully deleted"}
  end

  def update_resource(resource, params)
    if params[:password].blank? && params[:password_confirmation].blank? && params[:email].eql?(@user.email)
      params.delete(:current_password)
      resource.update_without_password(params)
    else
      super
    end
  end
  
  # def update_resource(resource, params)
  #   resource.update_without_password(params)
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
