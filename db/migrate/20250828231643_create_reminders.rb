class CreateReminders < ActiveRecord::Migration[7.1]
  def change
    create_table :reminders do |t|
      t.string :message
      t.datetime :time
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
