class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.references :host
      t.references :attendee

      t.timestamps
    end
  end
end
