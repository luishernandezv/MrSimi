class PharmaciesController < ApplicationController

	# GET /pharmacies
	# GET /pharmacies.json
	def index
		if params[:search].present?
			@branches = Branch.near(params[:search], 5, :order => :distance, :units => :km)
		else
			@branches = Branch.all
		end

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @branches }
		end
	end

	# GET /pharmacies/1
	# GET /pharmacies/1.json
	def show
		@pharmacy = Pharmacy.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @pharmacy }
		end
	end

	# GET /pharmacies/new
	# GET /pharmacies/new.json
	def new
		@pharmacy = Pharmacy.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @pharmacy }
		end
	end

	# GET /pharmacies/1/edit
	def edit
		@pharmacy = Pharmacy.find(params[:id])
	end

	# POST /pharmacies
	# POST /pharmacies.json
	def create
		@pharmacy = Pharmacy.new(params[:pharmacy])

		respond_to do |format|
			if @pharmacy.save
				format.html { redirect_to @pharmacy, notice: 'Pharmacy was successfully created.' }
				format.json { render json: @pharmacy, status: :created, location: @pharmacy }
			else
				format.html { render action: "new" }
				format.json { render json: @pharmacy.errors, status: :unprocessable_entity }
			end
		end
	end

	# PUT /pharmacies/1
	# PUT /pharmacies/1.json
	def update
		@pharmacy = Pharmacy.find(params[:id])

		respond_to do |format|
			if @pharmacy.update_attributes(params[:pharmacy])
				format.html { redirect_to @pharmacy, notice: 'Pharmacy was successfully updated.' }
				format.json { head :ok }
			else
				format.html { render action: "edit" }
				format.json { render json: @pharmacy.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /pharmacies/1
	# DELETE /pharmacies/1.json
	def destroy
		@pharmacy = Pharmacy.find(params[:id])
		@pharmacy.destroy

		respond_to do |format|
			format.html { redirect_to pharmacies_url }
			format.json { head :ok }
		end
	end
end
