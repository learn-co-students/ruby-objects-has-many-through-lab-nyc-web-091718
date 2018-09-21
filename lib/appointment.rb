require 'pry'

class Appointment
  attr_accessor :name, :date, :doctor, :patient
  @@all = []

  def self.all
    @@all
  end # end self.all method

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    self.class.all << self
  end # end initialize method

end # end Appointment class
