class Employee
  attr_reader :name, :title, :salary, :boss
  attr_reader :boss

   def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    self.add_boss()
   end

   def bonus_multiplier(multiplier)
      bonus = @salary * multiplier
      @bonus = bonus
   end

   def add_boss()
    if @boss != nil
      @boss.employees << self
    end
   end
end

class Manager < Employee
  attr_reader :employees

  def initialize(name, title, salary, boss = nil)
    super
    @employees = []
    @employees_salary = []
   end

   def employees
    @employees
   end
   
   def employees_salary
    @employees_salary
   end

   def bonus(multiplier)
    self.employees.each do |employee|
      @employees_salary << employee.salary
    end
    @employees_salary.sum * multiplier
    end

    protected

    def total_subsalary

      total_subsalary = 0
      self.employees.each do |employee|
        if employee.is_a?(Manager)
          total_subsalary += employee.salary + employee.total_subsalary
        else
          total_subsalary += employee.salary
        end
      end
      total_subsalary
    end
end