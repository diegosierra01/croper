class SalaryController < ApplicationController
    def index
    end
    def computation
        @workers = params[:index][:quantity]
        @rate = params[:index][:rate]
        @total = 0
        @hours = generateWorkers
        @payroll = estimatePayroll
    end
    def generateWorkers
        i = 0
        objArray = Array.new
        while (i <= @workers) do
            objArray.push rand(1..70)
        end
        return objArray
    end
    def estimatePayroll
        payroll = Array.new
        salary = 0
        @hours.each do |element|
            salary = estimateSalary(element)
            @total += salary
            payroll.push salary
        end
        return payroll
    end
    def estimateSalary hours
        salary = 0
        if(element < 36)
            salary = element * @rate
        else
            salary = ((element - 35) * (rate * 1.5)) + (35 * rate)
        end
        if salary > 20000
            salary -= (salary * 20)/100
        end
        return salary
    end
end
