# == Schema Information
#
# Table name: client_roles
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  role_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ClientRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
