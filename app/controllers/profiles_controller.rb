class ProfilesController < ApplicationController
 
  def index
    @doctors = Doctor.all
  end
end