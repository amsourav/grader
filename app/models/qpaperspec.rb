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

class Qpaperspec < ActiveRecord::Base
  belongs_to :exam
  validates :qname, presence: true
end
