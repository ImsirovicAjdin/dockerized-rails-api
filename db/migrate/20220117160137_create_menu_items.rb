class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :menu_name
      t.string :restaurant_name
      t.string :menu_description
      t.timestamps
    end
  end
end
