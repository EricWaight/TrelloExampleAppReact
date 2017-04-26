class Board < ApplicationRecord
     has_many :statuses
     has_many :cards
end
