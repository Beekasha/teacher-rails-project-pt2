class ParentsController < ApplicationController

    def index
  
        student = Student.find_by(id: params["student_id"] )
        @parent = student.parent
        
    end
end
