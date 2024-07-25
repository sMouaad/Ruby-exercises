# frozen_string_literal: true

def stock_picker(stocks)
  result = nil
  stocks.each_with_index do |value, index|
    (index + 1..stocks.size - 1).each do |i|
      result = [index, i] if result.nil?
      result = [index, i] unless (stocks[i] - value) <= stocks[result[1]] - stocks[result[0]]
    end
  end
  result
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
