class PhuongTien
    attr_accessor :iD_140,:hangSX_140,:namSX_140,:dongXe_140,:gia_140,:bienSo_140,:mau_140
    def initialize iD_140,hangSX_140,namSX_140,dongXe_140,gia_140,bienSo_140,mau_140
        @iD_140 = iD_140
        @hangSX_140 = hangSX_140
        @namSX_140 = namSX_140
        @dongXe_140 = dongXe_140
        @gia_140 = gia_140
        @bienSo_140 = bienSo_140
        @mau_140 = mau_140
    end
    def display
        puts "ID xe: #{@iD_140}"
        puts " Hang xe : #{@hangSX_140}"
        puts "nam san xuat: #{@namSX_140}"
        puts " dong xe : #{@dongXe_140}"
        puts " gia ban : #{@gia_140}"
        puts "Bien so: #{@bienSo_140}"
        puts "Mau: #{@mau_140}"
    end
end
class Oto < PhuongTien
    attr_accessor :soCho_140, :kieuDongCo_140, :nhienLieu_140, :soTuiKhi_140, :ngayDangKiem_140
    def initialize iD_140,hangSX_140,namSX_140,dongXe_140,gia_140,bienSo_140,mau_140, soCho_140, kieuDongCo_140, nhienLieu_140, soTuiKhi_140, ngayDangKiem_140
        super iD_140,hangSX_140,namSX_140,dongXe_140,gia_140,bienSo_140,mau_140
        @soCho_140 = soCho_140
        @kieuDongCo_140 = kieuDongCo_140
        @nhienLieu_140 = nhienLieu_140
        @soTuiKhi_140 = soTuiKhi_140
        @ngayDangKiem_140 = ngayDangKiem_140
    end
    def display
        super
        puts "So cho: #{@soCho_140}"
        puts "Kieu dong co : #{@kieuDongCo_140}"
        puts "Nhien lieu: #{@nhienLieu_140}"
        puts "So tui khi: #{@soTuiKhi_140}"
        puts "Ngay dang kiem: #{@ngayDangKiem_140}"
    end
end
class XeMay < PhuongTien
    attr_accessor :congSuat_140, :dungTichBinhXang_140
    def initialize iD_140,hangSX_140,namSX_140,dongXe_140,gia_140,bienSo_140,mau_140, congSuat_140, dungTichBinhXang_140
        super iD_140,hangSX_140,namSX_140,dongXe_140,gia_140,bienSo_140,mau_140
        @congSuat_140 = congSuat_140
        @dungTichBinhXang_140 = dungTichBinhXang_140
    end
    def display
        super
        puts "Cong suat: #{@congSuat_140}"
        puts "Dung tich binh xang: #{@dungTichBinhXang_140}"
    end
end
class XeTai < PhuongTien
    attr_accessor :trongTai_140
    def initialize iD_140,hangSX_140,namSX_140,dongXe_140,gia_140,bienSo_140,mau_140, trongTai_140
        super iD_140,hangSX_140,namSX_140,dongXe_140,gia_140,bienSo_140,mau_140
        @trongTai_140 = trongTai_140
    end
    def display
        super
        puts "Trong tai: #{@trongTai_140}"
    end
end
class QLPTGT
    @@phuongTien = Array.new
    def addPhuongTien(phuongTien)
        @@phuongTien.push(phuongTien)
    end
    
    def searchPhuongTienByName(key)
        searchList = @@phuongTien.select {|o| o.hangSX_140.include? key}
        searchList.each{ |sl| sl.display}
    end
    def timKiemTheoHang hang_140
        searchList = @@phuongTien.select {|o| o.hangSX_140.include? hang_140}
        searchList.each{ |sl| sl.display}
    end

    def timKiemTheoMau mau_170
        searchList = @@phuongTien.select {|o| o.mau_140.include? mau_170}
        searchList.each{ |sl| sl.display}
    end

    def timKiemTheoBien bienso_140
        searchList = @@phuongTien.select {|o| o.bienSo_140.include? bienso_140}
        searchList.each{ |sl| sl.display}
    end

    def showListInforPhuongTien()
        @@phuongTien.each{ |phuongTien| phuongTien.display}
    end
    def deleteById id
        @@phuongTien = @@phuongTien.delete_if { |o| o.iD_140.chomp.eql?id }
        print "Đã xoá thành công!"
    end
end
class Main
    dem = 0
    quanLy = QLPTGT.new()
    until dem == 1 do
        puts "7. xoa"
        puts "6. in danh sach"
        puts "5. tim kiem theo hang"
        puts "4. tim kiem theo bien"
        puts "3. tim kiem theo mau"
        puts "2. them"
        puts "1. thoat"
        dem=gets
        if dem.to_i ==1
            exit
        end
        if dem.to_i == 2
            c1 = PhuongTien.new(1,"Honda","2020", "Xe may", "50000000", "82N00959", "Den")
            c2 = PhuongTien.new(2, "Yamaha",2020, "Xe may", 50000000, "82N00959", "Den")
            c3 = PhuongTien.new(3, "Tesla",2020, "Xe may", 50000000, "82N00959", "Den")
            c4 = PhuongTien.new(4, "Mec",2020, "Xe may", 50000000, "82N00959", "Den")
            c5 = PhuongTien.new(5, "BMW",2020, "Xe may", 50000000, "82N00959", "Den")
            quanLy.addPhuongTien(c1)
            quanLy.addPhuongTien(c2)
            quanLy.addPhuongTien(c3)
            quanLy.addPhuongTien(c4)
            quanLy.addPhuongTien(c5)
            puts "Them thanh cong"
        end
        if dem.to_i == 3
            puts ("Mau can tim la")
            mauCT_140 = gets.chomp.to_s
            quanLy.timKiemTheoMau(mauCT_140)
        end
        if dem.to_i == 4
            puts ("Bien can tim la")
            bienCT_140 = gets.chomp.to_s
            quanLy.timKiemTheoBien(bienCT_140)
        end
        if dem.to_i == 5
            puts ("Hang can tim la")
            hangCT_140 = gets.chomp.to_s
            quanLy.timKiemTheoHang(hangCT_140)
        end
        if dem.to_i == 6
            puts ("====Danh Sach xe")
            quanLy.showListInforPhuongTien()
        end
        if dem.to_i == 7
            puts ("ID can xoa la")
            iDCanXoa_140 = gets.chomp.to_s
            quanLy.deleteById(iDCanXoa_140)
        end
    end
end