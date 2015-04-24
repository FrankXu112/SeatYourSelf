class ReviewsController
	before_filter :load_restaurant
	before_filter :ensure_logged_in, only: [:create, :destroy]

	def show
	end

	def create
	end

	def destroy
	end

	private
	def review_params
		params.require(:review).permit(:comment, :rating, :restaurant_id)
	end

	def load_restaurant
		@restaurant = Restaurant.find(params[:restaurant_id])
	end
end