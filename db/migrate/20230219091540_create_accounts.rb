class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :owner_id
      t.string :slug

      t.string :currency


      t.timestamps
    end
    add_index :accounts, :slug, unique: true
  end
end
