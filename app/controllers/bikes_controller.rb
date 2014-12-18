class BikesController < ApplicationController
  def index
  	@bikes = Bike.all
  end

  def new
  	@bike = Bike.new
  end

  def create
  	@bike = Bike.new(bike_params)
		# if the new bean creation & save is sucessful, we want to redirect to the index
		if @bike.save
			redirect_to bikes_path
		else
			#if unsuccessful, reset to the new page
			render "new"
		end
  end

  def show
  	# retrieve one sepcific bike in our DB
		@bike = Bike.find(params[:id])
  end

  def edit
		# this action is responsible for editing a specific bike
		@bike = Bike.find(params[:id])
	end

	def update
		# this action is responsible for saving an update to a specific bike
		# this line of code retrieves a specific bean from the database
		@bike = Bike.find(params[:id])

		if @bike.update_attributes(params.require(:bike).permit(:name, :type, :speed))
			redirect_to bikes_path
		else
			#if unsuccessful, reset to the edit page
			render "edit"
		end
	end

	def destroy
		@bike = Bike.find(params[:id])
		@bike.destroy
		redirect_to bikes_path
	end

	def plus(x,y)
		x+y
	end


	private
		def bike_params
		 	params.require(:bike).permit(:name, :type, :speed)
	end
end
