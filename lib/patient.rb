class Patient

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment (doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|app| app.patient == self}
  end

  def doctors
    self.appointments.map {|app| app.doctor}
  end

end
