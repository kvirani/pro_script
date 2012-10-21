class PatientDrugsController < ApplicationController

  before_filter :require_patient

  def create
    @patient_drug = @patient.patient_drugs.build(params[:patient_drug])

    # should always succeed
    if @patient_drug.save
      redirect_to @patient
    else
      redirect_to @patient
    end
  end

  def update
    @patient_drug = @patient.patient_drugs.find params[:id]
    if @patient_drug.update_attributes params[:patient_drug]
      redirect_to @patient
    else
      redirect_to @patient
    end
  end

  def destroy
    @patient_drug = @patient.patient_drugs.find params[:id]
    @patient_drug.destroy
    flash[:alert] = "Drug #{@patient_drug.drug.name} removed"
    redirect_to @patient
  end

  def discontinue
    @patient_drug = @patient.patient_drugs.find params[:id]
    @patient_drug.update_attributes :discontinued_at => Time.now
    flash[:alert] = "Drug #{@patient_drug.drug.name} marked as discontinued"
    redirect_to @patient
  end

  private

  def require_patient
    @patient = Patient.find params[:patient_id]
  end


end
