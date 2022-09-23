class Man 
    attr_accessor :name, :gender, :height, :weight, :phone, :email
    def initialize name, gender, height, weight, phone, email
        @man_name = name
        @man_gender = gender
        @man_height = height
        @man_weight = weight
        @man_phone = phone
        @man_email = email
    end
    def inThongTin 
        puts "Tên #@man_name"
        puts "Giới tính #@man_gender"
        puts "Chiều cao #@man_height"
        puts "Cân nặng #@man_weight"
        puts "Số điện thoại #@man_phone"
        puts "Email #@man_email"
     end
  end
  
  class Student < Man 
    attr_accessor :school, :id, :class1, :grade
    def initialize name, gender, height, weight, phone, email, school, id, class1, grade
        super name, gender, height, weight, phone, email
        @std_school = school
        @std_id = id
        @std_class = class1
        @std_grade = grade
    end
    def inThongTin
        super
        puts "Trường #@std_school"
        puts "ID #@std_id"
        puts "Lớp #@std_class"
        puts "Điểm #@std_grade"
     end
  end
  
  man = Man.new("Trần Thị Phương Nhi", "Nữ", "0", "0", "0359805444", "tranphuongnhi@gmail.com")
  std = Student.new("Trần Thị Phương Nhi", "Nữ", "0", "0", "0359805444", "tranphuongnhi@gmail.com", "DHSPKT", "1911505310140", "19T1", "10")
  std1 = Student.new("Lê Vy", "Nữ", "0", "0", "0359805445", "levy@gmail.com", "DHSPKT", "1911505310170", "19T1", "10")

  stds = [std, std1]
  stds = stds.sort_by { |a| [a.grade] }
  stds = stds.reverse
  puts "#{stds}"

  puts "#{man.inThongTin}"
  puts "#{std.inThongTin}" 
  puts "#{std1.inThongTin}" 

