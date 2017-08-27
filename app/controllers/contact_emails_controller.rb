class ContactEmailsController < ApplicationController
  before_action :set_contact_email, only: [:show, :edit, :update, :destroy]

  # GET /contact_emails
  # GET /contact_emails.json
  def index
    @contact_emails = ContactEmail.all
  end

  # GET /contact_emails/1
  # GET /contact_emails/1.json
  def show
  end

  # GET /contact_emails/new
  def new
    @contact_email = ContactEmail.new
  end

  # GET /contact_emails/1/edit
  def edit
  end

  # POST /contact_emails
  # POST /contact_emails.json
  def create
    @contact_email = ContactEmail.new(contact_email_params)

    respond_to do |format|
      if @contact_email.save
        format.html { redirect_to @contact_email, notice: 'Contact email was successfully created.' }
        format.json { render :show, status: :created, location: @contact_email }
      else
        format.html { render :new }
        format.json { render json: @contact_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_emails/1
  # PATCH/PUT /contact_emails/1.json
  def update
    respond_to do |format|
      if @contact_email.update(contact_email_params)
        format.html { redirect_to @contact_email, notice: 'Contact email was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_email }
      else
        format.html { render :edit }
        format.json { render json: @contact_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_emails/1
  # DELETE /contact_emails/1.json
  def destroy
    @contact_email.destroy
    respond_to do |format|
      format.html { redirect_to contact_emails_url, notice: 'Contact email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_email
      @contact_email = ContactEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_email_params
      params.require(:contact_email).permit(:address, :contact_id, :email_type_id)
    end
end
