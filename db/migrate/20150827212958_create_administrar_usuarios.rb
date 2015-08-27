class CreateAdministrarUsuarios < ActiveRecord::Migration
  def change
    create_table :administrar_usuarios do |t|
      t.references :rol, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
