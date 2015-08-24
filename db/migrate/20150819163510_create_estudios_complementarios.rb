class CreateEstudiosComplementarios < ActiveRecord::Migration
  def change
    create_table :estudios_complementarios do |t|
      t.string :nombre
      t.string :entidad
      t.date :fecha_terminacion
      t.time :intensidad_horaria
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
