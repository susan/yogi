class CreateRoutinePoses < ActiveRecord::Migration[5.2]
  def change
    create_table :routine_poses do |t|
      t.integer :routine_id
      t.integer :yoga_pose_id
      t.timestamps
    end
  end
end
