class CreateBritts < ActiveRecord::Migration
  def change
    create_table :britts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
