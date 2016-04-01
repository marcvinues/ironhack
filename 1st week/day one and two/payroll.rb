class Employee
    attr_reader :name, :email, :taxrate
    def initialize(name, email)
      @name = name
      @email = email
    end
    def self.taxrate
    	@taxrate = 0.82
    end
end


class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      @hours_worked * @hourly_rate
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, salarie_yearly)
        @name = name
        @email = email
        @salarie_yearly = salarie_yearly
        
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      @salarie_yearly / 52
      
    end
end

class MultiPaymentEmployee < Employee
    def initialize(name, email, yearly_pay, hourly_rate, hours_worked)
        @name = name
        @email = email
        @yearly_pay = yearly_pay
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
        
    end

    def calculate_salary
      @salary_week = @yearly_pay / 52
      @salary = ((@hours_worked - 40) * @hourly_rate)*7
      @salary_total = @salary + @salary_week 
    end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end

  def notify_employee(employee)
    @employee = employee
    puts "Employe with #{employee.email} email has been paid."
  end

  def pay_employees
  	@weekly_pay = 0
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
      @employees.each do |employee|
      	puts "#{employee.name} earn #{employee.calculate_salary} weekly"
      	@weekly_pay += employee.calculate_salary
      	notify_employee(employee)
      end
       @weekly_pay = (@weekly_pay*Employee.taxrate).round
       puts "Total: #{@weekly_pay}"
      
  end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
employees = [josh, nizar, ted]
payroll = Payroll.new(employees)
payroll.pay_employees