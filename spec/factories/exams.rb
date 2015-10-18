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

FactoryGirl.define do
  factory :exam do
    name "MyString"
    date "2015-10-17 14:37:14"
    course_id 1
    tot_ques 10
    tot_marks 100
  end

end
