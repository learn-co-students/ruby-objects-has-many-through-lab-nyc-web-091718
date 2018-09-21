require 'pry'

class Doctor
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end # end self.all method

  def initialize(name)
    @name = name
    self.class.all << self
  end # end initialize method

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end # end new_appointment method

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end # end appointments method

  def patients
    self.appointments.map {|appointment| appointment.patient}
  end # end patients method

end # end Doctor class
