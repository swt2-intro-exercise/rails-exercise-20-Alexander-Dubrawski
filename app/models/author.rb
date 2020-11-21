class Author < ApplicationRecord
    has_and_belongs_to_many :papers
    validates :last_name, presence: true, allow_blank: false
    def name
        "#{self[:first_name]} #{self[:last_name]}"
    end
end
