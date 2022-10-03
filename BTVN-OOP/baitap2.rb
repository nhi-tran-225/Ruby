=begin
Một thư viện cần quản lý các tài liệu bao gồm Sách, Tạp chí, Báo. Mỗi tài liệu gồm có các thuộc tính sau: 
Mã tài liệu(Mã tài liệu là duy nhất), Tên nhà xuất bản, số bản phát hành.
Các loại sách cần quản lý thêm các thuộc tính: tên tác giả, số trang.
Các tạp chí cần quản lý thêm: Số phát hành, tháng phát hành.
Các báo cần quản lý thêm: Ngày phát hành.
Yêu cầu 1: Xây dựng các lớp để quản lý tài liệu cho thư viện một cách hiệu quả.
Yêu cầu 2: Xây dựng lớp QuanLySach có các chức năng sau
Thêm mới tài liêu: Sách, tạp chí, báo.
Xoá tài liệu theo mã tài liệu.
Hiện thị thông tin về tài liệu.
Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo.
Thoát khỏi chương trình.
=end
class TaiLieu
    attr_accessor :maTaiLieu_140, :tenNXB_140, :soBanPhatHanh_140
    def initialize maTaiLieu_140, tenNXB_140, soBanPhatHanh_140
        @maTaiLieu_140 = maTaiLieu_140
        @tenNXB_140 = tenNXB_140
        @soBanPhatHanh_140 = soBanPhatHanh_140
    end
    def display
        puts "Mã tài liệu #@maTaiLieu_140"
        puts "Tên NXB #@tenNXB_140"
        puts "Số bản phát hành #@soBanPhatHanh_140"
    end
end
class Sach < TaiLieu
    attr_accessor :tenTacGia_140, :soTrang_140
    def initialize maTaiLieu_140, tenNXB_140, soBanPhatHanh_140, tenTacGia_140, soTrang_140
        super maTaiLieu_140, tenNXB_140, soBanPhatHanh_140
        @tenTacGia_140 = maTaiLieu_140tenTacGia_140
        @soTrang_140 = soTrang_140
    end
    def display 
        super
        puts "Tên tác giả #@tenTacGia_140"
        puts "Số trang #@soTrang_140"
    end
end
class TapChi < TaiLieu
    attr_accessor :soPhatHanh_140, :thangPhatHanh_140
    def initialize maTaiLieu_140, tenNXB_140, soBanPhatHanh_140, soPhatHanh_140, thangPhatHanh_140
        super maTaiLieu_140, tenNXB_140, soBanPhatHanh_140
        @soPhatHanh_140 = soPhatHanh_140
        @thangPhatHanh_140 = thangPhatHanh_140
    end
    def display 
        super
        puts "Số phát hành #@soPhatHanh_140"
        puts "Tháng phát hành #@thangPhatHanh_140"
    end
end
class Bao < TaiLieu
    attr_accessor :ngayPhatHanh_140
    def initialize maTaiLieu_140, tenNXB_140, soBanPhatHanh_140, ngayPhatHanh_140
        super maTaiLieu_140, tenNXB_140, soBanPhatHanh_140
        @ngayPhatHanh_140 = ngayPhatHanh_140
    end
    def display 
        super
        puts "Ngày phát hành #@ngayPhatHanh_140"
    end
end
class QuanLySach

end