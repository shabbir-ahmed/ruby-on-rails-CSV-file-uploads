class CookiesController < ApplicationController
    def index
        @cookie = Cookie.paginate(page: params[:page], per_page: 20)

        respond_to do |format|
            format.html
            format.json {render json: @cookie}
        end
    end

    def import
        Cookie.import(params[:file])
        redirect_to root_url
    end

    private

    # def csv_params
    #     params.require(:cookie).permit(:file)
    # end
end
