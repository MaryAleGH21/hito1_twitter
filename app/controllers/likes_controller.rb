class LikesController < ApplicationController

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @like = Like.new(user: current_user, tweet: @tweet)

      if @like.save
         redirect_to @tweet, notice: "Like was successfully created." 
      else
        redirect_to @tweet, notice: "Error wasn't successfully created."
      end
  end
  
  def destroy 
    @like = Like.find params[:id]
    @like.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: "Like was successfully destroyed." }
      format.json { head :no_content }
    end
  end


end