class KlassesController < ApplicationController
    def index #must switch to only klasses that they teach
        @klasses = Klass.all
    end
    
end
