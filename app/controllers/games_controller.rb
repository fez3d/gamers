class GamesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def snake
  end

  def tetris
  end

  def breakout
  end

  def doodle_jump
  end
end
