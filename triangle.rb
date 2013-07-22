 def impossible_triangle(side1, side2, side3)
   sides = [side1, side2, side3].sort
   sides[2]  - sides[1]  - sides [0] 
 end

 def triangle(side1, side2, side3)
    if side1 < 0 || side2 < 0 || side3 < 0
        raise ArgumentError, "Negative sides illegal"

    elsif impossible_triangle(side1, side2, side3) > 0
        raise ArgumentError, "Impossible triangle"

    elsif side1 == 0 && side2 == 0 && side3 == 0
        :degenerate_triangle_point

    elsif side1 == 0 || side2 == 0 || side3 == 0
        :degenerate_triangle_line

    elsif impossible_triangle(side1, side2, side3) == 0
        :degenerate_triangle_line

    elsif    side1 == side2 && side2 == side3
        :equilateral
    # elsif (side1 == side2 && side2 != side3) || (side2 == side3 && side1 != side3) ||
    #            (side1 == side3 && side2 != side3)
    #     :isosceles
    # this works, but more code efficient to make it the else case
    elsif side1 != side2 && side1 != side3 && side2 != side3
        :scalene
    else
        :isosceles
    end
end