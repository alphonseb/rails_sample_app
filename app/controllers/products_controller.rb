class ProductsController < ApplicationController
     before_action :set_product, only: [:show]
     before_action :authenticate_user!

    def index
        @users = User.all.order(comments_count: :desc)
        @products = Product.page(params[:page]).per(10).order(:title)
        if params[:category_id]
            @products = @products.in_category(params[:category_id])
        end
        @categories = Category.all
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
