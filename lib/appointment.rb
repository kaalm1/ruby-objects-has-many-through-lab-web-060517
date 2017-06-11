class Appointment

  attr_accessor :doctor, :patient

  def initialize(appointment,doctor)
    @doctor = doctor
    self.doctor.add_appointment(self)
  end

end
