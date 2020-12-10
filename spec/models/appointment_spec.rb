RSpec.describe Appointment, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:professional) }
    it { is_expected.to validate_presence_of(:date_time) }
    it { is_expected.to validate_presence_of(:specialty) }
    it { is_expected.to validate_presence_of(:complaints) }
    it { is_expected.to validate_presence_of(:diagnostics) }
  end
end
