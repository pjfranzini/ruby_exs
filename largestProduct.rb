class LargestProduct
  def initialize(series)
     @series = series
  end

  def slices(n)
    slices_array = []

    (@series.length-n+1).times do |i|
      slices_array << @series[i..i+n-1]
    end

    slices_array
  end

  def n_digit_product(n)
    slices_array = slices(n)
    products_array = []

    slices_array.each do |num_string|
      product = 1
      num_string.each_char do |num_char|
        product *= num_char.to_i
      end
      products_array << product
    end

    products_array.max
  end

  # Alternate method
  # def n_digit_product(n)
  #   result = 0
  #   (@series.length-n+1).times do |i|
  #     product = 1
  #     n.times do |j|
  #       product = product * @series[i+j].to_i
  #     end
  #     result = product if product > result
  #   end
  #   result
  # end

end