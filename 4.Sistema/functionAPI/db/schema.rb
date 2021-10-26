# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_26_005913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "nome"
    t.integer "prioridade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chamados", force: :cascade do |t|
    t.string "descricaoCurta"
    t.text "descricaoLonga"
    t.integer "estado"
    t.date "data_criacao"
    t.datetime "inicio_atendimento"
    t.datetime "fim_atendimento"
    t.bigint "usuario_id"
    t.bigint "departamento_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["departamento_id"], name: "index_chamados_on_departamento_id"
    t.index ["usuario_id"], name: "index_chamados_on_usuario_id"
  end

  create_table "chamados_categorias", id: false, force: :cascade do |t|
    t.bigint "chamado_id"
    t.bigint "categoria_id"
    t.index ["categoria_id"], name: "index_chamados_categorias_on_categoria_id"
    t.index ["chamado_id"], name: "index_chamados_categorias_on_chamado_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nome"
    t.integer "prioridade"
    t.string "local"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jwt_blacklists", force: :cascade do |t|
    t.string "jti"
    t.datetime "exp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jti"], name: "index_jwt_blacklists_on_jti"
  end

  create_table "organizacaos", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj", null: false
    t.string "email", null: false
    t.string "fone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cnpj"], name: "index_organizacaos_on_cnpj", unique: true
    t.index ["email"], name: "index_organizacaos_on_email", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "funcao"
    t.string "nome"
    t.string "role"
    t.bigint "departamento_id"
    t.bigint "organizacao_id"
    t.index ["departamento_id"], name: "index_usuarios_on_departamento_id"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["organizacao_id"], name: "index_usuarios_on_organizacao_id"
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
