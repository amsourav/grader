# == Schema Information
#
# Table name: qpaperspecs
#
#  id         :integer          not null, primary key
#  qname      :string
#  exam_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Qpaperspec, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
