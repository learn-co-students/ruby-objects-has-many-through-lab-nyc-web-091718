require 'pry'

class Appointment

  attr_accessor :patient, :doctor, :date
  @@all = []


### Instance Methods
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date

    @@all << self
  end



### Class Methods
  def self.all
    @@all
  end


end ###End of Appointment Class
