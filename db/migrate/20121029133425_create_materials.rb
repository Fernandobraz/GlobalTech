class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :nome
      t.float :valor
      t.float :quantidade
      t.string :und_medida
      t.string :referencia_valor
      t.timestamps
    end
  end
end
