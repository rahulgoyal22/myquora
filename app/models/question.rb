class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :upvotequestions

  def upvote_question user_id
  	if Upvotequestion.where(question_id: id, user_id: user_id).length > 0
  		return "Downvote"
  	else
  		return "Upvote"
  	end

  end


end


  