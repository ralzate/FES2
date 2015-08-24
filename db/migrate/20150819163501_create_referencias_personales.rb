class CreateReferenciasPersonales < ActiveRecord::Migration
  def change
    create_table :referencias_personales do |t|
      t.string :nombre
      t.string :telefono
      t.string :profesion
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
