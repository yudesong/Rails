class StoreController < ApplicationController
  skip_before_filter :authorize	
  def index
     #   @products =Product.all
        @products = Product.paginate :page => params[:page], :per_page => 5
        @cart = current_cart



  end
end
