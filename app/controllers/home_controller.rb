class HomeController < ApplicationController
  def index
  end

  def contact
    ContactMailer.contact_mail(params[:name],params[:email],params[:text]).deliver_now
    flash[:notice] = 'E-mail enviado com sucesso.'
    render action: :index
  end
end
