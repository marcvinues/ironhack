class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(name: :asc).limit(10)
  end

  def new
  end
  def description
     @contacts = Contact.find_by(id: params[:id])
    # @def = Contact.where(id: params[:id])
  end
  def favorites
    @contacts = Contact.where(favorites: "false")
  end
  def search
    # @contacts = Contact.where(name: "LIKE '#{params[:search]}'")
  end
  def result
    @contacts = Contact.where("name LIKE '#{params[:search]}'")
  end
  def create

    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone => params[:contact][:phone],
      :email => params[:contact][:email],
      :favorites => params[:contact][:checkbox])

      contact.save

      # render(:text => contact.attributes)
      redirect_to("/contacts")
  end
end
