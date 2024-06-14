# app/controllers/charts_controller.rb
class ChartsController < ApplicationController
  def index
    @patients = Patient.all

    respond_to do |format|
      format.html
      format.json { render json: @patients }
    end
  end
end
