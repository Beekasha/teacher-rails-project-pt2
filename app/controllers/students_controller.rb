class StudentsController < ApplicationController
    def index
        #this needs to change to students that share classes with the teacher
        @students = Student.all
    end
end
