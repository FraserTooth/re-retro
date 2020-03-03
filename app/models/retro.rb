class Retro < ApplicationRecord
    validates :facilitator, presence: true, length: {minimum: 5}
    validates :date, presence: true
    validates :team, presence: true
end
