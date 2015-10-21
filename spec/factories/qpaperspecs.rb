# == Schema Information
#
# Table name: qpaperspecs
#
#  id         :integer          not null, primary key
#  qname      :text
#  exam_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :qpaperspec do
    qname "MyString"
exam_id 1
  end

end
