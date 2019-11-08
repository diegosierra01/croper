class OperationsController < ApplicationController
    def number
        @title = 'Tabla de multiplicar'
    end
    def operations
        @number = params[:number][:title].to_i
        @factorial = factorial
        @tabla = tabla
        if primo > 2
            @primo = 'no es primo'
        else
            @primo = 'es primo'
        end
        puts @factorial
    end
    def factorial
        i = 1
        answer = 1
        while i <= @number  do
            i += 1
            answer *= i
        end
        return answer
    end
    def primo
        i = 1
        divider = 0
        while i <= @number  do
            if @number % i == 0
                divider += 1
            end
            i += 1
        end
        return divider
    end
    def tabla
        i = 1
        objArray = Array.new
        while i < 10 do
           objArray.push (@number).to_s + '*' + (i).to_s + '=' + (i*@number).to_s
           i += 1
        end
        return objArray
    end
end
