class Animal
  attr_accessor :kind, :color

  def initialize(kind, color)
      @kind = kind
      @color = color
  end

  def output_animal
      puts "beautiful #{self.color} #{self.kind}"
  end

  def self.animal
      Animal.new(:dog, :white)
  end
end
 class Group
  def initialize
    @animals =[]
    @animals << Animal.new(:dog, :white) 
    @animals << Animal.new(:dog, :brown)
    @animals << Animal.new(:dog, :black)
    @animals << Animal.new(:cat, :white)
    @animals << Animal.new(:cat, :brown)
    @animals << Animal.new(:cat, :brown)
  end

  def shuffle
    @animals.shuffle!
  end

  def output
    @animals.each do |animal|
      animal.output_animal
  end
end
end 

 group = Group.new
 group.shuffle
 group.output

