class TourSerializer < ActiveModel::Serializer

  attributes :id, :title, :img, :description, :duration, :price

end
