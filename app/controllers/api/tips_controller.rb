module Api
  class TipsController < BaseController
    actions :index, :create

    protected 

    def resource_params
      params.require(:tip).permit(:name, :title, :body)
    end
  end
end
