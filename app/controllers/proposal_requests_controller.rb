class ProposalRequestsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy
  before_action :set_proposal_request, only: [:show, :edit, :update, :destroy]

  # GET /proposal_requests
  # GET /proposal_requests.json
  def index
    @proposal_requests = ProposalRequest.all
  end

  # GET /proposal_requests/1
  # GET /proposal_requests/1.json
  def show
      @proposal_request = ProposalRequest.order(:name)
      respond_to do |format|
        format.html
        format.csv { send_data @proposal_request.to_csv }
        format.xls 
      end
  end

  # GET /proposal_requests/new
  def new
    @proposal_request = ProposalRequest.new
  end

  # GET /proposal_requests/1/edit
  def edit
  end

  # POST /proposal_requests
  # POST /proposal_requests.json
  def create
    @proposal_request = current_user.proposal_requests.build(proposal_request_params)

      if @proposal_request.save
        flash[:success] =  'Proposal request was successfully created.' 
        redirect_to @proposal_request 
      else
          redirect_to 'static_pages/home'
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
      params.require(:proposal_request).permit(:user_id, :client_name, :client_industry, :campaign_name, :basic_description, :flight_date_start, :flight_date_end, :staggered, :goals_and_objectives, :budget, :targeting1, :targeting2, :targeting3, :targeting4, :geography, :age_group, :gender, :household_income, :interests, :devices, :creative_ad_units, :day_parting, :success_metrics, :specifications, :insertion_order_terms, :proposal_due_dates, :decision_made_by, :selection_criteria)
    end

    def correct_user
        @proposal_request = current_user.proposal_requests.find_by(id: params[:id])
        redirect_to root_url if @proposal_request.nil?
    end
end
