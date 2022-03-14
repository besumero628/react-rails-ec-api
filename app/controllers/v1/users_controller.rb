class V1::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  def destroy
    user = User.find(params[:id])
    post.destroy!
    render json; user
  end

  private
  def user_params
    params.require(:user).permit(:family_name, 
                                :family_name_kana, 
                                :given_name, 
                                :given_name_kana,
                                :email,
                                :image
                              )
  end
end
