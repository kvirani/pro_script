class PatientsController < ApplicationController

  def new
    @patient = Patient.new(:emr_number => params[:emr_number])
  end

  def create
    @patient = Patient.new(params[:patient])
    if @patient.save
      flash[:notice] = "Patient record created"
      redirect_to [@patient]
    end
  end

  def edit
    @patient = Patient.find params[:id]
  end

  def update
    @patient = Patient.find params[:id]
    if @patient.update_attributes params[:patient]
      flash[:notice] = "Patient record updated"
      redirect_to @patient
    else
      render :edit
    end

  end

  def show
    @patient = Patient.find params[:id]
    @patient_drugs = @patient.patient_drugs.order(:discontinued_at)
  end

end
