class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
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
      @hourly_rate * @hours_worked
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, year_salary)
        @name = name
        @email = email
        @year_salary = year_salary
    end

    def calculate_salary
      @year_salary / 52
    end
end

class MultiPaymentEmployee < Employee
    def initialize(name, email, year_salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @year_salary = year_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	if @hours_worked > 40
    		@year_salary / 52 + @hourly_rate * (@hours_worked - 40)    	
    	else 
    		@year_salary / 52
    	end
    end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end

  def notify_employee(employee)
      puts "To: #{employee.email} \n Message: you got paid"
  end

  def pay_employees
      salaries = @employees.map do |employee|
        employee.calculate_salary * 0.82
      end
      puts salaries
      total = salaries.reduce do |total, salarie|
      	total + salarie
      end
      puts total

  end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
mike = HourlyEmployee.new('Mike', 'mike@example.com', 15, 70)
mark = HourlyEmployee.new('Mark', 'mark@example.com', 15, 70)

employees = [josh, nizar, ted, mike, mark]
payroll = Payroll.new(employees)
payroll.pay_employees

payroll.notify_employee mike
# josh => 1750
# nizar => 19230
# etc
# etc