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

require 'rails_helper'

RSpec.describe Exam, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
