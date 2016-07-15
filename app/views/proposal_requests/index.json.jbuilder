json.array!(@proposal_requests) do |proposal_request|
  json.extract! proposal_request, :id, :client_name, :client_industry, :campaign_name, :basic_description, :flight_date_start, :flight_date_end, :staggered, :goals_and_objectives, :budget, :targeting1, :geography, :age_group, :gender, :household_income, :interests, :devices, :device_description, :creative_ad_units, :day_parting, :day_parting_description, :success_metrics, :specifications, :insertion_order_terms, :submission_instructions, :acceptable_proposal_formats, :proposal_due_date, :decision_made_by, :selection_criteria
  json.url proposal_request_url(proposal_request, format: :json)
end
