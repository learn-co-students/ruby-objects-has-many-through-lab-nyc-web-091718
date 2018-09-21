class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @doctors = []
  end

  def self.all
    @@all

  end

def new_appointment(doctor, date)
  appointment = Appointment.new(self, date, doctor)
  @appointments << appointment
  @doctors << doctor
  appointment
end

  def appointments
    @appointments
  end

  def doctors
    @doctors

  end

end
