# frozen_string_literal: true

class RetrosController < ApplicationController
  def index
    @retro = Retro.all
  end

  def show
    @retro = Retro.find(params[:id])
  end

  def new
    @retro = Retro.new
  end

  def edit
    @retro = Retro.find(params[:id])
  end

  def create
    @retro = Retro.new(retro_params)

    if @retro.save
      redirect_to @retro
    else
      render 'new'
    end
  end

  def update
    @retro = Retro.find(params[:id])

    if @retro.update(retro_params)
      redirect_to @retro
    else
      render 'edit'
    end
  end

  private

  def retro_params
    params.require(:retro).permit(:facilitator, :date, :team, :introduction)
  end
end
