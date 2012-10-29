class CreateObras < ActiveRecord::Migration
  def change
    create_table :obras do |t|
      t.integer :cliente_id
      t.string :endereco
      t.string :responsavel
      t.float :valor
      t.date :inicio
      t.date :final
      t.float :gasto
      t.timestamps
    end
  end
end
