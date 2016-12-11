class HistoriesController < ApplicationController
    def index
        @history = History.paginate(page: params[:page], per_page: 20)

        respond_to do |format|
            format.html
            format.json {render json: @history}
        end
    end
	#=> Import CSV files
    def import
        History.import(params[:file])
        redirect_to histories_url
    end
end
