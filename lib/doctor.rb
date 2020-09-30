class Doctor 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointments (date, patient)
    Appointment.new(date,patient, self)
  end
  
  def appointmnets
    Appointment.all.select { |appt| appt.doctor == self}
  end
  
  def patients
    appointmnets.collect { |appt|appt.patient}
  end
end