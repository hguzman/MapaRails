class InicioController < ApplicationController
  before_action :authenticate_user!
#  load_and_authorize_resource :class => false
  load_and_authorize_resource :class => :controller
  def index

    @menu=Hash.new

    if current_user.has_role? :admin

      @menu['Informes de Accidentes']=accidents_path


#      @menu={'Registrar Informe de Accidentes',''}
      # menu=Hash.new 
      # menu['etiqueta']='Registrar Informe de Accidentes'



      # @menu=[{etiqueta: 'Registrar Informe de Accidentes', ruta: 'accidents_path'},
      #   {etiqueta: 'Otro', ruta: 'accidents_path2'}]

    else
      @menu['Default']=accidents_path
    end  
  end
end
