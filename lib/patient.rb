class Patient
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  
end#end of a class

# 1. Write out the method definition
# 2. Ask yourself, what do you want to get back?
# 3. Where can I find this data?
# 4. What do I need to do with this data?
# 5. Figure out what conditional you need? Or what to change?
# 6. I need to compare the certain criteria to what am I(self)
