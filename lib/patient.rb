require 'pry'

class Patient
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        binding.pry
        Appointment.all.select {|the_appointment| the_appointment.patient == self}
    end
    
    def doctors
        appointments.map {|the_appointment| the_appointment.doctor}
    end
end