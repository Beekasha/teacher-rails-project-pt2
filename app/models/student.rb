class Student < ApplicationRecord

    has_many :comments
    has_and_belongs_to_many :klasses
    has_many :teachers, through: :klasses
    has_one :parent


    scope :seniors, -> {
        where(:grade => 12)
    }

end
