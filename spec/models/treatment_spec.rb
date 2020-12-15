RSpec.describe Treatment do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:establishment) }
    it { is_expected.to validate_presence_of(:type) }
    it { is_expected.to belong_to :profile }
    it { is_expected.to have_many :appointment_detail }
  end
end
