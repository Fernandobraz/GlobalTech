class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :cnpj
      t.string :email
      t.string :endereco
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
