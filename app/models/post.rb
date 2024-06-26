class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    belongs_to :parent_post, class_name: "Post", optional: true
    has_many :child_post, class_name: "Post", foreign_key: "parent_post_id"

    validates :title, presence: {message: "Te faltó ponerle título"}
    validates :content, presence: {message: "Y el mensaje?"}
    validates :user_id, presence: {message: "No hay usuario"}
    validates :likes_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Likes negativos?" }
    validates :answers_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Respuestas negativas?" }
    
    before_validation :set_default_published_at

  private

  def set_default_published_at
    self.published_at ||= Time.zone.today
  end
end

