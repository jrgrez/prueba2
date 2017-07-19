class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.serial :serialnumber
      t.integer :size
      t.text :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end