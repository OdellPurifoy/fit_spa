class Post < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :title, :body, presence: true
end
