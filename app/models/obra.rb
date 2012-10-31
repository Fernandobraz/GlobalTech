class Obra < ActiveRecord::Base
  attr_accessible :cliente_id, :endereco, :responsavel, :valor, :inicio, :final, :gasto

  belongs_to :cliente
  has_and_belongs_to_many :materials
end
