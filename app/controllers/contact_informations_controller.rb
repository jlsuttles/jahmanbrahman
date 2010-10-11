class ContactInformationsController < ApplicationController
  # GET /contact_informations
  # GET /contact_informations.xml
  def index
    @contact_informations = ContactInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contact_informations }
    end
  end

  # GET /contact_informations/1
  # GET /contact_informations/1.xml
  def show
    @contact_information = ContactInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact_information }
    end
  end

  # GET /contact_informations/new
  # GET /contact_informations/new.xml
  def new
    @contact_information = ContactInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact_information }
    end
  end

  # GET /contact_informations/1/edit
  def edit
    @contact_information = ContactInformation.find(params[:id])
  end

  # POST /contact_informations
  # POST /contact_informations.xml
  def create
    @contact_information = ContactInformation.new(params[:contact_information])

    respond_to do |format|
      if @contact_information.save
        format.html { redirect_to(@contact_information, :notice => 'ContactInformation was successfully created.') }
        format.xml  { render :xml => @contact_information, :status => :created, :location => @contact_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contact_informations/1
  # PUT /contact_informations/1.xml
  def update
    @contact_information = ContactInformation.find(params[:id])

    respond_to do |format|
      if @contact_information.update_attributes(params[:contact_information])
        format.html { redirect_to(@contact_information, :notice => 'ContactInformation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_informations/1
  # DELETE /contact_informations/1.xml
  def destroy
    @contact_information = ContactInformation.find(params[:id])
    @contact_information.destroy

    respond_to do |format|
      format.html { redirect_to(contact_informations_url) }
      format.xml  { head :ok }
    end
  end
end
