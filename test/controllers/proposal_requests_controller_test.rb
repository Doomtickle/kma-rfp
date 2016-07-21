require 'test_helper'

class ProposalRequestsControllerTest < ActionController::TestCase
  setup do
    @proposal_request = proposal_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proposal_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proposal_request" do
    assert_difference('ProposalRequest.count') do
      post :create, proposal_request: { ageGroup: @proposal_request.ageGroup, basicDescription: @proposal_request.basicDescription, budget: @proposal_request.budget, campaignName: @proposal_request.campaignName, clientIndustry: @proposal_request.clientIndustry, clientName: @proposal_request.clientName, creativeAdUnits: @proposal_request.creativeAdUnits, dayParting: @proposal_request.dayParting, decisionMadeBy: @proposal_request.decisionMadeBy, device: @proposal_request.device, flightDateEnd: @proposal_request.flightDateEnd, flightDateStart: @proposal_request.flightDateStart, gender: @proposal_request.gender, geography: @proposal_request.geography, goalsAndObjectives: @proposal_request.goalsAndObjectives, househouldIncome: @proposal_request.househouldIncome, insertionOrderTerms: @proposal_request.insertionOrderTerms, interest: @proposal_request.interest, proposalDue: @proposal_request.proposalDue, selectionCriteria: @proposal_request.selectionCriteria, specification: @proposal_request.specification, staggered: @proposal_request.staggered, submissionInstructions: @proposal_request.submissionInstructions, successMetrics: @proposal_request.successMetrics, targeting: @proposal_request.targeting }
    end

    assert_redirected_to proposal_request_path(assigns(:proposal_request))
  end

  test "should show proposal_request" do
    get :show, id: @proposal_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proposal_request
    assert_response :success
  end

  test "should update proposal_request" do
    patch :update, id: @proposal_request, proposal_request: { ageGroup: @proposal_request.ageGroup, basicDescription: @proposal_request.basicDescription, budget: @proposal_request.budget, campaignName: @proposal_request.campaignName, clientIndustry: @proposal_request.clientIndustry, clientName: @proposal_request.clientName, creativeAdUnits: @proposal_request.creativeAdUnits, dayParting: @proposal_request.dayParting, decisionMadeBy: @proposal_request.decisionMadeBy, device: @proposal_request.device, flightDateEnd: @proposal_request.flightDateEnd, flightDateStart: @proposal_request.flightDateStart, gender: @proposal_request.gender, geography: @proposal_request.geography, goalsAndObjectives: @proposal_request.goalsAndObjectives, househouldIncome: @proposal_request.househouldIncome, insertionOrderTerms: @proposal_request.insertionOrderTerms, interest: @proposal_request.interest, proposalDue: @proposal_request.proposalDue, selectionCriteria: @proposal_request.selectionCriteria, specification: @proposal_request.specification, staggered: @proposal_request.staggered, submissionInstructions: @proposal_request.submissionInstructions, successMetrics: @proposal_request.successMetrics, targeting: @proposal_request.targeting }
    assert_redirected_to proposal_request_path(assigns(:proposal_request))
  end

  test "should destroy proposal_request" do
    assert_difference('ProposalRequest.count', -1) do
      delete :destroy, id: @proposal_request
    end

    assert_redirected_to proposal_requests_path
  end
end
