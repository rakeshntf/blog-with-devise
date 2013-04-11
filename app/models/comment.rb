class Comment < ActiveRecord::Base
  belongs_to :home
 attr_accessible :body, :commenter
end
