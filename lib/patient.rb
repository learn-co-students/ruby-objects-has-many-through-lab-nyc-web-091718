class Patient
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  # Creates a new appointment
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end # end of new_appointment

  # Iterates through the appointments array and
  # returns appointments that belong to the patient.
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end # end of #appointments method

  # Iterates over that patient's appointments and
  # collects the doctor that belongs to each appointment.
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end # end of doctors method

end # end of Patient class
