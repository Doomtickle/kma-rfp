class ProposalRequestsController < ApplicationController
  before_action :set_proposal_request, only: [:show, :edit, :update, :destroy]

  # GET /proposal_requests
  # GET /proposal_requests.json
  def index
    @proposal_requests = ProposalRequest.all
  end

  # GET /proposal_requests/1
  # GET /proposal_requests/1.json
  def show
  end

  # GET /proposal_requests/new
  def new
    @proposal_request = ProposalRequest.new
  end

  # GET /proposal_requests/1/edit
  def edit
      @proposal_request = ProposalRequest.find(params[:id])
  end

  # POST /proposal_requests
  # POST /proposal_requests.json
  def create
    @proposal_request = ProposalRequest.new(proposal_request_params)

    respond_to do |format|
      if @proposal_request.save
        format.html { redirect_to @proposal_request, notice: 'Proposal request was successfully created.' }
        format.json { render :show, status: :created, location: @proposal_request }
      else
        format.html { render :new }
        format.json { render json: @proposal_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposal_requests/1
  # PATCH/PUT /proposal_requests/1.json
  def update
    respond_to do |format|
      if @proposal_request.update(proposal_request_params)
        format.html { redirect_to @proposal_request, notice: 'Proposal request was successfully updated.' }
        format.json { render :show, status: :ok, location: @proposal_request }
      else
        format.html { render :edit }
        format.json { render json: @proposal_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposal_requests/1
  # DELETE /proposal_requests/1.json
  def destroy
    @proposal_request.destroy
    respond_to do |format|
      format.html { redirect_to proposal_requests_url, notice: 'Proposal request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal_request
      @proposal_request = ProposalRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposal_request_params
      params.require(:proposal_request).permit(:clientName, :clientIndustry, :campaignName, :basicDescription, :flightDateStart, :flightDateEnd, :staggered, :goalsAndObjectives, :budget, :targeting, :geography, :ageGroup, :gender, :househouldIncome, :interest, :device, :creativeAdUnits, :dayParting, :successMetrics, :specification, :insertionOrderTerms, :submissionInstructions, :proposalDue, :decisionMadeBy, :selectionCriteria)
    end
end
