class Book < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3 }
    validates :book_id, format: { with: /\A[+-]?\d+\z/, message: "only allows integers" }
    validates :phone, uniqueness: true
    belongs_to :author
end
