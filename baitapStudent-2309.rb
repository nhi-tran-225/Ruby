class SinhVien
    def initialize msv, ten, sdt, email, diem1, diem2, diem3
       @sv_msv = msv
       @sv_ten = ten
       @sv_sdt = sdt
       @sv_email = email
       @sv_diem1 = diem1
       @sv_diem2 = diem2
       @sv_diem3 = diem3
    end
    def inThongTin 
       puts "Mã sinh viên #@sv_msv"
       puts "Tên sinh viên #@sv_ten"
       puts "Số điện thoại #@sv_sdt"
       puts "Email #@sv_email"
    end
    def tinhDiem
        puts 'Điểm trung bình là %.2f' % [(@sv_diem1.to_f+@sv_diem2.to_f+@sv_diem3.to_f)/3]
    end
 end
 
 # Create Objects
 sv1 = SinhVien.new("1911505310140", "Trần Thị Phương Nhi", "0359805444", "tranphuongnhi@gmail.com", "9", "10", "8.8")
 
 # Call Methods
 sv1.inThongTin()
 sv1.tinhDiem
