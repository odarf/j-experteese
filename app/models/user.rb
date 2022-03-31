class User < ApplicationRecord
  has_many :values, dependent: :destroy
  # TODO: validations
end
