class CreateYogaPoses < ActiveRecord::Migration[5.2]
  def change
    create_table :yoga_poses do |t|
      t.string :name
      t.text :description
      t.integer :difficulty_level
      t.string :img_url
      t.integer :likes
      t.integer :body_area_id
      t.timestamps
    end
  end
end
