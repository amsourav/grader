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

FactoryGirl.define do
  factory :course do
    code "MyString"
name "MyString"
year "MyString"
semester "MyString"
teacher_id 1
  end

end
