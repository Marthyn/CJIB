require 'rails_helper'

describe VehicleModel, type: :model do
  describe "associations" do
    it { is_expected.to have_many(:vehicles) }
  end
end
