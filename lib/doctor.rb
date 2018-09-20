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

  def new_appointment(patient,date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    #self.appointments.select do |appt|
    self.appointments.map do |appt|
      appt.patient
    end
  end

end #end of doctor class
