class UsersController < ApplicationController
  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user.to_json( only: [:name, :login, :email] ), status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name, :login, :email, :password)
  end
end
