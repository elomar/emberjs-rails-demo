class Tip < ActiveRecord::Base
  validates :name, :title, :body, presence: true
end
