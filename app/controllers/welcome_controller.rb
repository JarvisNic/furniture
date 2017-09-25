class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
      @clients = Client.where(:stateclient => "pago").find(1)
      @clients = Client.all
  end
end
