class ProposalRequest < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  
attr_accessible :client_name, :client_industry, :campaign_name, :basic_description, :flight_date_start, :flight_date_end, :staggered, :goals_and_objectives, :budget, :targeting1, :targeting2, :targeting3, :targeting4, :geography, :age_group, :gender, :household_income, :interests, :devices, :creative_ad_units, :day_parting, :success_metrics, :specifications, :insertion_order_terms, :proposal_due_dates, :decision_made_by, :selection_criteria
  def self.to_csv(options={})
      CSV.generate(options) do |csv|
          csv << column_names
          all.each do |proposal_request|
              csv << proposal_request.attributes.values_at(*column_names)
          end
      end
  end
end
