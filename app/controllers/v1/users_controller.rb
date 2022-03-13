class V1::UsersController < ApplicationController
  def index
    render json: { users: User.all }
  end

  def create
    user = User.new(user_params)
    user.save
  end

  private
  def user_params
    params.permit(:family_name, 
                  :family_name_kana, 
                  :given_name, 
                  :given_name_kana,
                  :email,
                  :image
                )
  end
end
