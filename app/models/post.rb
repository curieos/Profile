class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, length: { minimum: 3, maximum: 50 }
  validates :image_url, http_url: true
  validates :content, length: { minimum: 100, maximum: 10_000 }

  belongs_to :users
end
