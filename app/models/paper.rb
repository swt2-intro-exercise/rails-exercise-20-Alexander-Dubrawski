class Paper < ApplicationRecord
    validates :title, presence: true, allow_blank: false
    validates :venue, presence: true, allow_blank: false
    validates :year, presence: true, numericality: true
end
