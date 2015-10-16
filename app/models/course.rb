# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  code       :string
#  name       :string
#  year       :string
#  semester   :string
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ActiveRecord::Base
  belongs_to :teacher
  
end
