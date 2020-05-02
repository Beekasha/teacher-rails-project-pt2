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
        @parent = Parent.new(parent_params)
        @parent.student_id = params[:student_id]

        @student = Student.find_by(id: params[:student_id])
        if @parent.save
            render 'parents/index'
        else
            render :new
        end
        # redirect_to student_parent_path(@student)
    end

    def show

        render 'parents/index'
    end


    private

    def parent_params
        params.require(:parent).permit(:name, :email, :student_id, :phone_number)

    end
end
