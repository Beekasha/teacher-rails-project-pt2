class Parent < ApplicationRecord
    belongs_to :student
    validates :phone_number, length: { is: 10 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 




end
