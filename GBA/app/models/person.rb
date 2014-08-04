# == Schema Information
#
# Table name: people
#
#  id           :integer          not null, primary key
#  bsn          :string(255)
#  sex          :string(1)
#  initials     :string(255)
#  last_name    :string(255)
#  first_name   :string(255)
#  house_number :integer
#  postal_code  :string(255)
#  city         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Person < ActiveRecord::Base
end
