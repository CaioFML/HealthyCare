RSpec.describe User do
  describe "validations" do
    it { is_expected.to validate_presence_of(:email) }

    it { is_expected.to have_many(:profiles).dependent(:restrict_with_error) }
  end
end
