def stock_picker(stocks)
  result = nil
  stocks.each_with_index do |value,index|
    for i in index+1.. stocks.size-1 do
      if result.nil?
        result = [index,i]
      elsif (stocks[i] - value) > stocks[result[1]] - stocks[result[0]]
        result = [index,i]
      end 
    end
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])