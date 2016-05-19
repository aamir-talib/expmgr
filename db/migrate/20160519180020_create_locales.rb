class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string :code
      t.string :name
      t.string :icon_class
      t.boolean :right_to_left
      t.integer :position

      t.timestamps
    end
  end
end
