class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    has_many :posts
    belongs_to :post

    validates :title, presence: true
    validates :content, presence: true
    validates :user_id, presence: true
    validates :likes_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Likes negativos?" }
    validates :answers_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Respuestas negativas?" }

    before_validation :set_default_published_at

  private

  def set_default_published_at
    self.published_at ||= Time.zone.today
  end
end

