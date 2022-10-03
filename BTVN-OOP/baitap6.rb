=begin
Để quản lý hồ sơ học sinh của trường THPT nhà trường cần các thông tin sau: Lớp,  và các thông tin về cá nhân của mỗi học sinh.
Mỗi học sinh có các thông tin sau: Họ tên, tuổi, quê quán.
Yêu cầu 1: Xây dựng HocSinh để quản lý thông tin của mỗi học sinh.
Yêu cầu 2: Xây dựng các phương thức thêm, hiển thị thông tin của mỗi học sinh.
Yêu cầu 3: Cài đặt chương trình có các chức năng sau:
Thêm học sinh mới.
Hiện thị các học sinh 20 tuổi.
Cho biết số lượng các học sinh có tuổi là 23 và quê ở DN.
=end
class HocSinh 
    attr_accessor :hoTen_140, :tuoi_140, :queQuan_140
    def initialize hoTen_140, tuoi_140, queQuan_140
        @hoTen_140 = hoTen_140
        @tuoi_140 = tuoi_140
        @queQuan_140 = queQuan_140
    end
end
