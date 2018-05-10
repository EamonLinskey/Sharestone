class ContactsController < ApplicationController
    
    # GET requeset to /contact-us
    # Show new contact form
    def new
      @contact = Contact.new
    end
    
    # POST request /contacts
    def create
      # Mass assignemnt of form fields into Contact object
      @contact = Contact.new(contact_params)
      # Save Contact object to database
      if @contact.save
         # Store form fields via paramaters, into variables
         name = params[:contact][:name]
         email = params[:contact][:email]
         body = params[:contact][:comments]
         # Plug variables into Contact Mailer email and send email
         ContactMailer.contact_email(name, email, body).deliver
         # Store Sucess Message
         flash[:success] = "Message Sent"
         redirect_to new_contact_path
      else
         # If Contact object doesnt save store errors and redirect
         flash[:danger] = @contact.errors.full_messages.join(". ")
         redirect_to new_contact_path
      end
    end
    private
      # To collect data from form we need to use strong paramaters and 
      # whitelist form fields
      def contact_params
         params.require(:contact).permit(:name, :email, :comments)
      end
end