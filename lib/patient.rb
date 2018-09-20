require 'pry'

class Patient

  attr_accessor :name
  @@all = []



## Instance Methods
  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end


## Class Methods
  def self.all
    @@all
  end



end ### End of Patient Class
