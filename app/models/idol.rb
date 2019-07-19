class Idol < ApplicationRecord
  validates :name, uniqueness: true
end
