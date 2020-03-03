# frozen_string_literal: true

class Retro < ApplicationRecord
  validates :facilitator, presence: true, length: { minimum: 2 }
  validates :date, presence: true
  validates :team, presence: true
end
