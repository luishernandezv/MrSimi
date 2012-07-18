class BranchesController < ApplicationController
  before_filter :set_pharmacy

  def set_pharmacy
    @pharmacy = Pharmacy.find(params[:pharmacy_id])
  end

  # GET /branches
  # GET /branches.json
  def index
    @branches = @pharmacy.branches

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @branches }
    end
  end

  # GET /branches/1
  # GET /branches/1.json
  def show
    @branch = Branch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @branch }
    end
  end

  # GET /branches/new
  # GET /branches/new.json
  def new
    @branch = @pharmacy.branches.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @branch }
    end
  end

  # GET /branches/1/edit
  def edit
    @branch = @pharmacy.branches.find(params[:id])
  end

  # POST /branches
  # POST /branches.json
  def create
    @branch = @pharmacy.branches.new(params[:branch])

    respond_to do |format|
      if @branch.save
        format.html { redirect_to [@pharmacy, @branch], notice: 'Branch was successfully created.' }
        format.json { render json: @branch, status: :created, location: @branch }
      else
        format.html { render action: "new" }
        format.json { render json: @branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /branches/1
  # PUT /branches/1.json
  def update
    @branch = @pharmacy.branches.find(params[:id])

    respond_to do |format|
      if @branch.update_attributes(params[:branch])
        format.html { redirect_to [@pharmacy, @branch], notice: 'Branch was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branches/1
  # DELETE /branches/1.json
  def destroy
    @branch = @pharmacy.branches.find_by_id(params[:id])
    @branch.destroy

    respond_to do |format|
      format.html { redirect_to pharmacy_branches_url }
      format.json { head :ok }
    end
  end
end
