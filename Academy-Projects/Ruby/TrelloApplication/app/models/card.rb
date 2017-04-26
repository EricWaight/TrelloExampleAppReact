class Card < ApplicationRecord
    belongs_to :board
    has_one :status
    validates :description, presence: true,
                    length: { minimum: 8 }
end
