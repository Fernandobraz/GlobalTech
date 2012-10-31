class CreateMaterialsObras < ActiveRecord::Migration
  def change
    create_table :materials_obras, id: false do |t|
      t.references :obra,     null: false
      t.references :material, null: false

      t.timestamps
    end
    add_index :materials_obras, [:obra_id, :material_id],
      name: "idx_obra_material"
    add_index :materials_obras, [:material_id, :obra_id],
      name: "idx_material_obra"
  end
end
