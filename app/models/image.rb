# frozen_string_literal: true

class Image < ApplicationRecord
  belongs_to :theme

  # get images array of arrays by given theme_id
  scope :theme_images, ->(theme_id) { select('id', 'name', 'file', 'avg_value').where(theme_id: theme_id) }

  # find image by id
  scope :find_image, ->(image_id) { find(image_id) }

  def self.recalculate_avg_value(image_id, avg_value)
    image = find(image_id)
    image.update(avg_value: avg_value)
  end

end
