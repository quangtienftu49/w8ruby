module Study
end

class MyClass
  include Study
end

my_obj = MyClass.new

module Careers
  class Engineer
  end
  class Teacher
  end
end

first_job = Careers::Teacher.new