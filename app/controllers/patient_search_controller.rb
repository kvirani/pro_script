class PatientSearchController < ApplicationController

  # search box
  def new

  end

  # POST of search
  def create
    @patient = Patient.where(:emr_number => params[:q]).first
    if @patient
      redirect_to @patient
    else
      flash[:info] = 'Patient record not found. Please enter details below'
      redirect_to new_patient_path(:emr_number => params[:q])
    end
  end


end
