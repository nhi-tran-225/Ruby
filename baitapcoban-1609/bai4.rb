#Viết chương trình để nhập ba số nguyên đã biết, sau đó in ra màn hình theo thứ tự tăng dần và giảm dần.
puts 'Nhap canh 1 = '
STDOUT.flush
a = gets.chomp.to_i
puts 'Nhap canh 2 = '
STDOUT.flush
b = gets.chomp.to_i
puts 'Nhap canh 3 = '
STDOUT.flush
c = gets.chomp.to_i

def Swap(x, y)
    tg = nil
    tg = x
    x = y
    y = tg
end

if a<b 
    Swap(a, b)
end
if a<c 
    Swap(a, c)
end
if b<c
    Swap(b, c)
end
puts '3 so nguyen theo thu tu tang dan la:%d %d %d' % [c, b, a]
