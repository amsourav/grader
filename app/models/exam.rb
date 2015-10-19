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
#  tot_marks  :integer
#  tot_ques   :integer
#

class Exam < ActiveRecord::Base
  belongs_to :course
  has_many :qpaperspecs
  accepts_nested_attributes_for :qpaperspecs
  
  validates :name, presence: true
  validates :date, presence: true
  validates :course_id, presence: true
  validates :tot_ques, presence: true, numericality: {greater_than_or_equal_to: 1}
  validates :tot_marks, presence: true, numericality: {greater_than_or_equal_to: 1}
end
