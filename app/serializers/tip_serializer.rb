class TipSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :title, :body
end
