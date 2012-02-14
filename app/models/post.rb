# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  context    :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Post < ActiveRecord::Base
  belongs_to :user
end
