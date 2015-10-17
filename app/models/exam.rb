# == Schema Information
#
# Table name: exams
#
#  id         :integer          not null, primary key
#  name       :string
#  date       :datetime
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Exam < ActiveRecord::Base
  belongs_to :course
end
