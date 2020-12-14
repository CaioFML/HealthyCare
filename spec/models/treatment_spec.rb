RSpec.describe Treatment do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:establishment) }
    it { is_expected.to validate_presence_of(:type) }
  end
end
