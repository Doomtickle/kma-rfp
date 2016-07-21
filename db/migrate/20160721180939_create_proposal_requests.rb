class CreateProposalRequests < ActiveRecord::Migration
  def change
    create_table :proposal_requests do |t|
      t.string :clientName
      t.string :clientIndustry
      t.string :campaignName
      t.text :basicDescription
      t.date :flightDateStart
      t.date :flightDateEnd
      t.string :staggered
      t.text :goalsAndObjectives
      t.float :budget
      t.string :targeting
      t.string :geography
      t.string :ageGroup
      t.string :gender
      t.string :househouldIncome
      t.string :interest
      t.string :device
      t.text :creativeAdUnits
      t.string :dayParting
      t.string :successMetrics
      t.text :specification
      t.text :insertionOrderTerms
      t.text :submissionInstructions
      t.date :proposalDue
      t.date :decisionMadeBy
      t.text :selectionCriteria

      t.timestamps null: false
    end
  end
end
