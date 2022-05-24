class Theme < ApplicationRecord
  # has_many :images

  scope :find_theme_id, ->(theme) { find_by_name(theme).id }

end
