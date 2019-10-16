class Recording < ApplicationRecord
  validates :name, :url, presence: true
end
