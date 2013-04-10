module Api
  class FactsController < AuthController
    actions :index, :create
    before_filter :auth_only!, only: :create

    protected 

    def resource_params
      params.require(:fact).permit(:name, :value)
    end
  end
end
