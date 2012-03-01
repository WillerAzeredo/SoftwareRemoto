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

ActiveRecord::Schema.define(:version => 20120301204107) do

  create_table "areas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "cpf"
    t.string   "rg"
    t.string   "dtnascimento"
    t.string   "email"
    t.string   "funcao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "desenvolvedors", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "cpf"
    t.string   "rg"
    t.string   "dtnascimento"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reuniaos", :force => true do |t|
    t.string   "local"
    t.string   "data"
    t.string   "tipo"
    t.string   "hora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "situacaos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
