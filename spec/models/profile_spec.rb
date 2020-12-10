RSpec.describe Profile do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:cell_phone) }
    it { is_expected.to validate_presence_of(:birthday) }
    it { is_expected.to validate_numericality_of(:weight).is_greater_than(0) }
    it { is_expected.to validate_numericality_of(:height).is_greater_than(0) }
    it { is_expected.to belong_to :user }
  end

  describe "birthday" do
    subject(:profile) { build(:profile) }

    before do
      profile.birthday = date
      profile.valid?
    end

    context "when is in the past" do
      let(:date) { 1.day.ago }

      it "does not add an error" do
        expect(profile.errors.keys).not_to include :birthday
      end
    end

    context "when is today" do
      let(:date) { Time.zone.today }

      it "does not add an error" do
        expect(profile.errors.keys).not_to include :birthday
      end
    end

    context "when is in the future" do
      let(:date) { 1.day.from_now }

      it "adds an error" do
        expect(profile.errors.keys).to include :birthday
      end
    end
  end
end
