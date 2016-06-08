class CreateProposalRequests < ActiveRecord::Migration
  def change
    create_table :proposal_requests do |t|
      t.references :user, index: true, foreign_key: true
      t.string :client_name
      t.string :client_industry
      t.string :campaign_name
      t.text :basic_description
      t.date :flight_date_start
      t.date :flight_date_end
      t.string :staggered
      t.text :goals_and_objectives
      t.float :budget
      t.string :targeting1
      t.string :targeting2
      t.string :targeting3
      t.string :targeting4
      t.string :geography
      t.string :age_group
      t.string :gender
      t.string :household_income
      t.text :interests
      t.text :devices
      t.text :creative_ad_units
      t.text :day_parting
      t.string :success_metrics
      t.text :specifications
      t.text :insertion_order_terms
      t.date :proposal_due_dates
      t.date :decision_made_by
      t.text :selection_criteria

      t.timestamps null: false
    end
    add_index :proposal_requests, [:user_id, :created_at]
  end
end
