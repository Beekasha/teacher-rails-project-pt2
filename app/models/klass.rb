class Klass < ApplicationRecord
  has_many :documents
    has_and_belongs_to_many :students
    belongs_to :teacher
end
