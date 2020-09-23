class PasswordsController < ApplicationController
  def update
    if !params[:password].present?
      render json: {error: 'Password not present'}, status: :unprocessable_entity
      return
    end
  
    current_user = User.where(authentication_token: params[:authentication_token]).first

    if current_user.reset_password(params[:password], params[:password_confirmation])
      render json: {status: 'ok'}, status: :ok
    else
      render json: {errors: current_user.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
