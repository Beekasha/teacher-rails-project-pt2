class StudentsController < ApplicationController
    before_action :authenticate_teacher! #decide which comments you want to have private


    def index
        
        if params[:student_search]
            @students = Student.search(params[:student_search])
        else
            @students = current_teacher.students.sort_by_name
        end

    end

    def show
        @student = Student.find_by(id: params[:id])
        @comments = @student.comments.all
        if @student.parent
            @parent = @student.parent
        end
    end

end
