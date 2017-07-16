class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :upvoteanswers

def upvote_answer user_id
  	if Upvoteanswer.where(answer_id: id, user_id: user_id).length > 0
  		return "Downvote"
  	else
  		return "Upvote"
  	end

  end

end
