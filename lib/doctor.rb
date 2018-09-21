
require 'pry'
class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |info|
      if info.doctor == self
        info.patient
      end
    end
  end

  def patients
    appointments.map do |patient_info|
      patient_info.patient
    end
  end

end
