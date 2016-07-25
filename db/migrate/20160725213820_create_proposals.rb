class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.float :rfp_amount
      t.integer :purchased_60
      t.integer :purchased_30
      t.float :cpps
      t.text :bonus
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :proposals, [:user_id, :created_at]
  end
end
