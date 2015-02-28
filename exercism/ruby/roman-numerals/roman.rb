class Integer

  def to_roman
    Base = { 1: "I", 5: "V", 10: "X", 50: "L", 100: "C", 500: "D", 1000: "M" }
    if self.is_a? Integer and self > 0
      selfstring = self.to_s
      for i in 0..selfstring.length-1
        case self
        when self <= 5


        when self > 5 and self <= 10
          range2 = []
        when self > 10 and self <= 50
          range3
        when self > 50 and self <= 100
          range4
        when self > 100 and self <= 500
          range5
        when self > 500 and self <= 1000
          range6
        when self > 1000 and self <= 3000
          range7
        else
          "Incorrect input"
      end
    end
  end







#
#       case i
#         when i > 0 and i < 5
#           'I'
#         when i > 5
#           'V'
#         when 10   then 'X'
#         when 50   then 'L'
#         when 100  then 'C'
#         when 500  then 'D'
#         when 1000 then 'M'
#         else
#           str = self.to_s


#   end

# end
