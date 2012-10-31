class MaterialsObrasController < ApplicationController
  def new
    @obra = Obra.find(params[:obra])
    @materials = Material.all
    @obra_material = ObraMaterial.new(obra_id: @obra)

   render layout: request.xhr? ? nil : 'application'
  end
end
