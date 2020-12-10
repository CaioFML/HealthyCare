RSpec.describe User do
  describe "validations" do
    it { is_expected.to validate_presence_of(:email) }

    it { is_expected.to have_one(:profile).dependent(:restrict_with_error) }
  end
end
