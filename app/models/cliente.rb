class Cliente < ActiveRecord::Base
  attr_accessible :cidade, :cnpj, :cpf, :email, :endereco, :estado, :nome
end
