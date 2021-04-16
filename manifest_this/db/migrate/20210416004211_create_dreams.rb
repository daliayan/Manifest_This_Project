class CreateDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams do |t|
      t.string :title
      t.text :content
      t.date :entry_date
      t.integer :user_id
    end
  end
end
