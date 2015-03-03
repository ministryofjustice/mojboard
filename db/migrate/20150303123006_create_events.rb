class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.text :details
      t.integer :organiser_id
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
