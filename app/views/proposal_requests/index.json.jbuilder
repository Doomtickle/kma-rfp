json.array!(@proposal_requests) do |proposal_request|
  json.extract! proposal_request, :id, :clientName, :clientIndustry, :campaignName, :basicDescription, :flightDateStart, :flightDateEnd, :staggered, :goalsAndObjectives, :budget, :targeting, :geography, :ageGroup, :gender, :househouldIncome, :interest, :device, :creativeAdUnits, :dayParting, :successMetrics, :specification, :insertionOrderTerms, :submissionInstructions, :proposalDue, :decisionMadeBy, :selectionCriteria
  json.url proposal_request_url(proposal_request, format: :json)
end
