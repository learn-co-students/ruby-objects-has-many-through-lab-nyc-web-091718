class Patient
  attr_accessor :name, :date, :doctor, :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
