class OperationsController < ApplicationController
    def number
        @title = 'Tabla de multiplicar'
    end
    def operations
        @number = params[:number][:title]
        render plain: params[:number][:title].inspect 
        puts @number 
    end
    def factorial
    end
end
