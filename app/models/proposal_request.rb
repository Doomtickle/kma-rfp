class ProposalRequest < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  
  def self.to_csv(options={})
      CSV.generate(options) do |csv|
          csv << column_names
          all.each do |proposal_request|
              csv << proposal_request.attributes.values_at(*column_names)
          end
      end
  end
end
