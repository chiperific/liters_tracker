# frozen_string_literal: true

class ContractsController < ApplicationController
  before_action :set_contract, only: %i[show edit update destroy select plan]

  # GET /contracts
  # GET /contracts.json
  def index
    authorize @contracts = Contract.order(start_date: :desc)
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    @targets = @contract.targets.joins(:technology).order('technologies.name ASC')

    @untargeted_technologies_exist = (Technology.all.pluck(:id) - @contract.targets.pluck(:technology_id)).any?
  end

  # GET /contracts/new
  def new
    authorize @contract = Contract.new
  end

  # GET /contracts/1/edit
  def edit
    @start_date = form_date(@contract.start_date) || nil
  end

  # POST /contracts
  # POST /contracts.json
  def create
    authorize @contract = Contract.new(contract_params)

    respond_to do |format|
      if @contract.save
        format.html { redirect_to @contract, notice: 'Contract created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, notice: 'Contract updated.' }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to contracts_url, notice: 'Contract deleted.' }
      format.json { head :no_content }
    end
  end

  # sector selection for plans
  def select
    authorize @sectors = Sector.visible.order(:name)
    @technologies = Technology.report_worthy.order(:short_name)

    @date = params[:date].present? ? Date.parse(params[:date]) : Date.today.beginning_of_month + 1.month
    @earliest_year = @contract.start_date.year
    @latest_year = @contract.end_date.year
  end

  def plan
    begin
      @technology = Technology.find(params[:tech])
      @sector = Sector.find(params[:sect])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = 'Oops, lost some information. Please try again.'
      redirect_to select_contract_path(@contract) and return
    end

    @date = params[:date].present? ? Date.parse(params[:date]) : Date.today.beginning_of_month + 1.month
    @plans = @sector.related_plans.where(technology: @technology).nearest_to_date(@date)

    @plan = Plan.new(technology: @technology, date: @date)

    @cells = @sector.cells.order(:name).pluck(:name, :id)
    @cell = Cell.new
    @villages = [['Please select a Cell', '0']]
    @village = Village.new

    return unless @technology.scale == 'Community'

    @facility = Facility.new
    @facilities = [['Please select a Village', '0']]
  end

  private

  def set_contract
    authorize @contract = Contract.find(params[:id])
  end

  def contract_params
    params.require(:contract).permit(:start_date,
                                     :end_date,
                                     :budget,
                                     :household_goal,
                                     :people_goal,
                                     plans_attributes:
                                      [
                                        :contract_id,
                                        :technology_id,
                                        :goal,
                                        :people_goal,
                                        :planable_type,
                                        :planable_id
                                      ])
  end
end
