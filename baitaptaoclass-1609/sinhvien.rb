class SinhVien
    def initialize(msv, ten)
       @sv_msv = msv
       @sv_ten = ten
    end
    def inThongTin()
       puts "Mã sinh viên #@sv_msv"
       puts "Tên sinh viên #@sv_ten"
    end
    def nhapDiem
        print "Nhập điểm toán: "
        toan = gets
        print "Nhập điểm lý: "
        ly = gets
        print "Nhập điểm hoá: "
        hoa = gets
        puts 'Điểm trung bình là %.2f' % [(toan.to_f+ly.to_f+hoa.to_f)/3]
    end
 end
 
 # Create Objects
 sv1 = SinhVien.new("1911505310140", "Trần Thị Phương Nhi")
 
 # Call Methods
 sv1.inThongTin()
 sv1.nhapDiem
