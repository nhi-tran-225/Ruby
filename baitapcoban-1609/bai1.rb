#Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.
valueArray = Array.new
minValue = 0
maxValue = 0
MAXLEN = 99
puts 'Nhap phan tu mang. Nhap "-1" de ket thuc'
while
  begin
    inputValue = Integer(gets.chomp)
  rescue
    puts 'Vui long nhap so nguyen'
    retry
  end
  case inputValue
    when -1
      break
    else
      valueArray.push(inputValue)
      if ((valueArray.length == 1))
        minValue = inputValue.to_i
      elsif(inputValue.to_i < minValue.to_i)
        minValue = inputValue
      elsif(inputValue.to_i > maxValue.to_i)
        maxValue = inputValue
      end
  end
  if(valueArray.length == MAXLEN)
    break
  end
end

valueArray.each_with_index {|val, index| puts "valueArray[#{index}] = #{val}" }
if(valueArray.length>0)
    puts 'Gia tri nho nhat trong mang %d' % maxValue
  puts 'Gia tri nho nhat trong mang %d' % minValue
end
sum = 0
if(valueArray.length > 0)
    valueArray.each{|x| sum += x }
    puts 'Gia tri trung binh cac phan tu cua mang = %.2f' % [sum.to_f/valueArray.length]
end
