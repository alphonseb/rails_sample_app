class ProductsController < ApplicationController
     before_action :set_product, only: [:show]
     before_action :authenticate_user!

    def index
        @products = Product.page(params[:page]).per(10).order(:title)
    end

    def show
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_product
            @product = Product.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def product_params
            params.require(:product).permit(:title, :description, :price)
        end
end
