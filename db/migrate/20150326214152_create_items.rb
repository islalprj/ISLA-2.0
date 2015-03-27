class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :on
      t.text :comment
      t.string :img

      t.timestamps null: false
    end
  end
end
