class UpvotequestionsController < ApplicationController
  def upvote
  	@question = Question.find(params[:question_id])
		upvote = Upvotequestion.where(user: current_user, question: @question).first
		if upvote
			upvote.destroy!
			@is_upvoted = false	
		else
			Upvotequestion.create(user: current_user, question: @question)
			@is_upvoted = true
		end
        # return redirect_to '/'
        respond_to do |format|
			format.js {}
		end
  end
end
