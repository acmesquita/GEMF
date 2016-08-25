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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160825173508) do

  create_table "encontros", force: :cascade do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.string   "tema"
    t.date     "inicio_inscricoes"
    t.date     "fim_inscricoes"
    t.date     "inicio_encontro"
    t.date     "fim_encontro"
    t.decimal  "valor"
    t.integer  "quant_max"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "criador_id"
  end

  create_table "participantes", force: :cascade do |t|
    t.decimal  "valor_pago"
    t.string   "tipo_pagamento"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "encontro_id"
    t.integer  "usuario_id"
    t.index ["usuario_id"], name: "index_participantes_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "cpf"
    t.string   "rg"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "cidade"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
