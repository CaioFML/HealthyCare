RSpec.describe AppointmentDetail, type: :model do
  describe "validations" do
    it { is_expected.to belong_to :detailable }
    it { is_expected.to belong_to :appointment }
  end
end
