sum = 0
for i in (1..100) do
    if i% 5 == 0 
        puts i
        sum += i
    end
end
puts "tong cac so chia het cho 5 la: #{sum}" 
