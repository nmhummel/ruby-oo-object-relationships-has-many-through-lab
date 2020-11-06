

class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize (date, patient, doctor) # date = string (ex. "Monday, August 1st")
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all # lists each Appointment in the class variable.
    end
    
    
end


# ferris = Patient.new("Ferris Bueller")
# doogie = Doctor.new("Doogie Howser")

# new_appointment = Appointment.new('January 1st, 1989', ferris, doogie) 


