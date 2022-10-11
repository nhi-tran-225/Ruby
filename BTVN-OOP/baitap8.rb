=begin
Thư viện trung tâm đại học quốc gia có nhu cầu quản lý việc mượn, trả sách. 
Sinh viên đăng ký tham gia mượn sách thông qua thẻ mà thư viện cung cấp.
Với mỗi thẻ sẽ lưu các thông tin sau: Mã phiếu mượn, ngày mượn, hạn trả, số hiệu sách, và các thông tin cá nhân của sinh viên mượn sách. 
Các thông tin của sinh viên mượn sách bao gồm: Họ tên, tuổi, lớp.
Để đơn giản cho ứng dụng console. Chúng ta mặc định ngày mượn, ngày trả là số nguyên dương.
Yêu cầu 1: Xây dựng lớp SinhVien để quản lý thông tin của mỗi sinh viên.
Yêu cầu 2: Xây dựng lớp TheMuon để quản lý việc mượn trả sách của các sinh viên.
Yêu cầu 3: Xây dựng các phương thức: Thêm, xoá theo mã phiếu mượn và hiển thị thông tin các thẻ mượn.
=end
class Student
    attr_accessor :name_140,:age_140,:school_140
  
    def initialize(name_140, age_140, school_140)
      @name_140 = name_140
      @age_140 = age_140
      @school_140 = school_140
    end
  
    def show
      puts "Student name: #{name_140} - Age: #{age_140}"
      puts "School: #{school_140}"
    end
end
class Card
  attr_accessor :student_140,:id_140,:borrowDate_140,:paymentDate_140,:bookId_140
  def initialize(student_140, id_140, borrowDate_140, paymentDate_140,  bookId_140)
    @student_140 = student_140
    @id_140 = id_140
    @borrowDate_140 = borrowDate_140
    @paymentDate_140 = paymentDate_140
    @bookId_140 = bookId_140
  end

  def show
    student_140.to_s
    puts "ID: #{id_140}"
    puts "Borrow date: #{borrowDate_140}"
    puts "Payment date: #{paymentDate_140}"
    puts "Book id: #{bookId_140}"
  end
end
  
class CardManager
  attr_accessor :cards
  
  def initialize
    @cards_140 =  Array.new
  end
  
  def add(card_140)
    cards_140 << card_140
  end
  
  def delete(id_140)
    card_140 = cards_140.delete_if { |item_140| item_140.id_140.eql?id_140}
    print card
  end
  
  def display
    cards_140.each { |item_140| item_140.show }
  end
end