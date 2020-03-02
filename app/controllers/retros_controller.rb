class RetrosController < ApplicationController
    def index
        @retro = Retro.all
    end
    
    def show
        @retro = Retro.find(params[:id])
    end


    def new
    end

    def create

        @retro = Retro.new(retro_params)
 
        @retro.save
        redirect_to @retro
    end

    private
        def retro_params
            params.require(:retro).permit(:facilitator, :date, :team, :introduction)
        end
end
