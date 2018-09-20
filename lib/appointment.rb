class Appointment
  attr_accessor :doctor
  @@appointments = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@appointments << self
    patient.appointments << self
    patient.doctors << doctor
  end

  def self.all
    @@appointments
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end

end
