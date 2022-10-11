=begin
Để quản lý các hộ dân cư trong một khu phố, người ta cần các thông tin sau: 
Số thành viên trong gia đình, Số nhà, thông tin mỗi cá nhân trong gia đình. 
Với mỗi cá nhân, người ta quản lý các thông tin sau: Họ tên, Tuổi, Nghề nghiệp, số chứng minh nhân dân(duy nhất cho mỗi người).
Yêu cầu 1: Hãy xây dựng lớp Nguoi để quản lý thông tin của mỗi cá nhân.
Yêu cầu 2: Xây dựng lớp HoGiaDinh để quản lý thông tin của từng hộ gia đình.
Yêu cầu 2: Xây dựng lớp KhuPho để quản lý các thông tin của từng hộ gia đình.
Yêu cầu 3: Nhập n hộ dân. (n nhập từ bàn phím), hiển thị thông tin của các hộ trong khu phố.
=end
class Nguoi
    attr_accessor :name_140, :age_140, :work_140, :cmnd_140
    def initialize name_140, age_140, work_140, cmnd_140
        @name_140 = name_140
        @age_140 = age_140
        @work_140 = work_140
        @cmnd_140 = cmnd_140
    end 
    def initialize
    end
    def enter_infomation
        print "Nhập tên : "
        @name_140 = gets.chomp
        print "Nhập tuổi : "
        @age_140 = gets.to_i
        print "Nhập nghê nghiêp: "
        @work_140 = gets.chomp
        print "Nhập số chưng minh nhân dân : "
        @cmnd_140 = gets.to_i
    end
    def info    
        puts "Tên : #{@name_140}"
        puts "Tuối : #{@age_140}"
        puts "Nghê nghiệp : #{@work_140}"
        puts "Chứng minh nhân dân #{@cmnd_140}"
    end
end 

class HoGiaDinh < Nguoi
    attr_accessor :home_140, :member_140, :members_140
    def initialize name_140, age_140, work_140, cmnd_140, home_140, member_140, members_140
        super name_140, age_140, work_140, cmnd_140
        @home_140 = home_140
        @member_140 = member_140
        @members_140 = members_140
    end 
    def initialize
    end
    def enter_infomation
        @members_140 = []
        print "Nhập số nhà: "
        @home_140 = gets.chomp
        print "Nhập số thành viên : "
        @member_140 = gets.to_i
        for i in (0..@member_140 - 1) do
            puts "====Nhập thành viên thứ #{i+1}===="
            member1_140 = Nguoi.new
            member1_140.enter_infomation
            @members_140 << member1_140
        end
    end
   
    def info
        puts "Số nhà : #{@home_140}"
        puts "Số thành viên : #{@member_140}"
        i =1
        @members_140.each do |member_140|
            puts "===thông tin thành viên thứ #{i}==="
            member_140.info
            i = i+1
        end
    end
end
class KhuPho 
    def initialize
    end
    $hogiadinhs_140 = []
    def addHoGiaDinh
        print "Nhập số hộ gia đình : "
        @soluong_140 = gets.to_i
        for i in (0..@soluong_140 - 1) do
            puts "=====Nhập hộ gia đình thứ #{i+1}======"
            hogiadinh_140 = HoGiaDinh.new
            hogiadinh_140.enter_infomation
            $hogiadinhs_140 << hogiadinh_140
        end
    end

    def infomatinon 
        i = 1
        puts "============Thong tin Khu phố ================"   
        $hogiadinhs_140.each do |hogiadinh_140|
            puts "=====Thông tin hộ gia đình thứ #{i}======"
            hogiadinh_140.info
            i = i+1
        end
    end

end

khupho_140 = KhuPho.new
khupho_140.addHoGiaDinh
khupho_140.infomatinon