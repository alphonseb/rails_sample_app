class ProductsController < ApplicationController

    def index
        @products = Product.page(params[:page]).per(10).order(:title)
    end
end
