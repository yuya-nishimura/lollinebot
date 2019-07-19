class Idol < ApplicationRecord
  validates name: :unique
end
