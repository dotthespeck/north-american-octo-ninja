class Answer < ActiveRecord::Base

belongs_to :question
belongs_to :user

validates_presence_of :user_id
validates_presence_of :question_id

validates :answer, presence: true, length: {:minimum => 50}

end
