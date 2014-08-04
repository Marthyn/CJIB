require 'rails_helper'

describe Vehicle, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:vehicles) }
  end
end
