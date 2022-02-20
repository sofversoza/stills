class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable
    rescue_from ActiveRecord::RecordNotFound, with: :render_error
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find_by(movie_id: params[:movie_id])
        render json: review
    end

    def create
        review = Review.create!(rating:params[:newRating], comment:params[:newReview], user_id: params[:userId],movie_id: params[:movieId])
        render json: review, status: :created
    end
    
    def destroy
        review = Review.find(params[:id])
        review.destroy
        head :no_content
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        render json: review, status: :accepted
    end

    private

    def render_unprocessable(i)
        render json: {errors: i.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_error(e)
        render json: {error: "#{e.model} not found"}, status: :not_found
    end
end
