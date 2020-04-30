class StudentsController < ApplicationController
    def index
        #this needs to change to students that share classes with the teacher
        @students = current_teacher.students.all.uniq
        
    end

    def show
        @student = Student.find_by(id: params[:id])
        @comments = @student.comments.all
    end
end
