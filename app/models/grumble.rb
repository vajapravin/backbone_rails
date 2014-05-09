# == Schema Information
#
# Table name: grumbles
#
#  id         :integer          not null, primary key
#  author     :string(255)
#  content    :text
#  title      :string(255)
#  image      :string(255)
#  avatar     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Grumble < ActiveRecord::Base
end
