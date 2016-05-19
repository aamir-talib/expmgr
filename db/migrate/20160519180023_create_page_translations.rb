class CreatePageTranslations < ActiveRecord::Migration
  def change
    create_table :page_translations do |t|
      t.references :locale, index: true
      t.string :url_code
      t.string :title
      t.text :body
      t.references :page, index: true

      t.timestamps
    end
  end
end
