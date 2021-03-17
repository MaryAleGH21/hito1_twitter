class LikesController < ApplicationController

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @like = Like.new(user: current_user, tweet: @tweet)
  
    respond_to do |format|
      if @like.save
        format.html { redirect_to @tweet, notice: "Like was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy 
    @like.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: "Like was successfully destroyed." }
      format.json { head :no_content }
    end
  end


end