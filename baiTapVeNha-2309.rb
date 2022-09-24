class Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation
    def initialize name, hair, weight, height, age, phone, email, nation
        @name = name
        @hair = hair
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end

    def display 
        puts "Name: #{@name}"
        puts "Hair color: #{@hair}"
        puts "Weight: #{@weight}"
        puts "Height: #{@height}"
        puts "Age: #{@age}"
        puts "Phone Number: #{@phone}"
        puts "Email: #{@email}"
        puts "Nation: #{@nation}"
    end
end
class Student < Human 
    attr_accessor :grade1, :grade2, :grade3
    def initialize name, hair, weight, height, age, phone, email, nation, grade1, grade2, grade3
        super(name, hair, weight, height, age, phone, email, nation)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
    end
    def mediumScore
             puts 'Average %.2f' % [(@grade1.to_f+@grade2.to_f+@grade3.to_f)/3]
            end
    def display
        super()
        puts ("Grade1: #{@grade1}")
        puts ("Grade2: #{@grade2}")
        puts ("Grade3: #{@grade3}")
    end
end

std1 = Student.new("Phuong Nhi", "Brown", 50, 150, 21, 1911505310140, "abc@gmai.com", "Viet Nam", 10 ,9 ,9)
std2 = Student.new("Le Vy","Pink", 45, 160, 21, 1911505310170, "abc@gmai.com", "Viet Nam", 9, 9, 9)
puts("Sinh vien da nhap la: \n")
std1.display
std1.mediumScore
std2.display
std2.mediumScore
#sap xep sinh vien
stds = [std1,std2]
stds = stds.sort_by{|a| [a.mediumScore]}
stds = stds.reverse
puts "Sinh vien da sap xep la \n :#{stds}"
