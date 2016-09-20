class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :source
      t.integer :note_id
      t.float :score
      t.datetime :last_received_at
      t.date :schema_less
      t.boolean :closed

      t.timestamps

    end
  end
end
