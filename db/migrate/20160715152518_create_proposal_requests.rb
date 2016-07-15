class CreateProposalRequests < ActiveRecord::Migration
  def change
    create_table :proposal_requests do |t|
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
      t.string :geography
      t.string :age_group
      t.string :gender
      t.string :household_income
      t.string :interests
      t.string :devices
      t.string :devices_description
      t.text :creative_ad_units
      t.string :day_parting
      t.string :day_parting_description
      t.string :success_metrics
      t.text :specifications
      t.text :insertion_order_terms
      t.text :submission_instructions
      t.string :acceptable_proposal_formats
      t.date :proposal_due_date
      t.date :decision_made_by
      t.text :selection_criteria

      t.timestamps null: false
    end
  end
end
