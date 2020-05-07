class StudentsController < ApplicationController
    before_action :authenticate_teacher! #decide which comments you want to have private


    def index
        #this needs to change to students that share classes with the teacher
        binding.pry
        @students = current_teacher.students.sort_by_name
        
    end

    def show
        @student = Student.find_by(id: params[:id])
        @comments = @student.comments.all
        if @student.parent
            @parent = @student.parent
        end
    end
end
