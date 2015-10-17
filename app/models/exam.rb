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
  validates :name, presence: true
  validates :date, presence: true
  validates :course_id, presence: true
end
