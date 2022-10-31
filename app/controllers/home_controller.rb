class HomeController < ApplicationController
  def index
    redirect_to user_profile_path if current_user
  end

  #PUT /user/:id/update_score
  def update_score
    user = User.find(params[:id])

    total_money = user.money + params[:money].to_i
    if user.update(money: total_money)
      render json: {
        status: 200
      }
    else
      render json: {
        error: 'no se actualizo',
        status: 400
      }
    end
  end
end
