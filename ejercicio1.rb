class Person
    attr_accessor :first_name, :last_name, :age
    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end
    
    def birthday
        @age += 1
    end

end

class Student < Person
    def talk
         "Aquí es la clase de programación con Ruby?"
    end

    def introduce
            print "Hola profesor. Mi nombre es #{self.first_name} #{self.last_name}\n."
    end
end

class Teacher < Person
    def talk
         "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
         print "Hola alumnos. Mi nombre es #{self.first_name} #{self.last_name}\n."
    end
end

class Parent < Person
    def talk
        "Aquí es la reunión de apoderados?"
    end
    def introduce
         print "Hola. Soy uno de los apoderados. Mi nombre es #{self.first_name} #{self.last_name}\n."
    end
end

student = Student.new('Miguel', 'liendo', 26)
student.talk
student.introduce
print student.birthday