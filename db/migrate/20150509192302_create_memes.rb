class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :uri
      t.integer :recommended

      t.timestamps null: false
    end
  end
end
