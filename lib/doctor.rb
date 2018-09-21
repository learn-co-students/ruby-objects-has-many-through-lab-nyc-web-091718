class Doctor
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end # end of .all method

  def initialize(name)
    @name = name
    self.class.all << self
  end # end of #initiailize method

  # Creates a new appointment
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end # end of #new_appointment method

  # Iterates through all appointments and finds those
  # belonging to this doctor.
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end # end of #appointments method

  # Iterates over that doctor's appointments and
  # collects the patient that belongs to each appointment.
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end # end of #patients method

end # end of Doctor class
