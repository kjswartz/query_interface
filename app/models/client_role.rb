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

class ClientRole < ActiveRecord::Base
  belongs_to :client
  belongs_to :role
end
