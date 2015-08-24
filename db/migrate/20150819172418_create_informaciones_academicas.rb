class CreateInformacionesAcademicas < ActiveRecord::Migration
  def change
    create_table :informaciones_academicas do |t|
      t.string :tipo_de_dato
      t.string :nombre
      t.date :fecha_terminacion
      t.string :titulo_obtenido
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
