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
    def show
        puts ("Số báo danh: #{@soBaoDanh_140}")
        puts ("Tên: #{@hoTen_140}")
        puts ("Địa chỉ: #{@diaChi_140}")
        puts ("Mức độ ưu tiên: #{@mucUuTien_140}")
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
    def show
        super
        puts ("Điểm toán: #{@toan_140}")
        puts ("Điểm lý: #{@ly_140}")
        puts ("Điểm hóa: #{@hoa_140}")
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
    def show
        super
        puts ("Điểm toán: #{@toan_140}")
        puts ("Điểm hóa: #{@hoa_140}")
        puts ("Điểm sinh: #{@sinh_140}")
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
    def show
        super
        puts ("Điểm văn: #{@van_140}")
        puts ("Điểm sử: #{@su_140}")
        puts ("Điểm địa: #{@dia_140}")
    end
end
class TuyenSinh
    @@thiSinh = Array.new
    def addCandidate(thiSinh)
        @@thiSinh.push(thiSinh)
    end
    def timkiemtheoSobaodanh(id)
        searchList = @@thiSinh .select { |o| o.soBaoDanh_140 == id}
        searchList.each{ |sl| sl.show}
    end
    def showts()
        @@thiSinh.each{ |thiSinh| thiSinh.show}
    end
end
qlTuyenSinh = TuyenSinh.new()
tsA = ThiSinhKA.new(1,"Trần Thị Phương Nhi", "A", "A", 7,8,9)
tsB = ThiSinhKB.new(2,"Lê Thị Trúc Vy", "B", "B", 4,6,7 )
tsC = ThiSinhKC.new(3, "Nguyễn Thị Cẩm Tú", "C", "C", 8,1,5)

qlTuyenSinh.addCandidate(tsA)
qlTuyenSinh.addCandidate(tsB)
qlTuyenSinh.addCandidate(tsC)
qlTuyenSinh.showts()
puts "<---------*******-------->"
puts "Kết quả tìm kiếm"
qlTuyenSinh.timkiemtheoSobaodanh(2)