class ContactsController < ApplicationController
    
    
    def new
      @contact = Contact.new

    end

    def create
      @contact = Contact.new(contact_params)

      if @contact.save

      else

        puts @contact.errors.full_messages
        render :new

      end
    end

    private

    def contact_params
      params.require(:contact).permit(:name, :email, :num, :message )
    end
  end