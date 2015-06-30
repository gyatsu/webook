class ReviewsController < ApplicationController
  def new
    @memo = Memo.find(params[:memo_id])
    @review = Review.new
  end

  def create
    @review = Review.new(
    memo_id: params[:memo_id],
    user_id: current_user.id,
    body: review_params["body"]
    )
    if @review.save
      redirect_to memo_url(@review.memo)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:body)
  end
end

