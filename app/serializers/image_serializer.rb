class ImageSerializer < ActiveModel::Serializer
  attributes :id, :file, :name, :avg_value, :theme_id
end
