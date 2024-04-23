class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags
    validates :name, presence: {message: "No puedes dejarlo vacío"}, uniqueness: {message: "Ya existe"}
 
end
