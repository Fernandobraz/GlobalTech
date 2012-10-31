# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121029135531) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "cnpj"
    t.string   "email"
    t.string   "endereco"
    t.string   "cidade"
    t.string   "estado"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "nome"
    t.float    "valor"
    t.float    "quantidade"
    t.string   "und_medida"
    t.string   "referencia_valor"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "materials_obras", :id => false, :force => true do |t|
    t.integer  "obra_id",     :null => false
    t.integer  "material_id", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "materials_obras", ["material_id", "obra_id"], :name => "idx_material_obra"
  add_index "materials_obras", ["obra_id", "material_id"], :name => "idx_obra_material"

  create_table "obras", :force => true do |t|
    t.integer  "cliente_id"
    t.string   "endereco"
    t.string   "responsavel"
    t.float    "valor"
    t.date     "inicio"
    t.date     "final"
    t.float    "gasto"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
