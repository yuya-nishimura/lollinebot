class Idol < ApplicationRecord
  validates :name, unique: true
end
