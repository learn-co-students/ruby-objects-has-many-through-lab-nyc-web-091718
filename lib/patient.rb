class Patient
  @@patients = []

  def initialize(name)
    @name = name
    @@patients << self
    @appointments = []
    @doctors = []
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(self, doctor, date)
    @appointments << appt
    @doctors << doctor
    appt
  end

  def self.all
    @@patients
  end

  def appointments
    @appointments
  end

  def doctors
    @doctors
  end
end
