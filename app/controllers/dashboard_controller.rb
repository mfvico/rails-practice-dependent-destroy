class DashboardController < ApplicationController
  def index
    @patients = Patient.order(:first_name, :last_name)
    @medications = Medication.order(:name)
    @prescriptions = Prescription.all
  end

end
