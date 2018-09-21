class Patient

  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |info|
      if info.patient == self
        info.doctor
      end
    end
  end

  def doctors
    appointments.map do |doctor_info|
      doctor_info.doctor
    end
  end

end
