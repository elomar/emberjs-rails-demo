class TipsController < ApplicationController
  respond_to :json

  def index
    respond_with Tip.all
  end

  def create
    @tip = Tip.new(params.require(:tip).permit(:name, :title, :body))
    @tip.save
    respond_with @tip
  end
end
