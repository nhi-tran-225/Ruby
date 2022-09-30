class CanBo 
    attr_accessor :hoten, :tuoi, :gioiTinh, :diaChi
    def initialize hoten, tuoi, gioiTinh, diaChi
        @cb_hoten = hoten
        @cb_tuoi = tuoi
        @cb_gioiTinh = gioiTinh
        @cb_diaChi = diaChi
    end

    def to_hash
        hoten = @cb_hoten
        tuoi = @cb_tuoi
        gioiTinh = @cb_gioiTinh
        diaChi = @diaChi
    end
end

class CongNhan < CanBo
    attr_accessor :bac
    def initialize hoten, tuoi, gioiTinh, diaChi, bac
        super hoten, tuoi, gioiTinh, diaChi
        @cn_bac = bac
    end
end

class KySu < CanBo
    attr_accessor :nganhDaoTao
    def initialize hoten, tuoi, gioiTinh, diaChi, nganhDaoTao
        super hoten, tuoi, gioiTinh, diaChi
        @ks_nganhDaoTao = nganhDaoTao
    end
end

class NhanVien < CanBo
    attr_accessor :congViec
    def initialize hoten, tuoi, gioiTinh, diaChi, congViec
        super hoten, tuoi, gioiTinh, diaChi
        @nv_congViec = congViec
    end
end

class QLCB
    $canbo = Array.new
    $search_result_array = Array.new
    def add 
        puts "Nhap ten: "
        isName = gets.chomp.to_s
        puts "Nhap tuoi: "
        isAge = gets.chomp.to_s
        puts "Nhap gioi tinh: "
        isGender = gets.chomp.to_s
        puts "Nhap dia chi: "
        isAddress = gets.chomp.to_s
    
        newCB = CanBo.new(isName, isAge, isGender, isAddress)
        $canbo.push(newCB.to_hash)
        puts "Da them sach moi thanh cong. Bam ENTER de tiep tuc"
        gets.chomp
    end
    
    def show
        puts "Tên #@cb_hoten"
        puts "Giới tính #@cb_gioiTinh"
        puts "Tuoi #@cb_tuoi"
        puts "Dia chi #@diaChi"
    end

    def close
        exit
    end
end

man = QLCB.new
puts "#{man.add}"
puts "#{man.close}"