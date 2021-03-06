# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    generated_password = Devise.friendly_token.first(6)
    random = format("%0#{5}d", SecureRandom.random_number(10**5))
    @user = User.new(email: params[:user][:email], password: generated_password, display_id: random)
    if @user.save
      redirect_to new_record_path, notice: '新規メールアドレスを登録しました！'
    else
      redirect_to new_user_registration_path, notice: '同じメールアドレスは登録できません'
    end
    # ユーザー新規作成時にメールが飛ぶ（開発環境下ではOK,本番環境ではみじっそうのため、一旦コメントアウト）
    # RegistrationMailer.welcome(user, generated_password).deliver
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:display_id, :admin])
  end

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
