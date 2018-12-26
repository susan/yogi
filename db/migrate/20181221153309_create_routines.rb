class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.string :name
      t.integer :practitioner_id
      t.timestamps
    end
  end
end
