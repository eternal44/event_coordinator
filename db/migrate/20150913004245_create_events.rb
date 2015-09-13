class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :location
      t.datetime :time
      t.string :event_name
      t.integer :account_id

      t.timestamps null: false
    end
  end
end
