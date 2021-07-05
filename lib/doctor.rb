class Doctor
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def appointments
    Appointment.all.each do |this_doc_appointments|
      this_doc_appointments. doctor == self
    end
  end


  #2. Need to return an array of appointments
  #(special criteria - appts belong tothis specific doctor)
  #3. I can find the data iterating throught all Appointment class
  #4. I need a condition to check if this data
  #meets the criteria of belonging to a specific doctors
  #5. put the data that is true to my condition into the array
  #6. Need to compare received data to self

end  #end of a class
# 1. Write out the method definition
# 2. Ask yourself, what do you want to get back?
# 3. Where can I find this data?
# 4. What do I need to do with this data?
# 5. Figure out what conditional you need? Or what to change?
# 6. I need to compare the certain criteria to what am I(self)
