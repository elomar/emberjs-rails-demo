class TipsController < ApplicationController
  respond_to :json

  def index
    respond_with Tip.all
  end
end
