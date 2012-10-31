class Material < ActiveRecord::Base
  attr_accessible :nome, :valor, :quantidade, :und_medida, :referencia_valor

  has_and_belongs_to_many :obras
end
