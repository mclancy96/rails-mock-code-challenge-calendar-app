class CreateNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :notifications do |t|
      t.string :recipient
      t.datetime :sent_at
      t.references :reminder, null: false, foreign_key: true

      t.timestamps
    end
  end
end
