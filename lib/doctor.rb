

class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name  # name of doctor
        @@all << self
    end


    def self.all
        @@all
    end


    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
        # that takes in a an instance of the Patient class and a date, and creates a new Appointment. 
        # That Appointment should know that it belongs to the doctor
    end


    # returns all appointments associated with this Doctor 
    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
        # iterates through all Appointments and finds those belonging to this doctor
    end


    def patients
        appointments.collect do |appt|
            appt.patient
        end
        # that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
    end



end

# doogie = Doctor.new("Doogie Howser") 