class RetrosController < ApplicationController
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
