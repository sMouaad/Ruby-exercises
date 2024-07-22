def stock_picker(stocks)
  result = nil
  stocks.each_with_index do |value,index|
    for i in index+1.. stocks.size-1 do
      if result.nil?
        result = stocks[i] - value
      elsif (temp = stocks[i] - value) > result
        result = temp
      end 
    end
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])