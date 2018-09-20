class Doctor
  attr_accessor :name
  @@doctors = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@doctors << self

  end

  def self.all
    @@doctors
  end

  def new_appointment(patient, date)
    appt = Appointment.new(patient, self, date)
    @appointments << appt
    @patients << patient
    appt
  end

  def appointments
    @appointments
  end

  def patients
    @patients
  end
end
