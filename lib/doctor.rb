class Doctor

attr_accessor :name

  @@all = []


def initialize(name)
  @name = name
  @@all << self
  @appointments = []
  @patients = []
end

def self.all
  @@all

end

def new_appointment(patient , date)
  appointment = Appointment.new(patient, date, self)
  @appointments << appointment
  @patients << patient
  appointment
end

def appointments
  @appointments
end

def patients
  @patients

end

end
