require 'pry'

class Patient
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end # end self.all method

  def initialize(name)
    @name = name
    self.class.all << self
  end # end initialize method

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end # end new_appointment method

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end # end appointments method

  def doctors
    self.appointments.map {|appointment| appointment.doctor}
  end # end doctors method

end # end Patient class
