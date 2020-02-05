class Comment < ApplicationRecord
    validates :body, presence: true, length: {minimum: 5}
    validates :product_id, presence: true

    belongs_to :product
end
