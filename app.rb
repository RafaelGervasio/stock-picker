def stock_picker (array)
    i1 = 0
    i2 = 0
    best_pick = [i1, i2]

    array.each_with_index do |buy, i1|
        array.each_with_index do |sell, i2|
            if (sell-buy > array[best_pick[1]] - array[best_pick[0]] && i1<=i2)
                best_pick = [i1, i2]
            end
        end
    end

    p best_pick
end

stocks = [17,3,6,9,15,8,6,1,10]
stock_picker(stocks)