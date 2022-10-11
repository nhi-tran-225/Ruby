=begin
Khoa CNTT – DHKHTN cần quản lý việc thanh toán tiền lương cho các cán bộ giá viên trong khoa. 
Để quản lý được, khoa cần các thông tin sau:
Với mỗi cán bộ giáo viên có các thông tin sau: 
lương cứng, lương thưởng, tiền phạt, lương thực lĩnh, và các thông tin cá nhân: Họ tên, tuổi, quê quán, mã số giáo viên.
Yêu cầu 1: Xây dựng lớp Nguoi để quản lý các thông tin cá nhân của mỗi giáo viên.
Yêu cầu 2: Xây dựng lớp CBGV để quản lý các thông tin của các cán bộ giáo viên.
Yêu cầu 3: Xây dựng các phương thức thêm, xoá các cán bộ giáo viên theo mã số giáo viên.
Yêu cầu 4: Tính lương thực lĩnh cho giáo viên: Lương thực = Lương cứng + lương thưởng – lương phạt.
=end
class Nguoi
    attr_accessor :hoTen_140, :tuoi_140, :queQuan_140, :maSoGV_140, :luongCung_140, :luongThuong_140, :tienPhat_140, :luongthucLinh_140
  
    def initialize(hoTen_140, tuoi_140, queQuan_140, maSoGV_140, luongCung_140, luongThuong_140, tienPhat_140, luongthucLinh_140)
      @hoTen_140 = hoTen_140
      @tuoi_140 = tuoi_140
      @queQuan_140 = queQuan_140
      @maSoGV_140 = maSoGV_140
      @luongCung_140 = luongCung_140
      @luongThuong_140 = luongThuong_140
      @tienPhat_140 = tienPhat_140
      @luongthucLinh_140 = luongthucLinh_140
    end
  
    def show
      puts "Ma so GV: #{@maSoGV_140} - Ho ten: #{@hoTen_140}"
      puts "Tuoi: #{@tuoi_140} - Que quan: #{@queQuan_140}"
      puts "Luong cung: #{luongCung_140} - Luong thuong: #{luongThuong_140}"
      puts "Tien phat: #{tienPhat_140} - Luong thuc nhan: #{@luongthucLinh_140}"
    end
  end
  class CBGB
    attr_accessor :listCB
  
    def initialize
      cb1 = Nguoi.new("Nguyễn A", 23, "QN", "001", 1000000, 200000, 50000, 1150000)
      cb2 = Nguoi.new("Lê B", 24, "DN", "002", 2000000, 200000, 50000, 2150000)
      cb3 = Nguoi.new("Trần C", 25, "QN", "003", 3000000, 200000, 50000, 3150000)
      cb4 = Nguoi.new("1", 1, "1", "1", 1, 1, 1, 1)
  
      @listCB = [cb1, cb2, cb3, cb4]
    end
  
    def nhapThongTin
      print "Nhap ho ten: "
      ht_140 = gets.chomp
      print "Nhap ma so giao vien: "
      ma_140 = gets.chomp
      print "Nhap tuoi: "
      tuoi_140 = gets.chomp.to_i
      print "Nhap que quan: "
      que_140 = gets.chomp
      print "Nhap luong cung: "
      luongcung_140 = gets.chomp.to_f
      print "Nhap luong thuong: "
      luongthuong_140 = gets.chomp.to_f
      print "Nhap tien phat: "
      tienphat_140 = gets.chomp.to_f
  
      luongthuc_140 = luongcung_140 + luongthuong_140 - tienphat_140
  
      listCB.push(Nguoi.new(ht_140, tuoi_140, que_140, ma_140, luongcung_140, luongthuong_140, tienphat_140, luongthuc_140))
    end
  
    def themCanBo(n)
      puts "===== Them Giao Vien ====="
      for i in 1..n
        print "\nNhap giao vien thu ", i, "\n"
        nhapThongTin
      end
    end
  
    def xoaCanBo(ma)
      listCB.delete_if { |item| item.maSoGV_140.chomp.eql?ma }
      print "Đã xoá thành công!"
    end
  
    def show
      i = 1
      puts "DANH SACH CAN BO"
      listCB.each do |val|
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end
  
  QLCB = CBGB.new
  
  choose = 1
  while choose < 4 && choose > 0
  
    puts "\n1. Them giao vien"
    puts "2. Danh sach giao vien"
    puts "3. Xoa giao vien"
    puts "4. Thoat"
  
    print "Lua chon cua ban: "
    choose = gets.chomp.to_i
  
    system("cls")
  
    case choose
    when 1
      system("cls")
      print "So giao vien can them: "
      n = gets.chomp.to_i
      QLCB.themCanBo(n)
      QLCB.show
    when 2
      system("cls")
      QLCB.show
    when 3
      system("cls")
      print "Nhap ma so giao vien: "
      ma = gets.chomp
      QLCB.xoaCanBo(ma)
      QLCB.show
    end
  end