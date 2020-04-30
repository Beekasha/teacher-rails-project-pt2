class StudentsController < ApplicationController
    before_action :authenticate_teacher! #decide which comments you want to have private

    def index
        #this needs to change to students that share classes with the teacher
        @students = current_teacher.students.all.sort_by {|s| s.name }.uniq
        
    end

    def show
        @student = Student.find_by(id: params[:id])
        @comments = @student.comments.all
    end
end
