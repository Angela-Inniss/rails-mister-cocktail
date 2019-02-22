class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
  end

  def destroy
    @dose.delete
  end
end

private

def dose_params
  params.require(:dose).permit(:description)
end
