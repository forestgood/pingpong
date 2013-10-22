# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  fname      :string(255)
#  lname      :string(255)
#  email      :string(255)
#  company    :string(255)
#  location   :string(255)
#  pong       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
