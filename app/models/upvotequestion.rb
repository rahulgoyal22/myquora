class Upvotequestion < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
end
