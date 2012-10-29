class Cliente < ActiveRecord::Base
  attr_accessible :cidade, :cnpj, :cpf, :email, :endereco, :estado, :nome

  has_many :obras
end
