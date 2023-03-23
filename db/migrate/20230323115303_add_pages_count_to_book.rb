class AddPagesCountToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :pages_count, :integer
  end
end
