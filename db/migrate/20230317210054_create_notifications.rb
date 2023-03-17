class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.boolean :should_forward
      t.references :payload, null: false, foreign_key: true

      t.timestamps
    end
  end
end
