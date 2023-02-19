class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.integer :account_id
      t.integer :user_id
      t.string :image

      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end
