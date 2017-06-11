class Patient

  attr_accessor :name, :doctors, :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
    appointment.doctor.patients << self
    self.doctors << appointment.doctor
  end

end
