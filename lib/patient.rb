

class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self    
        # A patient is instantiated with a name and be saved in the @@all array.
    end

    def self.all
        @@all
    end


    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
        # takes in an argument of a doctor and a date and creates a new Appointment. 
        # The Appointment should know that it belongs to the patient
    end

    def appointments
        Appointment.all.select do |appt|
            appt.patient == self
        end
        # that iterates through the Appointments array and returns Appointments that belong to the patient.
    end

    def doctors
        appointments.collect do |appt|
            appt.doctor
        end
        # that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.
    end


end

# ferris = Patient.new("Ferris Bueller") 