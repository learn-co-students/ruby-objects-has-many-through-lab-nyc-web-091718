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
    # takes in a an instance of the Patient class and a date, and creates a new appointment.  That appointment should know that it belongs to the doctor
    Appointment.new(patient, self, date)
  end

  def appointments
    # iterates through all appointments and finds those belonging to this doctor.
    #my_appointments = []
    Appointment.all.each do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    # iterates over that doctor's appointments and collects the patient that belongs to each appointment.
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end


end
