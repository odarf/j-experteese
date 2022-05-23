class Value < ApplicationRecord
  belongs_to :user
  belongs_to :image

  scope :user_valued_image, ->(current_user_id, image_id) { where(user_id: current_user_id, image_id: image_id) }

  def self.user_valued_exists(current_user_id, image_id)
    value_image = user_valued_image(current_user_id, image_id)
    if value_image.blank?
      res = 0
      value = 0
    else
      res = 1
      value = value_image[0].value
    end
    [res, value]
  end

  def self.calculate_avg_value(image_id)
    values_arr = self.where(image_id: image_id).pluck(:value)
    values_sum = values_arr.inject(:+)
    avg_value = values_sum / values_arr.size
    logger.info "In calc_average_value: values_arr = #{values_arr.inspect}, values_sum = #{values_sum.inspect}, avg_value = #{avg_value.inspect}"
    avg_value.round
  end
end
