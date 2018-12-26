class CreatePractitioners < ActiveRecord::Migration[5.2]
  def change
    create_table :practitioners do |t|
      t.string :user_name
      t.text :email
      t.string :password_digest
      t.timestamps
    end
  end
end
