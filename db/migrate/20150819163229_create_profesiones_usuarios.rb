class CreateProfesionesUsuarios < ActiveRecord::Migration
  def change
    create_table :profesiones_usuarios do |t|
      t.references :user, index: true
      t.references :profesion, index: true

      t.timestamps
    end
  end
end
