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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140826010624) do

  create_table "accidents", force: true do |t|
    t.integer  "informe"
    t.integer  "transito"
    t.integer  "transit_id"
    t.integer  "gravedad"
    t.float    "latitud"
    t.float    "longitud"
    t.string   "direccion"
    t.string   "localidad"
    t.integer  "clase_accidente"
    t.integer  "choque_con"
    t.integer  "objeto_fijo"
    t.integer  "area"
    t.integer  "sector"
    t.integer  "zona"
    t.integer  "diseno"
    t.integer  "clima"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "fecha_ocurrencia_at"
    t.datetime "fecha_levantamiento_at"
  end

  create_table "class_vehicles", force: true do |t|
    t.string   "clase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: true do |t|
    t.string   "tipo_documento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers", force: true do |t|
    t.integer  "gravedad"
    t.string   "direccion"
    t.integer  "telefono"
    t.string   "ciudad"
    t.integer  "porta_licencia"
    t.integer  "num_licencia"
    t.string   "categoria"
    t.integer  "restriccion"
    t.integer  "expven"
    t.date     "fecha_expven_at"
    t.integer  "cod_transito"
    t.integer  "chaleco"
    t.integer  "casco"
    t.integer  "cinturon"
    t.string   "hospital"
    t.string   "lesiones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insurers", force: true do |t|
    t.string   "nom_aseguradora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "list_insurers", force: true do |t|
    t.integer  "insurer_id"
    t.integer  "type_insurer_id"
    t.integer  "poliza"
    t.date     "vencimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.integer  "document_id"
    t.integer  "identificacion"
    t.string   "nombre"
    t.string   "nacionalidad"
    t.date     "nacimiento"
    t.integer  "sexo"
    t.string   "direccion"
    t.integer  "telefono"
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "services", force: true do |t|
    t.string   "servicio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "streets", force: true do |t|
    t.integer  "accident_id"
    t.integer  "via"
    t.integer  "geometria"
    t.integer  "utilizacion"
    t.integer  "calzadas"
    t.integer  "carriles"
    t.integer  "superficie"
    t.integer  "controles"
    t.integer  "visibilidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.integer  "autorizo"
    t.integer  "embriaguez"
    t.integer  "grado"
    t.integer  "psicoactivas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transits", force: true do |t|
    t.string   "transito"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_insurers", force: true do |t|
    t.string   "tipo_seguro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

  create_table "vehicles", force: true do |t|
    t.string   "placa"
    t.string   "nacionalidad"
    t.integer  "brand_id"
    t.string   "linea"
    t.integer  "colod_id"
    t.integer  "modelo"
    t.string   "carroceria"
    t.integer  "toneladas"
    t.integer  "pasajeros"
    t.string   "licencia_transito"
    t.string   "empresa"
    t.integer  "nit"
    t.string   "matriculado_en"
    t.string   "inmovilizado_en"
    t.string   "deposito"
    t.integer  "registro"
    t.integer  "revision_sino"
    t.integer  "revision_numero"
    t.integer  "acompanantes"
    t.integer  "class_vehicle_id"
    t.integer  "modalidad"
    t.integer  "radio_accion"
    t.string   "danos_materiales"
    t.integer  "lugar_impacto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
