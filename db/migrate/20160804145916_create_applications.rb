class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.text :name
      t.text :url
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
