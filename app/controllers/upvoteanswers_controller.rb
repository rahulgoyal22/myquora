class UpvoteanswersController < ApplicationController
	def toggle
  	@answer = Answer.find(params[:answer_id])
		upvote = Upvoteanswer.where(user: current_user, answer: @answer).first
		if upvote
			upvote.destroy!
			# @is_ = false	
		else
			Upvoteanswer.create(user: current_user, answer: @answer)
			# @is_upvoted = true
		end
        return redirect_to '/'
  end
end
