class KlassesController < ApplicationController
    def index #must switch to only klasses that they teach
        @klasses = Klass.all.sort_by {|k| k.name }
    end
    
    def show
        @klass = Klass.find_by(id: params[:id])
        @students = @klass.students.sort_by {|s| s.name }
    end
end
