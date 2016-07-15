class AddUserToProposalRequests < ActiveRecord::Migration
  def change
    add_reference :proposal_requests, :user, index: true, foreign_key: true
  end
end
