class CreateMicrosposts < ActiveRecord::Migration
  def change
    create_table :microsposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
