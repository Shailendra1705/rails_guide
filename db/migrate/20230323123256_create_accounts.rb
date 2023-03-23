class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :acc_no
      t.belongs_to :supplier
      t.timestamps
    end
  end
end
