class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :usuario_id

      t.timestamps
    end
  end
end
