RSpec.describe Exam do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:establishment) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:profile_id) }
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many :appointment_detail }
  end
end
