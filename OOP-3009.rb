class CanBo 
    attr_accessor :hoten_140, :tuoi_140, :gioiTinh_140, :diaChi_140
    def initialize hoten_140, tuoi_140, gioiTinh_140, diaChi_140
        @cb_hoten_140 = hoten_140
        @cb_tuoi_140 = tuoi_140
        @cb_gioiTinh_140 = gioiTinh_140
        @cb_diaChi_140 = diaChi_140
    end

    def to_hash
        hoten_140 = @cb_hoten_140
        tuoi_140 = @cb_tuoi_140
        gioiTinh_140 = @cb_gioiTinh_140
        diaChi_140 = @cb_diaChi_140
    end

    def show 
        puts "Tên #@cb_hoten_140"
        puts "Tuổi #@cb_tuoi_140"
        puts "Giới tính #@cb_gioiTinh_140"
        puts "Địa chỉ #@cb_diaChi_140"
    end

    def getName
        return self.cb_hoten_140
    end
end

class CongNhan < CanBo
    attr_accessor :bac_140
    def initialize hoten_140, tuoi_140, gioiTinh_140, diaChi_140, bac_140
        super hoten_140, tuoi_140, gioiTinh_140, diaChi_140
        @cn_bac_140 = bac_140
    end

    def show
        super
        puts "Bậc: #{@bac_140}"
    end
end

class KySu < CanBo
    attr_accessor :nganhDaoTao
    def initialize hoten_140, tuoi_140, gioiTinh_140, diaChi_140, nganhDaoTao_140
        super hoten_140, tuoi_140, gioiTinh_140, diaChi_140
        @ks_nganhDaoTao_140 = nganhDaoTao_140
    end

    def show
        super
        puts "Ngành: #{@nganhDaoTao_140}"
    end
end

class NhanVien < CanBo
    attr_accessor :congViec
    def initialize hoten_140, tuoi_140, gioiTinh_140, diaChi_140, congViec
        super hoten_140, tuoi_140, gioiTinh_140, diaChi_140
        @nv_congViec_140 = congViec_140
    end

    def show
        super
        puts "Công việc: #{@congViec_140}"
    end
end

class QLCB
    attr_accessor :danhSachCanBo_140

    def initialize
        @danhSachCanBo_140 = Array.new    
    end
    
    $search_result_array_140 = Array.new
    def add 
        puts "Nhap ten: "
        isName_140 = gets.chomp.to_s
        puts "Nhap tuoi: "
        isAge_140 = gets.chomp.to_s
        puts "Nhap gioi tinh: "
        isGender_140 = gets.chomp.to_s
        puts "Nhap dia chi: "
        isAddress_140 = gets.chomp.to_s
    
        newCB_140 = CanBo.new(isName_140, isAge_140, isGender_140, isAddress_140)
        @danhSachCanBo_140.push(newCB_140.to_hash)
        puts "Da them sach moi thanh cong. Bam ENTER de tiep tuc"
        gets.chomp
    end
    
    def show
        puts "Tên #@cb_hoten_140"
        puts "Giới tính #@cb_gioiTinh_140"
        puts "Tuoi #@cb_tuoi_140"
        puts "Dia chi #@diaChi_140"
    end

    def search
        print "Nhap ten: "
        ten = gets
        lenght = @danhSachCanBo_140.length
        for i in 0..lenght do
            @danhSachCanBo_140[i].display
        end
    end

    def close
        exit
    end
end

man = QLCB.new
puts "#{man.add}"
puts "#{man.search}"
puts "#{man.show}"
puts "#{man.close}"