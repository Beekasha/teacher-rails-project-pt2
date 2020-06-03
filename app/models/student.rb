class Student < ApplicationRecord

    has_many :comments
    has_and_belongs_to_many :klasses
    has_many :teachers, through: :klasses
    has_one :parent


    scope :seniors, -> {
        where(:grade => 12)
    }

    scope :sort_by_name, -> {
        order(:name)
    }

    # def self.search(search)
    #     if search
    #         student = Student.find_by(name: search)
    #         if student
    #     Student.find_by(name: search)
    # end

    def self.search(string)
        if string
            if string == ""
                Student.all.sort_by_name
            else
                Student.where("name like ?", "%#{string}%")
            end
        else
            current_teacher.students.sort_by_name
        end
    end

end
