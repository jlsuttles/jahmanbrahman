class ContactInformationsController < ApplicationController

  def index
    @contact_informations = ContactInformation.all
  end

  def show
    @contact_information = ContactInformation.find(params[:id])
  end

  def new
    @contact_information = ContactInformation.new
  end

  def edit
    @contact_information = ContactInformation.find(params[:id])
  end

  def create
    @contact_information = ContactInformation.new(params[:contact_information])
    if @contact_information.save
      redirect_to(@contact_information, :notice => 'ContactInformation was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @contact_information = ContactInformation.find(params[:id])
    if @contact_information.update_attributes(params[:contact_information])
      redirect_to(@contact_information, :notice => 'ContactInformation was successfully updated.')
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @contact_information = ContactInformation.find(params[:id])
    @contact_information.destroy
    redirect_to(contact_informations_url)
  end
  
end
