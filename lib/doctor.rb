require 'pry'

class Doctor

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    new = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    self.appointments.map do |appointment|
#binding.pry
      if appointment.doctor == self
        appointment.patient
      end
    end
  end

end


# d1 = Doctor.new("Shelby")
# d2 = Doctor.new("Bob")
# binding.pry
