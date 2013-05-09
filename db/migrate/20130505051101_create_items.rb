class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :title
      t.string :url
      t.float :price
      t.integer :cat_id

      t.timestamps
    end
  end
end
