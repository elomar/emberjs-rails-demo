class PicturesController < ApplicationController
  def index
    render json: { pictures: Picture.all.as_json(only: [:id, :title], methods: :path, root: false) }
  end
end
