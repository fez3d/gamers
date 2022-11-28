class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:update_score, :update_current_avatar]

  def index
    redirect_to user_profile_path if current_user
  end

  # PUT /user/:id/update_score
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

  # PUT /user/:id/update_current_avatar
  def update_current_avatar
    user = User.find(params[:id])

    if user.update(current_avatar_params)
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

  private

  def current_avatar_params
    params.permit(
      :current_skin, :current_eye, :current_eyebrow, :current_mouth, :current_hairstyle,
      :current_haircolor, :current_facialhair, :current_clothe, :current_fabriccolor,
      :current_backgroundcolor, :current_glasses, :current_tattoo, :current_accesory
    )
  end
end
