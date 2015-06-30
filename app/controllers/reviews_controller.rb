class ReviewsController < ApplicationController
  def new
    @memo = Memo.find(params[:memo_id])
    @review = Review.new
  end
end
