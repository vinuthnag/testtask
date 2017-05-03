class GigsController < ApplicationController
	http_basic_authenticate_with name: "test", password: "admin", only: [:destroy]
	def create
    @seller = Seller.find(params[:seller_id])
    @gig = @seller.gigs.create(gig_params)
    redirect_to seller_path(@seller)
  end

  def destroy
    @seller= Seller.find(params[:seller_id])
    @gig = @seller.gigs.find(params[:id])
    @gig.destroy
    redirect_to seller_path(@seller)
  end

 
  private
    def gig_params
      params.require(:gig).permit(:title, :context)
    end
end
