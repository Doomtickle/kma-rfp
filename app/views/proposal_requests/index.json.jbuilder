json.array!(@proposal_requests) do |proposal_request|
  json.extract! proposal_request, :id, :user_id, :client_name, :client_industry, :campaign_name, :basic_description, :flight_date_start, :flight_date_end, :staggered, :goals_and_objectives, :budget, :targeting1, :targeting2, :targeting3, :targeting4, :geography, :age_group, :gender, :household_income, :interests, :devices, :creative_ad_units, :day_parting, :success_metrics, :specifications, :insertion_order_terms, :proposal_due_dates, :decision_made_by, :selection_criteria
  json.url proposal_request_url(proposal_request, format: :json)
end
