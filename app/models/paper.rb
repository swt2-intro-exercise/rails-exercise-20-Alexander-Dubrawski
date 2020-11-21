class Paper < ApplicationRecord
    has_and_belongs_to_many :authors
    validates :title, presence: true, allow_blank: false
    validates :venue, presence: true, allow_blank: false
    validates :year, presence: true, numericality: true
end
