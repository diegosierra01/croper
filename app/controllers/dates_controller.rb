class DatesController < ApplicationController
    def index
    end
    def validation
        @day = params[:index][:day]
        @month = params[:index][:month]
        @year = params[:index][:year]
        if !(@year.match /^([0-9])*$/)
            @answer = 'El año es incorrecto'
        elsif checkMonth == false
            @answer = 'El mes es incorrecto'
        elsif checkDay == false
            @answer = 'El día es incorrecto'
        else
            @answer = getMonth
        end
    end
    def getMonth
        listMonths = ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'];
        return @month + ' : ' + listMonths[@month.to_i - 1]
    end
    def checkDay
        listDays = [31,28,31,30,31,30,31,31,30,31,30,31];
        if @month.to_i == 2 and checkFebruary == true
            return true
        elsif !(@day.match /^([0-9])*$/) or @day.to_i > listDays[@month.to_i - 1] 
            return false
        else
            return true
        end
    end
    def checkMonth
        if @month.match /^(0?[1-9]|1[012])$/
            return true
        else
            return false
        end
    end
    def checkFebruary     
        puts @year.to_i % 4        
        if @year.to_i % 4 != 0 and @day.to_i <= 29
            return true
        else
            return false
        end
    end
end
