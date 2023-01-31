class Employee
  attr_reader :name, :title, :salary, :boss

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
end