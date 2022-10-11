=begin
Để quản lý khách hàng đến thuê phòng của một khách sạn, người ta cần các thông tin sau: 
Số ngày thuê, loại phòng, thông tin cá nhân của những người thuê phòng.
Biết rằng phòng loại A có giá 500$, phòng loại B có giá 300$ và loại C có giá 100$.
Với mỗi cá nhân cần quản lý các thông tin sau: Họ tên, tuổi, số chứng minh nhân dân.
Yêu cầu 1: Hãy xây dựng lớp Nguoi để quản lý thông tin cá nhân của những người thuê phòng.
Yêu cầu 2: Xây dựng lớp KhachSan để quản lý các thông tin về các phòng trong khác sạn.
Yêu cầu 3: Xây dựng các phương thức thêm mới, xoá khách theo số chứng minh nhân dân. 
Tính tiền thuê phòng cho khách(xác định khách bằng số chứng minh nhân dân) dựa vào công thức: (số ngày thuê * giá của từng loại phòng)
=end
class Nguoi
    attr_accessor :hoTen_140, :tuoi_140, :cmnd_140
  
    def initialize(hoten_140, tuoi_140, cmnd_140)
      @hoTen_140 = hoten_140
      @tuoi_140 = tuoi_140
      @cmnd_140 = cmnd_140
    end
  
    def show
      puts "Ho ten: #{@hoTen_140}"
      puts "Tuoi: #{@tuoi_140}"
      puts "CMND: #{@cmnd_140}"
    end
  end
  
  class Phong
    attr_accessor :soNgayThue_140, :nguoiThue_140
  
    def initialize(soNgayThue_140, nguoiThue_140)
      @soNgayThue_140 = soNgayThue_140
      @nguoiThue_140 = nguoiThue_140
    end
  
    def show
      puts "So ngay thue: #{@soNgayThue_140}"
      puts "-- Thong tin nguoi thue --"
      @nguoiThue_140.show
    end
  end
  
  class PhongA < Phong
    attr_accessor :gia_140, :loaiPhong_140
  
    def initialize(soNgayThue_140, nguoiThue_140)
      super(soNgayThue_140, nguoiThue_140)
      @gia_140 = 500
      @loaiPhong_140 = "Loai A"
    end
  
    def show
      puts "Loai phong: #{@loaiPhong_140}"
      super
    end
  
    def tienThue
      tienThue_140 = @soNgayThue_140 * @gia_140
      puts "Tien thue: #{tienThue_140}"
    end
  end
  
  class PhongB< Phong
    attr_accessor :gia_140, :loaiPhong_140
  
    def initialize(soNgayThue_140, nguoiThue_140)
      super(soNgayThue_140, nguoiThue_140)
      @gia_140 = 300
      @loaiPhong_140 = "Loai B"
    end
  
    def show
      puts "Loai phong: #{@loaiPhong_140}"
      super
    end
  
    def tienThue
      tienThue_140 = @soNgayThue_140 * @gia_140
      puts "Tien thue: #{tienThue_140}"
    end
  end
  
  class PhongC < Phong
    attr_accessor :gia_140, :loaiPhong_140
  
    def initialize(soNgayThue_140, nguoiThue_140)
      super(soNgayThue_140, nguoiThue_140)
      @gia_140 = 100
      @loaiPhong_140 = "Loai C"
    end
  
    def show
      puts "Loai phong: #{@loaiPhong_140}"
      super
    end
  
    def tienThue
      tienThue_140 = @soNgayThue_140 * @gia_140
      puts "Tien thue: #{tienThue_140}"
    end
  end
  
  class Khachsan
    attr_accessor :listPhong
  
    def initialize
      nguoithue1 = Nguoi.new("Nhi", 21, "123123")
      nguoithue2 = Nguoi.new("Vy", 21, "321321")
      nguoithue3 = Nguoi.new("Tú", 21, "456456")
  
      phong1 = PhongA.new(2, nguoithue1)
      phong2 = PhongB.new(3, nguoithue2)
      phong3 = PhongC.new(1, nguoithue3)
  
      @listPhong = [phong1, phong2, phong3]
    end
  
    def show
      i = 1
      puts "DANH SACH PHONG"
      listPhong.each do |val|
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end
  
  KS = Khachsan.new()
  KS.show