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
        @tenTacGia_140 = tenTacGia_140
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
    @@qlsach=Array.new
    def addBook(qlsach)
        @@qlsach.push(qlsach)
    end
    def deleteById (id)
        deleteList = @@qlsach.delete_if {|x| x.maTaiLieu_140.chomp.eql?id}
        puts "Xoá thành công"
        puts "<---------******---------->"
    end
    def showListInforBook()
        @@qlsach.each {|qlsach| qlsach.display}
        puts ("<---------******---------->")
    end
    def timKiemNhaXuatBan(key)
        searchList = @@qlsach .select {|o| o.tenNXB_140 == key}
        searchList.each{|sl| sl.display}
        puts "<---------******---------->"
    end
end
class Main
    dem = 0
    quanLy = QuanLySach.new()
    until dem == 1 do
        puts "7. xoa"
        puts "6. in danh sach"
        puts "3. tim kiem theo nhà xuất bản"
        puts "2. them"
        puts "1. thoat"
        dem=gets
        if dem.to_i ==1
            exit
        end
        if dem.to_i == 2
            sach = Sach.new(1, "NXB Giáo dục", 100, "Kim Đồng", 200)
            tapChi = TapChi.new(2, "NXB Phương Đông", 200, "AH123", "4/2022")
            bao = Bao.new(3, "NXB An Nam", 150, "3/2021")
            quanLy.addBook(sach)
            quanLy.addBook(tapChi)
            quanLy.addBook(bao)
            puts "Thêm thành công"
            puts "<---------******---------->"
        end
        if dem.to_i == 3
            puts "NXB cần tìm là"
            NXBCT_140 = gets.chomp.to_s
            quanLy.timKiemNhaXuatBan(NXBCT_140)
        end
            if dem.to_i == 6
            puts "====DS Sách===="
            quanLy.showListInforBook()
        end
        if dem.to_i == 7
            puts ("ID can xoa la")
            iDCanXoa_140 = gets.chomp.to_s
            quanLy.deleteById(iDCanXoa_140)
        end
    end
end