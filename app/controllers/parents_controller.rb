class ParentsController < ApplicationController

    def index
        if params[:student_id]
            @student = Student.find_by(id: params[:student_id] )
            if @student.parent.nil?
                redirect_to students_path
            else
                @parent = @student.parent
            end
        else
            redirect_to students_path
        end
    end

    def edit
        
        @student = Student.find_by(id: params[:student_id]) 
        @parent = @student.parent
        
        render 'new'
       
    end



    def new
        @parent = Parent.new
        @student = Student.find_by(id: params[:student_id])
    end

    def create
        @parent = Parent.new(parent_params)
        @parent.student_id = params[:student_id] #setting student_id for parent, without it having to be in the form

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

    def update
        @student = Student.find_by(id: params[:student_id])
       @parent = Parent.find_by(id: params[:id])
        if @parent.update(parent_params)
            redirect_to student_parents_path(@student)
        else
            render 'form', parent: @parent
        end

    end
   


    private

    def parent_params
        params.require(:parent).permit(:name, :email, :student_id, :phone_number)
    end

end
