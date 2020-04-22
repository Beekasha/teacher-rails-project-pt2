class Teacher < ApplicationRecord
  has_many :klasses
  has_many :comments
  has_many :documents, through: :klasses
    
  has_many :students, through: :klasses
  has_many :parents, through: :students

  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
