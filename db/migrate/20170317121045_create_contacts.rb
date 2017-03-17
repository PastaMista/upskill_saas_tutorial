class CreateContacts < ActiveRecord::Migration[5.0] #Migration sind wie Blueprints für einee DB. Immer wenn man die DB Struktur ändern möchte, nutzt man eine Migration Datei. Mit rails db:migrate wird BP angewendet 
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :kommentar
      t.timestamps
    end
  end
end
