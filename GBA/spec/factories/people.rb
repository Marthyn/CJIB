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

FactoryGirl.define do
  factory :person do
    first_name "John"
    last_name "Smith"
    sex "M"
    initials "JS"
    house_number 9
    postal_code "1947AK"
    city "Eindhoven"
    sequence :bsn do |n|
      n.to_i
    end
  end
end
