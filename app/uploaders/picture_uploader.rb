# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  storage :fog

  def cache_dir
    "#{Rails.root}/tmp/uploads"
  end
end

