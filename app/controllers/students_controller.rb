class StudentsController < ApplicationController
    before_action :authenticate_teacher! #decide which comments you want to have private


    def index
        @students = current_teacher.students.sort_by_name #created scope in the class (otherwise got multiple student instances when listing - multiple students can be in multiple classes)
        
    end

    def show
        @student = Student.find_by(id: params[:id])
        @comments = @student.comments.all
        if @student.parent
            @parent = @student.parent
        end
    end
end
