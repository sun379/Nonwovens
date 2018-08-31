class EventsController < ApplicationController
	def index
		@events = Event.all
	end
	def show
  	@events = Event.find(params[:id])
  end

  def new
  end

  def edit

  end

  def update

  end

  def create
    @events= Event.new(auction_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @auction, notice: 'Auction was successfully created.' }
        format.json { render :show, status: :created, location: @auction }
      else
        format.html { render :new }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end

  end


  def destroy

  end

end
