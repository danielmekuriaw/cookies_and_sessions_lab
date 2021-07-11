class ProductsController < ApplicationController

    def index
        @products = cart
    end

    def add
        cart << params[:product]
        session[:cart] = cart

        render :index
    end

end