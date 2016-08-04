class RegisteredApplicationsController < ApplicationController
  def index
    @registered_applications = RegisteredApplication.all
  end

  def show
    @registered_application = RegisteredApplication.find(params[:id])
  end

  def new
    @registered_application = RegisteredApplication.new
  end

  def create
    @registered_application = RegisteredApplication.new(params[:registered_application].permit!)
    @registered_application.save!
    redirect_to registered_application_path(@registered_application)
  end

  def destroy
    @registered_application = RegisteredApplication.find(params[:id])
    @registered_application.delete
    redirect_to registered_applications_path
  end
end
