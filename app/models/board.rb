# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  
  #Create A Direct Scoped Association For Active Posts and Non Active Posts

  has_many(:active_posts, -> {active_posts}, :class_name => "Post", :foreign_key => "board_id" )
  has_many(:expired_posts, -> {expired_posts}, :class_name => "Post", :foreign_key => "board_id" )
end
