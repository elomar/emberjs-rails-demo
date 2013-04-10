class Tip < ActiveRecord::Base
  validates :name, :title, :body, presence: true

  attr_accessible :name, :title, :body
end
