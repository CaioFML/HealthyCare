RSpec.describe User do
  describe "validations" do
    it { is_expected.to validate_presence_of(:email) }
  end
end
