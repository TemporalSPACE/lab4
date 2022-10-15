class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all.order(created_at: :desc)
      end

    def show
        @tweet = Tweet.find(params[:id])
      end

    def create
      @tweet = Tweet.new(params[tweet_params])

      if @tweet.save
        redirect_to @tweet, notice: "Nuevo Tweet!"
      else
        render :new, alert: "Algo raro."
      end
    end

    private
    def tweet_params
	    params.require(:tweet).permit(:content, :monster_id)
	  end

end
