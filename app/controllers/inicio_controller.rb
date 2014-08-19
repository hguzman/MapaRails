class InicioController < ApplicationController
  before_action :authenticate_user!
#  load_and_authorize_resource :class => false
  load_and_authorize_resource :class => :controller
  def index
    if current_user.has_role? :admin
      @menu=['Registrar Informe de Accidentes','pe2','ope3']
    else
      @menu=['Default']
    end  
  end
end
