class FactsController < ApplicationController
  respond_to :json

  def index
    respond_with Fact.all
  end
end
