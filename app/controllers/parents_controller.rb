class ParentsController < ApplicationController

    def index
        if params[:student_id]
            @student = Student.find_by(id: params['student_id'] )
            if @student.parent.nil?
                redirect_to students_path
            else
                @parent = @student.parent
            end
        else
            redirect_to students_path
        end
    end

    def new
        @parent = Parent.new
        @student = Student.find_by(id: params[:student_id])
    end

    def create
        @student = Student.find_by(id: params[:student_id])

        @parent = Parent.new
        @parent.student_id = @student.id
        redirect_to student_path(@student)

    end
end
