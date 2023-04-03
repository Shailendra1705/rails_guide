class Author < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :age

      t.timestamps
    end
  end
end
