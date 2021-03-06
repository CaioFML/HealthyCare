RSpec.describe Appointment do
  describe "validations" do
    it { is_expected.to validate_presence_of(:professional) }
    it { is_expected.to validate_presence_of(:date_time) }
    it { is_expected.to validate_presence_of(:specialty) }
    it { is_expected.to validate_presence_of(:complaints) }
    it { is_expected.to validate_presence_of(:diagnostics) }
    it { is_expected.to belong_to :profile }
    it { is_expected.to have_many(:appointment_details).dependent(:restrict_with_error) }
  end
end
