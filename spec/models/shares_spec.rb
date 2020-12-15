RSpec.describe Share do
  describe "validations" do
    it { is_expected.to validate_presence_of(:profile_shared) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to belong_to :profile }
  end
end
