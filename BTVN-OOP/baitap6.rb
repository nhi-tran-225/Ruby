=begin
Để quản lý hồ sơ học sinh của trường THPT nhà trường cần các thông tin sau: Lớp,  và các thông tin về cá nhân của mỗi học sinh.
Mỗi học sinh có các thông tin sau: Họ tên, tuổi, quê quán.
Yêu cầu 1: Xây dựng HocSinh để quản lý thông tin của mỗi học sinh.
Yêu cầu 2: Xây dựng các phương thức thêm, hiển thị thông tin của mỗi học sinh.
Yêu cầu 3: Cài đặt chương trình có các chức năng sau:
Thêm học sinh mới.
Hiện thị các học sinh 20 tuổi.
Cho biết số lượng các học sinh có tuổi là 23 và quê ở DN.
=end
class Hocsinh
    attr_accessor :hoTen_140, :tuoi_140, :queQuan_140
  
    def initialize(hoTen_140, tuoi_140, queQuan_140)
      @hoTen_140 = hoTen_140
      @tuoi_140 = tuoi_140
      @queQuan_140 = queQuan_140
    end
  
    def show
      puts "Ho ten: #{@hoTen_140}"
      puts "Tuoi: #{@tuoi_140}"
      puts "Que quan: #{@queQuan_140}"
    end
  end
  
  class Quanlyhocsinh
    attr_accessor :listHS
  
    def initialize
      hs1 = Hocsinh.new("Nguyễn Cẩm Tú ", 21, "HT")
      hs2 = Hocsinh.new("Lê Vy", 21, "BD")
      hs3 = Hocsinh.new("Trần Phương Nhi ", 21, "KT")
      hs4 = Hocsinh.new("Hồ Thuý Hà", 20, "Hue")
      hs5 = Hocsinh.new("Hồ Tuấn", 23, "DN")
  
      @listHS = [hs1, hs2, hs3, hs4]
    end
  
    def nhapThongTin
      print "Nhap ho ten: "
      ht_140 = gets.chomp
      print "Nhap tuoi: "
      tuoi_140 = gets.chomp.to_i
      print "Nhap que quan: "
      que_140 = gets.chomp
  
      listHS.push(Hocsinh.new(ht_140, tuoi_140, que_140))
    end
  
    def themHS(n)
      puts "===== Them Ho Hoc Sinh ====="
      for i in 1..n
        print "\nNhap hoc sinh thu ", i, "\n"
        nhapThongTin
      end
    end
  
    def tiemKiem1
      i = 1
      puts "DANH SACH HOC SINH 20 TUOI"
      listHS.each do |val|
        if val.tuoi_140 == 20
          print i.to_s + ". "
          val.show
          puts "\n----------------"
          i += 1
        end
      end
    end
  
    def tiemKiem2
      i = 1
      puts "DANH SACH HOC SINH 20 TUOI"
      listHS.each do |val|
        if val.tuoi_140 == 23 && val.queQuan_140 == "DN"
          print i.to_s + ". "
          val.show
          puts "\n----------------"
          i += 1
        end
      end
      i = i - 1
      puts "Số lượng: #{i}"
    end
  
    def show
      i = 1
      puts "DANH SACH HOC SINH"
      listHS.each do |val|
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end
  
  QLHS = Quanlyhocsinh.new()
  
  choose = 1
  while choose < 4 && choose > 0
  
    puts "\n1. Thêm học sinh"
    puts "2. Hiển thị các học sinh 20 tuổi"
    puts "3. Số lượng học sinh 23 tuổi và quê DN"
    puts "4. Thoát"
  
    print "Lựa chọn của bạn: "
    choose = gets.chomp.to_i
  
    system("cls")
  
    case choose
    when 1
      system("cls")
      print "Số học sinh cần thêm: "
      n = gets.chomp.to_i
      QLHS.themHS(n)
      QLHS.show
    when 2
      system("cls")
      QLHS.tiemKiem1
    when 3
      system("cls")
      QLHS.tiemKiem2
      end
  end