class Fact < ActiveRecord::Base
  validates :name, :value, presence: true
end
