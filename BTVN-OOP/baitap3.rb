=begin
Các thí sinh dự thi đại học bao gồm các thí sinh thi khối A, B, và khối C. Các thí sinh cần quản lý các thông tin sau: 
Số báo danh, họ tên, địa chỉ, mức ưu tiên.
Thí sinh thi khối A thi các môn: Toán, Lý, Hoá.
Thí sinh thi khối B thi các môn: Toán, Hoá, Sinh.
Thí sinh thi khối C thi các môn: Văn, Sử, Địa.
Yêu cầu 1: Xây dựng các lớp để quản lý các thi sinh dự thi đại học.
Yêu cầu 2: Xây dựng lớp TuyenSinh có các chức năng:
Thêm mới thí sinh.
Hiện thị thông tin của thí sinh và khối thi của thí sinh.
Tìm kiếm theo số báo danh.
Thoát khỏi chương trình.
=end
class ThiSinh
    attr_accessor :soBaoDanh_140, :hoTen_140, :diaChi_140, :mucUuTien_140
    def initialize soBaoDanh_140, hoTen_140, diaChi_140, mucUuTien_140
        @soBaoDanh_140 = soBaoDanh_140
        @hoTen_140 = hoTen_140
        @diaChi_140 = diaChi_140
        @mucUuTien_140 = mucUuTien_140
    end
end
class ThiSinhKA < ThiSinh
    attr_accessor :toan_140, :ly_140, :hoa_140
    def initialize soBaoDanh_140, hoTen_140, diaChi_140, mucUuTien_140, toan_140, ly_140, hoa_140
        super soBaoDanh_140, hoTen_140, diaChi_140, mucUuTien_140
        @toan_140 = toan_140
        @ly_140 = ly_140
        @hoa_140 = hoa_140
    end
end
class ThiSinhKB < ThiSinh
    attr_accessor :toan_140, :hoa_140, :sinh_140
    def initialize soBaoDanh_140, hoTen_140, diaChi_140, mucUuTien_140, toan_140, hoa_140, sinh_140
        super soBaoDanh_140, hoTen_140, diaChi_140, mucUuTien_140
        @toan_140 = toan_140
        @hoa_140 = hoa_140
        @sinh_140 = sinh_140
    end
end
class ThiSinhKC < ThiSinh
    attr_accessor :van_140, :su_140, :dia_140
    def initialize  soBaoDanh_140, hoTen_140, diaChi_140, mucUuTien_140, van_140, su_140, dia_140
        super soBaoDanh_140, hoTen_140, diaChi_140, mucUuTien_140
        @van_140 = van_140
        @su_140 = su_140
        @dia_140 = dia_140
    end
end
class TuyenSinh
end