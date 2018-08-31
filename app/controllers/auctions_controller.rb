class AuctionsController < ApplicationController
  
  def index
  	@auctions = Auction.all
  end

  def show
  	@auction = Auction.find(params[:id])
  end

  def new
    @auction = Auction.new
  end

  def edit
    @auction = Auction.find(params[:id])
  end

  def update
    @auction = Auction.find(params[:id])
    respond_to do |format|
      if @auction.update(auction_params)
        format.html { redirect_to @auction, notice: 'Auction was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end


  def create
    @auction= Auction.new(auction_params)

    respond_to do |format|
      if @auction.save
        format.html { redirect_to @auction, notice: 'Auction was successfully created.' }
        format.json { render :show, status: :created, location: @auction }
      else
        format.html { render :new }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end

  end


  def destroy
    @auction = Auction.find(params[:id])
    @auction.destroy
    respond_to do |format|
      format.html { redirect_to auctions_url, notice: 'Auction was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

def auction_params
      params.require(:auction).permit(:title, :auction_details)
    end

end
