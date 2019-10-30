# require "pry"

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !BRANDS.include?(brand)
      BRANDS << @brand
    end

    # BRANDS << @brand if BRANDS.include?(brand) == false
    
    # BRANDS << @brand if !BRANDS.include?(brand)

  end

  # def brand=(new_brand)
    BRANDS << @brand
  # end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end

uggs = Shoe.new("Uggs")
rainbow = Shoe.new("Rainbow")
nike1 = Shoe.new("Nike")
nike2 = Shoe.new("Nike")

p Shoe::BRANDS


# binding.pry
# puts "Shoe"