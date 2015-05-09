class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :body
      t.string :author
      t.integer :recommended

      t.timestamps null: false
    end
  end
end
