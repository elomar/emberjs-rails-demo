module Api
  class TipsController < AuthController
    actions :index, :create
    before_filter :auth_only!, only: :create

    protected 

    def resource_params
      params.require(:tip).permit(:name, :title, :body)
    end
  end
end
