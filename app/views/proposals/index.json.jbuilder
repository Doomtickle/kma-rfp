json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :rfp_amount, :purchased_60, :purchased_30, :cpps, :bonus, :user_id
  json.url proposal_url(proposal, format: :json)
end
